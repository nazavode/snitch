; ModuleID = 'main.ll'
source_filename = "main.ll"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

declare i32 @snrt_global_core_idx()

declare i32 @snrt_global_core_num()

declare void @echo_from_mlir()

define dso_local i32 @main() #0 {
  call void @echo_from_mlir()
  %1 = call i32 @snrt_global_core_idx()
  %2 = call i32 @snrt_global_core_num()
  %3 = add i32 %1, %2
  ret i32 0
}

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}

!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"target-abi", !"ilp32d"}
!7 = !{i32 1, !"Code Model", i32 3}
!8 = !{i32 1, !"SmallDataLimit", i32 8}

attributes #0 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-
vector-width"="0" "no-builtin-printf" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-si
gned-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="snitch" "target-fe
atures"="+a,+d,+experimental-zfh,+f,+m,+xdma,+xfalthalf,+xfaltquarter,+xfauxalthalf,+xfauxaltquarter,+xfauxhalf,+xfauxq
uarter,+xfauxvecalthalf,+xfauxvecaltquarter,+xfauxvechalf,+xfauxvecquarter,+xfauxvecsingle,+xfexpauxvecalthalf,+xfexpau
xvecaltquarter,+xfexpauxvechalf,+xfexpauxvecquarter,+xfquarter,+xfrep,+xfvecalthalf,+xfvecaltquarter,+xfvechalf,+xfvecq
uarter,+xfvecsingle,+xssr,-64bit,-relax,-save-restore" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtin-printf" 
"no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-pro
tector-buffer-size"="8" "target-cpu"="snitch" "target-features"="+a,+d,+experimental-zfh,+f,+m,+xdma,+xfalthalf,+xfaltq
uarter,+xfauxalthalf,+xfauxaltquarter,+xfauxhalf,+xfauxquarter,+xfauxvecalthalf,+xfauxvecaltquarter,+xfauxvechalf,+xfau
xvecquarter,+xfauxvecsingle,+xfexpauxvecalthalf,+xfexpauxvecaltquarter,+xfexpauxvechalf,+xfexpauxvecquarter,+xfquarter,
+xfrep,+xfvecalthalf,+xfvecaltquarter,+xfvechalf,+xfvecquarter,+xfvecsingle,+xssr,-64bit,-relax,-save-restore" "unsafe-
fp-math"="true" "use-soft-float"="false" }