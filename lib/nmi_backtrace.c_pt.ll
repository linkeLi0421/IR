; ModuleID = '/llk/IR/lib/nmi_backtrace.c_pt.bc'
source_filename = "../lib/nmi_backtrace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@backtrace_flag = internal global i32 0, align 4
@backtrace_mask = internal global [1 x i32] zeroinitializer, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [42 x i8] c"\016Sending NMI from CPU %d to CPUs %*pbl:\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__param_str_backtrace_idle = internal constant [29 x i8] c"nmi_backtrace.backtrace_idle\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@backtrace_idle = internal global i8 0, align 1
@__param_backtrace_idle = internal constant %struct.kernel_param { ptr @__param_str_backtrace_idle, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @backtrace_idle } }, section "__param", align 4
@__UNIQUE_ID_backtrace_idletype236 = internal constant [43 x i8] c"nmi_backtrace.parmtype=backtrace_idle:bool\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\014NMI backtrace for cpu %d skipped: idling at %pS\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\014NMI backtrace for cpu %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_backtrace_idletype236, ptr @__param_backtrace_idle], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nmi_trigger_cpumask_backtrace(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %4 = tail call ptr @llvm.thread.pointer() #4
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @backtrace_flag) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %41

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 4
  store i32 %11, ptr @backtrace_mask, align 4
  br i1 %1, label %12, label %13

12:                                               ; preds = %10
  tail call void @_clear_bit(i32 noundef %6, ptr noundef nonnull @backtrace_mask) #4
  br label %13

13:                                               ; preds = %12, %10
  %14 = lshr i32 %6, 5
  %15 = getelementptr i32, ptr @backtrace_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %6, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call zeroext i1 @nmi_cpu_backtrace(ptr noundef null)
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i32, ptr @backtrace_mask, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %6, i32 noundef 16, ptr noundef nonnull @backtrace_mask) #5
  tail call void %2(ptr noundef nonnull @backtrace_mask) #4
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %35, %29
  %31 = phi i32 [ %37, %35 ], [ 0, %29 ]
  %32 = load i32, ptr @backtrace_mask, align 4
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #4
  %37 = add nuw nsw i32 %31, 1
  %38 = icmp eq i32 %37, 10000
  br i1 %38, label %39, label %30

39:                                               ; preds = %35, %30
  tail call void @printk_trigger_flush() #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @backtrace_flag) #4, !srcloc !11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @backtrace_flag, ptr nonnull @backtrace_flag, i32 1, ptr nonnull elementtype(i32) @backtrace_flag) #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %41

41:                                               ; preds = %39, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nmi_cpu_backtrace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #4
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 5
  %6 = getelementptr i32, ptr @backtrace_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %4, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !14
  %14 = tail call i32 @__printk_cpu_trylock() #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %18, %16 ], [ %13, %12 ]
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #4, !srcloc !15
  tail call void @__printk_wait_on_cpu_lock() #4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !14
  %19 = tail call i32 @__printk_cpu_trylock() #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %16, label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ %13, %12 ], [ %18, %16 ]
  %23 = load volatile i8, ptr @backtrace_idle, align 1, !range !16
  %24 = icmp eq i8 %23, 0
  %25 = icmp ne ptr %0, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = tail call zeroext i1 @cpu_in_idle(i32 noundef %29) #4
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, ptr %28, align 4
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %4, ptr noundef %33) #5
  br label %39

35:                                               ; preds = %27, %21
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %4) #5
  br i1 %25, label %37, label %38

37:                                               ; preds = %35
  tail call void @show_regs(ptr noundef nonnull %0) #4
  br label %39

38:                                               ; preds = %35
  tail call void @dump_stack() #5
  br label %39

39:                                               ; preds = %38, %37, %31
  tail call void @__printk_cpu_unlock() #4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #4, !srcloc !15
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @backtrace_mask) #4
  br label %40

40:                                               ; preds = %39, %1
  %41 = xor i1 %11, true
  ret i1 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @printk_trigger_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_cpu_trylock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_wait_on_cpu_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_in_idle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_cpu_unlock() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2152957424}
!9 = !{i64 2152957709}
!10 = !{i64 2148052628}
!11 = !{i64 441702, i64 2147931673, i64 2147931699, i64 2147931746, i64 2147931768, i64 2147931796, i64 2147931816}
!12 = !{i64 2147950806, i64 2147950838, i64 2147950867, i64 2147950901, i64 2147950932, i64 2147950955}
!13 = !{i64 2152960611}
!14 = !{i64 336941, i64 337002}
!15 = !{i64 339958}
!16 = !{i8 0, i8 2}
