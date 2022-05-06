; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_fsl.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_fsl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl8250_handle_irq\22\09\09\09\09\09"
module asm "__kstrtabns_fsl8250_handle_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_fsl8250_handle_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl8250_handle_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl8250_handle_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl8250_handle_irq to i32), ptr @__kstrtab_fsl8250_handle_irq, ptr @__kstrtabns_fsl8250_handle_irq }, section "___ksymtab_gpl+fsl8250_handle_irq", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_fsl8250_handle_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl8250_handle_irq(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #2
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i32 noundef 2) #2
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %9 = load i16, ptr %0, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !11
  br label %84

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 17
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16, !prof !12

16:                                               ; preds = %11
  %17 = and i8 %13, -17
  store i8 %17, ptr %12, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef 0) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %20 = load i16, ptr %0, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !11
  br label %84

22:                                               ; preds = %11
  %23 = load ptr, ptr %3, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef 5) #2
  %25 = trunc i32 %24 to i8
  %26 = and i32 %24, 17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @serial8250_rx_chars(ptr noundef %0, i8 noundef zeroext %25) #2
  br label %35

35:                                               ; preds = %33, %28, %22
  %36 = phi i8 [ %34, %33 ], [ %25, %28 ], [ %25, %22 ]
  %37 = and i32 %24, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 27
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 4
  %45 = tail call i32 %44(ptr noundef %0, i32 noundef 1) #2
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  store i8 %46, ptr %47, align 2
  %48 = and i32 %45, 5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.uart_ops, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %0) #2
  br label %58

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 26
  %57 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %56) #2
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, ptr %40, align 4
  %60 = tail call i32 @__msecs_to_jiffies(i32 noundef %59) #2
  %61 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 26
  %62 = load ptr, ptr @system_wq, align 4
  %63 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %61, i32 noundef %60) #2
  br label %64

64:                                               ; preds = %58, %39, %35
  %65 = tail call i32 @serial8250_modem_status(ptr noundef %0) #2
  %66 = and i8 %36, 32
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 9
  %70 = load i8, ptr %69, align 2
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @serial8250_tx_chars(ptr noundef %0) #2
  br label %74

74:                                               ; preds = %73, %68, %64
  store i8 %25, ptr %12, align 4
  %75 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 48
  %76 = load i8, ptr %75, align 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #2
  br label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 47
  %81 = load i32, ptr %80, align 4
  store i32 0, ptr %80, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @handle_sysrq(i32 noundef %81) #2
  br label %84

84:                                               ; preds = %83, %79, %78, %16, %8
  %85 = phi i32 [ 0, %8 ], [ 1, %16 ], [ 1, %78 ], [ 1, %79 ], [ 1, %83 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @serial8250_rx_chars(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 2149112445}
!9 = !{i64 2149108269}
!10 = !{i64 2149108344, i64 2149108371, i64 2149108418, i64 2149108440, i64 2149108468, i64 2149108488}
!11 = !{i64 2149135448}
!12 = !{!"branch_weights", i32 2000, i32 1}
