help([[
Load environment for running the HDAS application with Intel compilers and MPI.
NOTE: Use at your own risk, JEDI is not yet 100% supported on WCOSS
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

prepend_path("MODULEPATH", "/apps/dev/lmodules/core")

load("PrgEnv-intel/8.2.0")
load("cmake/3.20.2")
load("craype")
load("cray-pals")
load("git/2.29.0")
load("intel/19.1.3.304")
load("cray-mpich/8.1.12")
load("hdf5/1.12.2")
load("netcdf/4.7.4")
load("udunits/2.2.28")
load("eigen/3.4.0")
load("boost/1.79.0")
load("gsl-lite/v0.40.0")
load("sp/2.4.0")
load("python/3.8.6")
load("ecbuild/3.7.0")
load("qhull/2020.2")
load("eckit/1.24.4")
load("fckit/0.11.0")
load("atlas/0.35.0")
load("nccmp")
load("nco/5.0.6")
load("gsl/2.7")
load("prod_util/2.0.14")
load("bufr/12.0.1")

-- hack for pybind11
setenv("pybind11_ROOT", "/apps/spack/python/3.8.6/intel/19.1.3.304/pjn2nzkjvqgmjw4hmyz43v5x4jbxjzpk/lib/python3.8/site-packages/pybind11/share/cmake/pybind11")

-- hack for git-lfs
prepend_path("PATH", "/apps/spack/git-lfs/2.11.0/gcc/11.2.0/m6b6nl5kfqngfteqbggydc7kflxere3s/bin")

local mpiexec = '/pe/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpirun'
local mpinproc = '-n'
setenv('MPIEXEC_EXEC', mpiexec)
setenv('MPIEXEC_NPROC', mpinproc)

setenv("CRTM_FIX","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/fix/crtm/2.4.0")
setenv("HDASAPP_TESTDATA","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/data")

whatis("Name: ".. pkgName)
whatis("Version: ".. pkgVersion)
whatis("Category: HDASApp")
whatis("Description: Load all libraries needed for HDASApp")
