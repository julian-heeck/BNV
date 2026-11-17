(* Patched for use with FeynCalc *)
(*
	Toy.mod
		a toy model with a fermion, a vector boson, and
		a scalar, with fictitious f-f-v and f-f-s couplings
		last modified 26 Oct 07 th
*)


M$ClassesDescription = {
  F[1] == {
	SelfConjugate -> True,
	Mass -> mf,
	PropagatorLabel -> "",
	PropagatorType -> Straight,
	PropagatorArrow -> None },
  V[1] == {
	SelfConjugate -> True,
	Mass -> mv,
	PropagatorLabel -> "v",
	PropagatorType -> Sine,
	PropagatorArrow -> None },
	
  S[1] == {
	SelfConjugate -> True,
	Mass -> ms,
	PropagatorLabel -> "",
	PropagatorType -> ScalarDash,
	PropagatorArrow -> None }
}

M$CouplingMatrices = {
  C[ F[1], F[1], S[1] ] == {{ffsL}, {ffsL}},
  C[ S[1], S[1], S[1] ] == {{SS1}},
  C[ S[1], S[1], S[1], S[1] ] == {{SS2}}
}

M$LastModelRules = {}

