; ModuleID = '/llk/IR/drivers/gpu/drm/drm_scdc_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_scdc_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_read\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_write\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_get_scrambling_status:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_get_scrambling_status\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_get_scrambling_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_set_scrambling:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_set_scrambling\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_set_scrambling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_set_high_tmds_clock_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_set_high_tmds_clock_ratio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_set_high_tmds_clock_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_drm_scdc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_read to i32), ptr @__kstrtab_drm_scdc_read, ptr @__kstrtabns_drm_scdc_read }, section "___ksymtab+drm_scdc_read", align 4
@__kstrtab_drm_scdc_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_write = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_write to i32), ptr @__kstrtab_drm_scdc_write, ptr @__kstrtabns_drm_scdc_write }, section "___ksymtab+drm_scdc_write", align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read scrambling status: %d\0A\00", align 1
@__kstrtab_drm_scdc_get_scrambling_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_get_scrambling_status = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_get_scrambling_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_get_scrambling_status to i32), ptr @__kstrtab_drm_scdc_get_scrambling_status, ptr @__kstrtabns_drm_scdc_get_scrambling_status }, section "___ksymtab+drm_scdc_get_scrambling_status", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read TMDS config: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to enable scrambling: %d\0A\00", align 1
@__kstrtab_drm_scdc_set_scrambling = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_set_scrambling = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_set_scrambling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_set_scrambling to i32), ptr @__kstrtab_drm_scdc_set_scrambling, ptr @__kstrtabns_drm_scdc_set_scrambling }, section "___ksymtab+drm_scdc_set_scrambling", align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to set TMDS clock ratio: %d\0A\00", align 1
@__kstrtab_drm_scdc_set_high_tmds_clock_ratio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_set_high_tmds_clock_ratio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_set_high_tmds_clock_ratio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_set_high_tmds_clock_ratio to i32), ptr @__kstrtab_drm_scdc_set_high_tmds_clock_ratio, ptr @__kstrtabns_drm_scdc_set_high_tmds_clock_ratio }, section "___ksymtab+drm_scdc_set_high_tmds_clock_ratio", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_scdc_get_scrambling_status, ptr @__ksymtab_drm_scdc_read, ptr @__ksymtab_drm_scdc_set_high_tmds_clock_ratio, ptr @__ksymtab_drm_scdc_set_scrambling, ptr @__ksymtab_drm_scdc_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_scdc_read(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  store i16 84, ptr %6, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 84, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %14 = trunc i32 %3 to i16
  store i16 %14, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %15, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2) #7
  %17 = icmp slt i32 %16, 0
  %18 = icmp eq i32 %16, 2
  %19 = select i1 %18, i32 0, i32 -71
  %20 = select i1 %17, i32 %16, i32 %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_scdc_write(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  store i16 84, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %7, align 2
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  %9 = add i32 %3, 1
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %8, align 4
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %11, ptr %14, align 4
  store i8 %1, ptr %11, align 64
  %15 = getelementptr i8, ptr %11, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %2, i32 %3, i1 false)
  %16 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %11) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = icmp eq i32 %16, 1
  %20 = select i1 %19, i32 0, i32 -71
  br label %21

21:                                               ; preds = %18, %13, %4
  %22 = phi i32 [ -12, %4 ], [ %16, %13 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 33, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false) #7, !annotation !8
  store i16 84, ptr %3, align 4
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %6, align 2
  store i16 1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 84, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %4, ptr %11, align 4
  %12 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #7
  %13 = icmp slt i32 %12, 0
  %14 = icmp eq i32 %12, 2
  %15 = select i1 %14, i32 0, i32 -71
  %16 = select i1 %13, i32 %12, i32 %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %16) #7
  br label %23

19:                                               ; preds = %1
  %20 = load i8, ptr %4, align 1
  %21 = and i8 %20, 1
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i1 [ false, %18 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i1 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 32, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #7, !annotation !8
  store i16 84, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %8, align 2
  store i16 1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 84, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %13, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2) #7
  %15 = icmp slt i32 %14, 0
  %16 = icmp eq i32 %14, 2
  %17 = select i1 %16, i32 0, i32 -71
  %18 = select i1 %15, i32 %14, i32 %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %18) #7
  br label %41

21:                                               ; preds = %2
  %22 = load i8, ptr %6, align 1
  %23 = and i8 %22, -2
  %24 = zext i1 %1 to i8
  %25 = or i8 %23, %24
  store i8 %25, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  store i16 84, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 2) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %29, ptr %32, align 4
  store i8 32, ptr %29, align 8
  %33 = getelementptr i8, ptr %29, i32 1
  store i8 %25, ptr %33, align 1
  %34 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %29) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  br label %41

39:                                               ; preds = %36, %31, %21
  %40 = phi i32 [ -71, %36 ], [ %34, %31 ], [ -12, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %40) #7
  br label %41

41:                                               ; preds = %39, %38, %20
  %42 = phi i1 [ false, %20 ], [ false, %39 ], [ true, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 32, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #7, !annotation !8
  store i16 84, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %8, align 2
  store i16 1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 84, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %13, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2) #7
  %15 = icmp slt i32 %14, 0
  %16 = icmp eq i32 %14, 2
  %17 = select i1 %16, i32 0, i32 -71
  %18 = select i1 %15, i32 %14, i32 %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %18) #7
  br label %41

21:                                               ; preds = %2
  %22 = load i8, ptr %6, align 1
  %23 = and i8 %22, -3
  %24 = select i1 %1, i8 2, i8 0
  %25 = or i8 %23, %24
  store i8 %25, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  store i16 84, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 2) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %29, ptr %32, align 4
  store i8 32, ptr %29, align 8
  %33 = getelementptr i8, ptr %29, i32 1
  store i8 %25, ptr %33, align 1
  %34 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @kfree(ptr noundef nonnull %29) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %36, %31, %21
  %39 = phi i32 [ -71, %36 ], [ %34, %31 ], [ -12, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %39) #7
  br label %41

40:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %41

41:                                               ; preds = %40, %38, %20
  %42 = phi i1 [ false, %20 ], [ false, %38 ], [ true, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  ret i1 %42
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
