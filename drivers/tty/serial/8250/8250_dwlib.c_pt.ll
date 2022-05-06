; ModuleID = '/llk/IR/drivers/tty/serial/8250/8250_dwlib.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_dwlib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22dw8250_do_set_termios\22\09\09\09\09\09"
module asm "__kstrtabns_dw8250_do_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw8250_setup_port:\09\09\09\09\09"
module asm "\09.asciz \09\22dw8250_setup_port\22\09\09\09\09\09"
module asm "__kstrtabns_dw8250_setup_port:\09\09\09\09\09"
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
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.dw8250_port_data = type { i32, %struct.uart_8250_dma, i8 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }

@__kstrtab_dw8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw8250_do_set_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_dw8250_do_set_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw8250_do_set_termios to i32), ptr @__kstrtab_dw8250_do_set_termios, ptr @__kstrtabns_dw8250_do_set_termios }, section "___ksymtab_gpl+dw8250_do_set_termios", align 4
@__kstrtab_dw8250_setup_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw8250_setup_port = external dso_local constant [0 x i8], align 1
@__ksymtab_dw8250_setup_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw8250_setup_port to i32), ptr @__kstrtab_dw8250_setup_port, ptr @__kstrtabns_dw8250_setup_port }, section "___ksymtab_gpl+dw8250_setup_port", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_dw8250_do_set_termios, ptr @__ksymtab_dw8250_setup_port], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -9
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = or i32 %5, 8
  store i32 %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %3
  tail call void @serial8250_do_set_termios(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw8250_setup_port(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 6
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 248
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4
  br i1 %4, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !8
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #4
  %18 = load i8, ptr %2, align 2
  %19 = icmp eq i8 %18, 6
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 192
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4
  br i1 %19, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !8
  br label %26

25:                                               ; preds = %15
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ %22, %25 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #4
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #4, !range !10
  %35 = trunc i32 %34 to i8
  %36 = sub nuw nsw i8 32, %35
  %37 = getelementptr inbounds %struct.dw8250_port_data, ptr %33, i32 0, i32 2
  store i8 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 9
  store ptr @dw8250_get_divisor, ptr %38, align 4
  %39 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 10
  store ptr @dw8250_set_divisor, ptr %39, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i8, ptr %2, align 2
  %42 = icmp eq i8 %41, 6
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 244
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4
  br i1 %42, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !8
  br label %49

48:                                               ; preds = %40
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ %45, %48 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = and i32 %50, 16711680
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 38
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 134217728
  store i32 %59, ptr %57, align 4
  %60 = lshr i32 %50, 12
  %61 = and i32 %60, 4080
  %62 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  store i32 256, ptr %63, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = and i32 %50, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 2048
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = and i32 %50, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.uart_8250_port, ptr %0, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 65536
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %74, %71, %49, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dw8250_get_divisor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = shl i32 %1, 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 59
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = freeze i32 %8
  %10 = udiv i32 %9, %4
  %11 = mul i32 %10, %4
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.dw8250_port_data, ptr %6, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl i32 %12, %15
  %17 = lshr exact i32 %4, 1
  %18 = add i32 %16, %17
  %19 = udiv i32 %18, %4
  store i32 %19, ptr %2, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw8250_set_divisor(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4
  tail call void @arm_heavy_mb() #4
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #4, !srcloc !11
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %3) #4, !srcloc !11
  br label %17

17:                                               ; preds = %13, %8
  tail call void @serial8250_do_set_divisor(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_divisor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{i64 2153191939}
!9 = !{i64 2153192279}
!10 = !{i32 0, i32 33}
!11 = !{i64 3608122}
