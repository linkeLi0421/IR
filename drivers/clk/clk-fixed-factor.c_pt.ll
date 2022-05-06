; ModuleID = '/llk/IR/drivers/clk/clk-fixed-factor.c_pt.bc'
source_filename = "../drivers/clk/clk-fixed-factor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fixed_factor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fixed_factor_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fixed_factor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@clk_fixed_factor_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_recalc_rate, ptr @clk_factor_round_rate, ptr null, ptr null, ptr null, ptr @clk_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_fixed_factor_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fixed_factor_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fixed_factor_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fixed_factor_ops to i32), ptr @__kstrtab_clk_fixed_factor_ops, ptr @__kstrtabns_clk_fixed_factor_ops }, section "___ksymtab_gpl+clk_fixed_factor_ops", align 4
@__kstrtab_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_fixed_factor to i32), ptr @__kstrtab_clk_hw_register_fixed_factor, ptr @__kstrtabns_clk_hw_register_fixed_factor }, section "___ksymtab_gpl+clk_hw_register_fixed_factor", align 4
@__kstrtab_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fixed_factor to i32), ptr @__kstrtab_clk_register_fixed_factor, ptr @__kstrtabns_clk_register_fixed_factor }, section "___ksymtab_gpl+clk_register_fixed_factor", align 4
@__kstrtab_clk_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_fixed_factor to i32), ptr @__kstrtab_clk_unregister_fixed_factor, ptr @__kstrtabns_clk_unregister_fixed_factor }, section "___ksymtab_gpl+clk_unregister_fixed_factor", align 4
@__kstrtab_clk_hw_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_fixed_factor to i32), ptr @__kstrtab_clk_hw_unregister_fixed_factor, ptr @__kstrtabns_clk_hw_unregister_fixed_factor }, section "___ksymtab_gpl+clk_hw_unregister_fixed_factor", align 4
@__kstrtab_devm_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_register_fixed_factor to i32), ptr @__kstrtab_devm_clk_hw_register_fixed_factor, ptr @__kstrtabns_devm_clk_hw_register_fixed_factor }, section "___ksymtab_gpl+devm_clk_hw_register_fixed_factor", align 4
@__of_table_fixed_factor_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fixed_factor_clk_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_fixed_factor__166_293_of_fixed_factor_clk_driver_init6 = internal global ptr @of_fixed_factor_clk_driver_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [42 x i8] c"devm_clk_hw_register_fixed_factor_release\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"clock-div\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-div property\0A\00", align 1
@__func__._of_fixed_factor_clk_setup = private unnamed_addr constant [27 x i8] c"_of_fixed_factor_clk_setup\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"clock-mult\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-mult property\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@set_rate_parent_matches = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll3-2x-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@of_fixed_factor_clk_driver = internal global %struct.platform_driver { ptr @of_fixed_factor_clk_probe, ptr @of_fixed_factor_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_fixed_factor_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"of_fixed_factor_clk\00", align 1
@of_fixed_factor_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_clk_fixed_factor__166_293_of_fixed_factor_clk_driver_init6, ptr @__ksymtab_clk_fixed_factor_ops, ptr @__ksymtab_clk_hw_register_fixed_factor, ptr @__ksymtab_clk_hw_unregister_fixed_factor, ptr @__ksymtab_clk_register_fixed_factor, ptr @__ksymtab_clk_unregister_fixed_factor, ptr @__ksymtab_devm_clk_hw_register_fixed_factor, ptr @__of_table_fixed_factor_clk], section "llvm.metadata"

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_factor_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %3
  %8 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i64 %7, 4294967296
  br i1 %10, label %11, label %14, !prof !8

11:                                               ; preds = %2
  %12 = trunc i64 %7 to i32
  %13 = udiv i32 %12, %9
  br label %18

14:                                               ; preds = %2
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %7) #9, !srcloc !9
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_factor_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #1 {
  %4 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #10
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %1, %11
  %13 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %17 = tail call i32 @clk_hw_round_rate(ptr noundef %16, i32 noundef %15) #10
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ %8, %7 ], [ %17, %9 ]
  %20 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %19, %21
  %23 = getelementptr inbounds %struct.clk_fixed_factor, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_factor_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca %struct.clk_parent_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store ptr %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #10
  %10 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 16, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %11 = getelementptr inbounds %struct.clk_parent_data, ptr %9, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false) #10
  store i32 -1, ptr %11, align 4
  %12 = icmp eq ptr %0, null
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 20) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.clk_fixed_factor, ptr %14, i32 0, i32 1
  store i32 %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_fixed_factor, ptr %14, i32 0, i32 2
  store i32 %5, ptr %18, align 8
  %19 = getelementptr inbounds %struct.clk_hw, ptr %14, i32 0, i32 2
  store ptr %8, ptr %19, align 8
  store ptr %1, ptr %8, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 %3, ptr %21, align 4
  %22 = icmp eq ptr %2, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store ptr %7, ptr %10, align 4
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 3
  store ptr %9, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 1, ptr %27, align 4
  br i1 %12, label %30, label %28

28:                                               ; preds = %26
  %29 = call i32 @clk_hw_register(ptr noundef nonnull %0, ptr noundef nonnull %14) #10
  br label %32

