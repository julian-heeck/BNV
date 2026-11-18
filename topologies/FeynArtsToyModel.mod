(* Patched for use with FeynCalc *)
(*
	FeynArtsToyModel.mod
		a toy model with a fermion and
		a scalar, with f-f-s, s-s-s, and s-s-s-s couplings
*)


M$ClassesDescription = {
  F[1] == {
	SelfConjugate -> True,
	Mass -> mf,
	PropagatorLabel -> "",
	PropagatorType -> Straight,
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

