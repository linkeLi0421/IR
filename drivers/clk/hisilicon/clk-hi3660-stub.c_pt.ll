; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3660-stub.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3660-stub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hi3660_stub_clk_chan = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.hi3660_stub_clk = type { i32, %struct.clk_hw, i32, [8 x i32], i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_hi3660_stub__162_178_hi3660_stub_clk_init4 = internal global ptr @hi3660_stub_clk_init, section ".initcall4.init", align 4
@hi3660_stub_clk_driver = internal global %struct.platform_driver { ptr @hi3660_stub_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3660_stub_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"hi3660-stub-clk\00", align 1
@hi3660_stub_clk_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-stub-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stub_clk_chan = internal global %struct.hi3660_stub_clk_chan zeroinitializer, align 4
@freq_reg = internal unnamed_addr global ptr null, align 4
@hi3660_stub_clks = internal global [4 x %struct.hi3660_stub_clk] [%struct.hi3660_stub_clk { i32 0, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, i32 66314, [8 x i32] zeroinitializer, i32 0 }, %struct.hi3660_stub_clk { i32 1, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.3 }, i32 131850, [8 x i32] zeroinitializer, i32 0 }, %struct.hi3660_stub_clk { i32 2, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, i32 197386, [8 x i32] zeroinitializer, i32 0 }, %struct.hi3660_stub_clk { i32 3, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.7 }, i32 262921, [8 x i32] zeroinitializer, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"\22cpu-cluster.0\22\00", align 1
@hi3660_stub_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi3660_stub_clk_recalc_rate, ptr @hi3660_stub_clk_round_rate, ptr null, ptr null, ptr null, ptr @hi3660_stub_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.1, ptr @hi3660_stub_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 64 }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\22cpu-cluster.1\22\00", align 1
@.compoundliteral.3 = internal global %struct.clk_init_data { ptr @.str.2, ptr @hi3660_stub_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 64 }, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"\22clk-g3d\22\00", align 1
@.compoundliteral.5 = internal global %struct.clk_init_data { ptr @.str.4, ptr @hi3660_stub_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 64 }, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"\22clk-ddrc\22\00", align 1
@.compoundliteral.7 = internal global %struct.clk_init_data { ptr @.str.6, ptr @hi3660_stub_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 64 }, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.hi3660_stub_clk_hw_get = private unnamed_addr constant [23 x i8] c"hi3660_stub_clk_hw_get\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_hi3660_stub__162_178_hi3660_stub_clk_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3660_stub_clk_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3660_stub_clk_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_stub_clk_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store ptr %2, ptr @stub_clk_chan, align 4
  store ptr null, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 0, i32 6), align 4
  store i8 0, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 0, i32 3), align 4
  %3 = tail call ptr @mbox_request_channel(ptr noundef nonnull @stub_clk_chan, i32 noundef 0) #5
  store ptr %3, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 1), align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %33

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 1, %11
  %15 = add i32 %14, %13
  %16 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %11, i32 noundef %15) #5
  store ptr %16, ptr @freq_reg, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %16, i32 112
  store ptr %19, ptr @freq_reg, align 4
  %20 = tail call i32 @devm_clk_hw_register(ptr noundef %2, ptr noundef getelementptr inbounds ([4 x %struct.hi3660_stub_clk], ptr @hi3660_stub_clks, i32 0, i32 0, i32 1)) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = tail call i32 @devm_clk_hw_register(ptr noundef %2, ptr noundef getelementptr inbounds ([4 x %struct.hi3660_stub_clk], ptr @hi3660_stub_clks, i32 0, i32 1, i32 1)) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = tail call i32 @devm_clk_hw_register(ptr noundef %2, ptr noundef getelementptr inbounds ([4 x %struct.hi3660_stub_clk], ptr @hi3660_stub_clks, i32 0, i32 2, i32 1)) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = tail call i32 @devm_clk_hw_register(ptr noundef %2, ptr noundef getelementptr inbounds ([4 x %struct.hi3660_stub_clk], ptr @hi3660_stub_clks, i32 0, i32 3, i32 1)) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %2, ptr noundef nonnull @hi3660_stub_clk_hw_get, ptr noundef nonnull @hi3660_stub_clks) #5
  br label %33

33:                                               ; preds = %31, %28, %25, %22, %18, %10, %7, %5
  %34 = phi i32 [ %6, %5 ], [ %32, %31 ], [ -22, %7 ], [ -12, %10 ], [ %20, %18 ], [ %23, %22 ], [ %26, %25 ], [ %29, %28 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal nonnull ptr @hi3660_stub_clk_hw_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.hi3660_stub_clk_hw_get, i32 noundef %4) #6
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr [4 x %struct.hi3660_stub_clk], ptr @hi3660_stub_clks, i32 0, i32 %4, i32 1
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_stub_clk_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr @freq_reg, align 4
  %5 = load i32, ptr %3, align 4
  %6 = shl i32 %5, 2
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = mul i32 %8, 1000000
  %10 = getelementptr i8, ptr %0, i32 48
  store i32 %9, ptr %10, align 4
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hi3660_stub_clk_round_rate(ptr nocapture noundef readnone %0, i32 noundef returned %1, ptr nocapture noundef readnone %2) #3 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_stub_clk_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 16
  store i32 %5, ptr %6, align 4
  %7 = udiv i32 %1, 1000000
  %8 = getelementptr i8, ptr %0, i32 20
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 1), align 4
  %10 = tail call i32 @mbox_send_message(ptr noundef %9, ptr noundef %6) #5
  %11 = load ptr, ptr getelementptr inbounds (%struct.hi3660_stub_clk_chan, ptr @stub_clk_chan, i32 0, i32 1), align 4
  tail call void @mbox_client_txdone(ptr noundef %11, i32 noundef 0) #5
  %12 = getelementptr i8, ptr %0, i32 48
  store i32 %1, ptr %12, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3783875}
!9 = !{i64 2151356513}
