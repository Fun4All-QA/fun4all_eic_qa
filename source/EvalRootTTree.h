#ifndef EVALROOTTTREE_H
#define EVALROOTTTREE_H

#include <phool/PHObject.h>

#include <cmath>

class EvalHit;
class PHG4Hit;
class TClonesArray;

class EvalRootTTree : public PHObject
{
public:
  EvalRootTTree();
  virtual ~EvalRootTTree();
  void Reset();
  EvalHit* AddHit(const PHG4Hit *g4hit);
  void set_event_number(const int i) {event = i;}

  void set_gvx(const double v) {gvx = v;}
  void set_gvy(const double v) {gvy = v;}
  void set_gvz(const double v) {gvz = v;}

  void set_gpx(const double p) {gpx = p;}
  void set_gpy(const double p) {gpy = p;}
  void set_gpz(const double p) {gpz = p;}
  void set_ge(const double p) {ge = p;}

  void set_geta(const double d) {geta = d;}
  void set_gphi(const double d) {gphi = d;}
  void set_gtheta(const double d) {gtheta = d;}

private:
  int event = 0;
  double gvx = NAN;
  double gvy = NAN;
  double gvz = NAN;
  double gpx = NAN;
  double gpy = NAN;
  double ge = NAN;
  double gpz = NAN;
  double geta = NAN;
  double gphi = NAN;
  double gtheta = NAN;
  

  TClonesArray* SnglHits = nullptr;

  ClassDef(EvalRootTTree,1)

};

#endif
