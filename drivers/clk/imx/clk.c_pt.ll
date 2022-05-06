; ModuleID = '/llk/IR/drivers/clk/imx/clk.c_pt.bc'
source_filename = "../drivers/clk/imx/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ccm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ccm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ccm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_unregister_hw_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_unregister_hw_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_imx_unregister_hw_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_check_clk_hws:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_check_clk_hws\22\09\09\09\09\09"
module asm "__kstrtabns_imx_check_clk_hws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_obtain_fixed_clk_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_obtain_fixed_clk_hw\22\09\09\09\09\09"
module asm "__kstrtabns_imx_obtain_fixed_clk_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw = type { ptr, ptr, ptr }

@imx_ccm_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@__kstrtab_imx_ccm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ccm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ccm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ccm_lock to i32), ptr @__kstrtab_imx_ccm_lock, ptr @__kstrtabns_imx_ccm_lock }, section "___ksymtab_gpl+imx_ccm_lock", align 4
@__kstrtab_imx_unregister_hw_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_unregister_hw_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_unregister_hw_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_unregister_hw_clocks to i32), ptr @__kstrtab_imx_unregister_hw_clocks, ptr @__kstrtabns_imx_unregister_hw_clocks }, section "___ksymtab_gpl+imx_unregister_hw_clocks", align 4
@.str = private unnamed_addr constant [41 x i8] c"\013i.MX clk %u: register failed with %ld\0A\00", align 1
@__kstrtab_imx_check_clk_hws = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_check_clk_hws = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_check_clk_hws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_check_clk_hws to i32), ptr @__kstrtab_imx_check_clk_hws, ptr @__kstrtabns_imx_check_clk_hws }, section "___ksymtab_gpl+imx_check_clk_hws", align 4
@__kstrtab_imx_obtain_fixed_clk_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_obtain_fixed_clk_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_obtain_fixed_clk_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_obtain_fixed_clk_hw to i32), ptr @__kstrtab_imx_obtain_fixed_clk_hw, ptr @__kstrtabns_imx_obtain_fixed_clk_hw }, section "___ksymtab_gpl+imx_obtain_fixed_clk_hw", align 4
@__setup_str_imx_keep_uart_earlycon = internal constant [9 x i8] c"earlycon\00", section ".init.rodata", align 1
@__setup_imx_keep_uart_earlycon = internal global %struct.obs_kernel_param { ptr @__setup_str_imx_keep_uart_earlycon, ptr @imx_keep_uart_clocks_param, i32 0 }, section ".init.setup", align 4
@__setup_str_imx_keep_uart_earlyprintk = internal constant [12 x i8] c"earlyprintk\00", section ".init.rodata", align 1
@__setup_imx_keep_uart_earlyprintk = internal global %struct.obs_kernel_param { ptr @__setup_str_imx_keep_uart_earlyprintk, ptr @imx_keep_uart_clocks_param, i32 0 }, section ".init.setup", align 4
@imx_enabled_uart_clocks = internal unnamed_addr global i32 0, align 4
@imx_keep_uart_clocks = internal unnamed_addr global i1 false, align 1
@imx_uart_clocks = internal unnamed_addr global ptr null, align 4
@of_stdout = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_mxc_clk__104_209_imx_clk_disable_uart7s = internal global ptr @imx_clk_disable_uart, section ".initcall7s.init", align 4
@__UNIQUE_ID_file105 = internal constant [37 x i8] c"mxc_clk.file=drivers/clk/imx/mxc-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license106 = internal constant [23 x i8] c"mxc_clk.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/clocks/%s\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file105, ptr @__UNIQUE_ID_license106, ptr @__initcall__kmod_mxc_clk__104_209_imx_clk_disable_uart7s, ptr @__ksymtab_imx_ccm_lock, ptr @__ksymtab_imx_check_clk_hws, ptr @__ksymtab_imx_obtain_fixed_clk_hw, ptr @__ksymtab_imx_unregister_hw_clocks, ptr @__setup_imx_keep_uart_earlycon, ptr @__setup_imx_keep_uart_earlyprintk], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_unregister_clocks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_unregister(ptr noundef %7) #10
  %8 = add nuw i32 %5, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_unregister_hw_clocks(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_hw_unregister(ptr noundef %7) #10
  %8 = add nuw i32 %5, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_mmdc_mask_handshake(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 131072, i32 65536
  %7 = or i32 %4, %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_check_clocks(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %2
  %5 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %10) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = add nuw i32 %5, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_check_clk_hws(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %2
  %5 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = ptrtoint ptr %7 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %10) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = add nuw i32 %5, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 68, i1 false) #10, !annotation !10
  %5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %5, ptr noundef null) #10
  store ptr %8, ptr %3, align 4
  tail call void @kfree(ptr noundef nonnull %5) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  br label %15