30:                                               ; preds = %26
  %31 = call i32 @of_clk_hw_register(ptr noundef null, ptr noundef nonnull %14) #10
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  call void @kfree(ptr noundef nonnull %14) #10
  %36 = inttoptr i32 %33 to ptr
  br label %37

37:                                               ; preds = %35, %32, %6
  %38 = phi ptr [ %36, %35 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %14, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #1 {
  %10 = alloca ptr, align 4
  %11 = alloca %struct.clk_init_data, align 4
  %12 = alloca %struct.clk_parent_data, align 4
  store ptr %3, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %11) #10
  %13 = getelementptr inbounds i8, ptr %11, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  %14 = getelementptr inbounds %struct.clk_parent_data, ptr %12, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  store i32 %4, ptr %14, align 4
  %15 = xor i1 %8, true
  %16 = icmp ne ptr %0, null
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %54

18:                                               ; preds = %9
  br i1 %8, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_register_fixed_factor_release, i32 noundef 20, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #10
  br label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 20) #11
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.clk_fixed_factor, ptr %25, i32 0, i32 1
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_fixed_factor, ptr %25, i32 0, i32 2
  store i32 %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.clk_hw, ptr %25, i32 0, i32 2
  store ptr %11, ptr %30, align 4
  store ptr %2, ptr %11, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  store i32 %5, ptr %32, align 4
  %33 = icmp eq ptr %3, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 2
  store ptr %10, ptr %35, align 4
  br label %38

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 3
  store ptr %12, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 5
  store i8 1, ptr %39, align 4
  br i1 %16, label %40, label %42

40:                                               ; preds = %38
  %41 = call i32 @clk_hw_register(ptr noundef nonnull %0, ptr noundef nonnull %25) #10
  br label %44

42:                                               ; preds = %38
  %43 = call i32 @of_clk_hw_register(ptr noundef %1, ptr noundef nonnull %25) #10
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  br i1 %8, label %48, label %49

48:                                               ; preds = %47
  call void @devres_free(ptr noundef nonnull %25) #10
  br label %50

49:                                               ; preds = %47
  call void @kfree(ptr noundef nonnull %25) #10
  br label %50

50:                                               ; preds = %49, %48
  %51 = inttoptr i32 %45 to ptr
  br label %54

52:                                               ; preds = %44
  br i1 %8, label %53, label %54

53:                                               ; preds = %52
  call void @devres_add(ptr noundef %0, ptr noundef nonnull %25) #10
  br label %54

54:                                               ; preds = %53, %52, %50, %24, %9
  %55 = phi ptr [ %51, %50 ], [ %25, %53 ], [ %25, %52 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %11) #10
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %7, %6 ]
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_fixed_factor(ptr noundef %0) #1 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @clk_unregister(ptr noundef %0) #10
  tail call void @kfree(ptr noundef nonnull %2) #10
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fixed_factor(ptr noundef %0) #1 {
  tail call void @clk_hw_unregister(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = tail call fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef -1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext true)
  ret ptr %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_fixed_factor_clk_setup(ptr noundef %0) #5 section ".init.text" {
  %2 = tail call fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca %struct.clk_parent_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !10
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._of_fixed_factor_clk_setup, ptr noundef %0) #12
  br label %53

12:                                               ; preds = %1
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._of_fixed_factor_clk_setup, ptr noundef %0) #12
  br label %53

17:                                               ; preds = %12
  %18 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #10
  %19 = call ptr @of_match_node(ptr noundef nonnull @set_rate_parent_matches, ptr noundef %0) #10
  %20 = load ptr, ptr %4, align 4
  %21 = load i32, ptr %6, align 4
  %22 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #10
  %23 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %23, i8 0, i32 16, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 20) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  br label %45

28:                                               ; preds = %17
  %29 = icmp eq ptr %19, null
  %30 = select i1 %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.clk_fixed_factor, ptr %25, i32 0, i32 1
  store i32 %21, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_fixed_factor, ptr %25, i32 0, i32 2
  store i32 %22, ptr %32, align 8
  %33 = getelementptr inbounds %struct.clk_hw, ptr %25, i32 0, i32 2
  store ptr %2, ptr %33, align 8
  store ptr %20, ptr %2, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 %30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %37, align 4
  %38 = call i32 @of_clk_hw_register(ptr noundef %0, ptr noundef nonnull %25) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %28
  call void @kfree(ptr noundef nonnull %25) #10
  %41 = inttoptr i32 %38 to ptr
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi ptr [ %41, %40 ], [ %25, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #10
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %27
  %46 = phi ptr [ inttoptr (i32 -12 to ptr), %27 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %47) #10
  br label %53

48:                                               ; preds = %42
  %49 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %43) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  call void @clk_hw_unregister(ptr noundef %43) #10
  call void @kfree(ptr noundef %43) #10
  %52 = inttoptr i32 %49 to ptr
  br label %53

53:                                               ; preds = %51, %48, %45, %15, %10
  %54 = phi ptr [ inttoptr (i32 -5 to ptr), %10 ], [ inttoptr (i32 -5 to ptr), %15 ], [ %46, %45 ], [ %52, %51 ], [ %43, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %54
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fixed_factor_clk_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_register_fixed_factor_release(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  tail call void @clk_hw_unregister(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_probe(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %9, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #10
  tail call void @clk_hw_unregister(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147895646, i64 2147895926, i64 2147896260, i64 2147896594}
!10 = !{!"auto-init"}
