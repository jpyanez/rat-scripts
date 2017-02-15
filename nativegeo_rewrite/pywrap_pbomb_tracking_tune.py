import os, sys

### Lines that go into my macro
### Could actually read them from the general macro and not write them myself, but ok

initlines = \
'/rat/physics_list/OmitMuonicProcesses true\n'+\
'/rat/physics_list/OmitHadronicProcesses true\n'

geometry = '/rat/db/set DETECTOR geo_file "INGEO"\n'

runlines = \
'/run/initialize\n'+\
'/rat/proc simpledaq\n'+\
'/rat/proc count\n'+\
'/rat/procset update 10\n'+\
'/rat/proc calibratePMT\n'+\
'/rat/proclast outroot\n'+\
'/rat/tracking/store full\n'

generator =\
'/generator/add combo pbomb:point:uniform\n'+\
'/generator/vtx/set 1000 WAVELENGTH 0\n'+\
'/rat/procset file "OUTNAME.root"\n'+\
'/generator/pos/set 0 0 0 mm\n'+\
'/generator/rate/set 1\n'

finalize = \
'/rat/run/start NEVENTS\n'+\
'exit'

# Pass the arguments (needs selection_globals)
from optparse import OptionParser
parser = OptionParser()
parser.add_option("-g", "--geometry", default="geo/lsnoplusnative.geo",
                  dest = 'geo')
parser.add_option("-o", "--outdir", default = 'nativegeo_1',
                  dest="outdir")
parser.add_option("-f", "--filename", default="pbomb",
                  dest= "outname")

parser.add_option("-w", "--wavelength", default = 380.,
                  dest='wl')
parser.add_option("-e", "--nevents", default = 100,
                  type=int, dest='events')

if __name__ == '__main__':
    
    (options,args) = parser.parse_args()
    if len(args) != 0:
        crap = "Got undefined options:"
        for a in args:
            crap += a
            crap += " "
            parser.error(crap)

    print options.geo

    rundir = os.getcwd()
            
    outdir = '/home/jp/projects/snoplus/rundir/nativegeo_tune/' + options.outdir

    print 'Changing to the output directory'
    if not os.path.isdir(outdir):
        print 'Directory does not exist - creating it'
        os.mkdir(outdir)

    os.chdir(outdir)

    outname = 'pbomb'+str(int(options.wl))
    outscript = os.path.join(outdir, outname + '.mac')
                             
    # Change the lines
    geometry = geometry.replace('INGEO', options.geo)
    generator = generator.replace('OUTNAME', os.path.join(outdir, outname))
    generator = generator.replace('WAVELENGTH', str(options.wl))
    finalize = finalize.replace('NEVENTS', str(options.events))
    
    # Write the script
    script = open(outscript, 'w')
    script.writelines(initlines)
    script.writelines(geometry)
    script.writelines(runlines)
    script.writelines(generator)
    script.writelines(finalize)
    script.close()

    os.system('rat_Linux ' + outscript)

    print 'Returning to the original directory from ', outdir
    os.chdir(rundir)