11:                                               ; preds = %7
  %12 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #10
  %13 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %10
  %16 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %15, %11
  %24 = phi ptr [ %12, %11 ], [ %22, %20 ], [ %16, %15 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 68, i1 false) #10, !annotation !10
  %5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %5, ptr noundef null) #10
  store ptr %8, ptr %3, align 4
  tail call void @kfree(ptr noundef nonnull %5) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  br label %15

11:                                               ; preds = %7
  %12 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #10
  %13 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %10
  %16 = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %15, %11
  %24 = phi ptr [ %12, %11 ], [ %22, %20 ], [ %16, %15 ]
  %25 = call ptr @__clk_get_hw(ptr noundef %24) #10
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__clk_get_hw(ptr noundef %3) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ inttoptr (i32 -2 to ptr), %2 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @imx_cscmr1_fixup(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load i32, ptr %0, align 4
  %3 = xor i32 %2, 6291456
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imx_keep_uart_clocks_param(ptr nocapture noundef readnone %0) #5 section ".init.text" {
  store i1 true, ptr @imx_keep_uart_clocks, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_register_uart_clocks(i32 noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr @imx_enabled_uart_clocks, align 4
  %2 = load i1, ptr @imx_keep_uart_clocks, align 1
  br i1 %2, label %3, label %44

3:                                                ; preds = %1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %9, label %6, !prof !11

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  store ptr %10, ptr @imx_uart_clocks, align 4
  %11 = load ptr, ptr @of_stdout, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ne i32 %0, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = tail call ptr @of_clk_get(ptr noundef nonnull %11, i32 noundef 0) #10
  %17 = load ptr, ptr @imx_uart_clocks, align 4
  %18 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %19 = getelementptr ptr, ptr %17, i32 %18
  store ptr %16, ptr %19, align 4
  %20 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %44, label %21

21:                                               ; preds = %37, %15
  %22 = phi i32 [ %41, %37 ], [ %18, %15 ]
  %23 = phi ptr [ %39, %37 ], [ %16, %15 ]
  %24 = phi i32 [ %35, %37 ], [ 0, %15 ]
  %25 = icmp eq ptr %23, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = add i32 %22, 1
  store i32 %27, ptr @imx_enabled_uart_clocks, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef nonnull %23) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call i32 @clk_enable(ptr noundef nonnull %23) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef nonnull %23) #10
  br label %34

34:                                               ; preds = %33, %30, %26, %21
  %35 = add nuw i32 %24, 1
  %36 = icmp eq i32 %35, %0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @of_stdout, align 4
  %39 = tail call ptr @of_clk_get(ptr noundef %38, i32 noundef %35) #10
  %40 = load ptr, ptr @imx_uart_clocks, align 4
  %41 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %42 = getelementptr ptr, ptr %40, i32 %41
  store ptr %39, ptr %42, align 4
  %43 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %21

44:                                               ; preds = %37, %34, %15, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_clk_disable_uart() #6 section ".init.text" {
  %1 = load i1, ptr @imx_keep_uart_clocks, align 1
  %2 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %3 = icmp ne i32 %2, 0
  %4 = select i1 %1, i1 %3, i1 false
  br i1 %4, label %5, label %20

5:                                                ; preds = %0
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %15, %7 ], [ 0, %5 ]
  %9 = load ptr, ptr @imx_uart_clocks, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %12 = load ptr, ptr @imx_uart_clocks, align 4
  %13 = getelementptr ptr, ptr %12, i32 %8
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %14) #10
  %15 = add nuw nsw i32 %8, 1
  %16 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %7, label %18

18:                                               ; preds = %7, %5
  %19 = load ptr, ptr @imx_uart_clocks, align 4
  tail call void @kfree(ptr noundef %19) #10
  br label %20

20:                                               ; preds = %18, %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 2876974}
!9 = !{i64 2876556}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
