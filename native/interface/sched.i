%module sched
%{
#define SWIG_FILE_WITH_INIT
#include "tasks.h"
#include "schedulability.h"
#include "edf/baker.h"
#include "edf/gfb.h"
#include "edf/baruah.h"
#include "edf/bcl.h"
#include "edf/bcl_iterative.h"
#include "edf/rta.h"
#include "edf/ffdbf.h"
#include "edf/load.h"
#include "edf/gedf.h"
#include "sharedres.h"
%}

%ignore Task::get_utilization(mpq_class &util) const;
%ignore Task::get_density(mpq_class &density) const;
%ignore Task::bound_demand(const mpz_class &time, mpz_class &demand) const;
%ignore Task::bound_load const;
%ignore Task::approx_demand const;

%ignore TaskSet::operator[](int);
%ignore TaskSet::operator[](int) const;
%ignore TaskSet::get_utilization const;
%ignore TaskSet::get_density const;
%ignore TaskSet::get_max_density const;
%ignore TaskSet::approx_load const;

#include "tasks.h"
#include "schedulability.h"
#include "edf/baker.h"
#include "edf/gfb.h"
#include "edf/baruah.h"
#include "edf/bcl.h"
#include "edf/bcl_iterative.h"
#include "edf/rta.h"
#include "edf/ffdbf.h"
#include "edf/load.h"
#include "edf/gedf.h"
