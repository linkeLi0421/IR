; ModuleID = '/llk/IR/drivers/memory/of_memory.c_pt.bc'
source_filename = "../drivers/memory/of_memory.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_ddr_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr3_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr3_get_min_tck\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr3_get_min_tck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr3_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr3_get_ddr_timings\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr3_get_ddr_timings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_lpddr2_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22of_lpddr2_get_info\22\09\09\09\09\09"
module asm "__kstrtabns_of_lpddr2_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lpddr2_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr2_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"tRPab-min-tck\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tRCD-min-tck\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"tWR-min-tck\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tRASmin-min-tck\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tRRD-min-tck\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"tWTR-min-tck\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"tXP-min-tck\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tRTP-min-tck\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"tCKE-min-tck\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tCKESR-min-tck\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tFAW-min-tck\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Using default min-tck values\0A\00", align 1
@lpddr2_jedec_min_tck = external dso_local constant %struct.lpddr2_min_tck, align 4
@__kstrtab_of_get_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_min_tck to i32), ptr @__kstrtab_of_get_min_tck, ptr @__kstrtabns_of_get_min_tck }, section "___ksymtab+of_get_min_tck", align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"jedec,lpddr2-timings\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Unsupported memory type\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Using default memory timings\0A\00", align 1
@lpddr2_jedec_timings = external dso_local constant [4 x %struct.lpddr2_timings], align 4
@__kstrtab_of_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_ddr_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_ddr_timings to i32), ptr @__kstrtab_of_get_ddr_timings, ptr @__kstrtabns_of_get_ddr_timings }, section "___ksymtab+of_get_ddr_timings", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"tRFC-min-tck\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"tRPpb-min-tck\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"tRC-min-tck\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tRAS-min-tck\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"tW2W-C2C-min-tck\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"tR2R-C2C-min-tck\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"tWL-min-tck\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"tDQSCK-min-tck\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tRL-min-tck\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"tXSR-min-tck\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"tMRD-min-tck\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Errors while parsing min-tck values\0A\00", align 1
@__kstrtab_of_lpddr3_get_min_tck = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr3_get_min_tck = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr3_get_min_tck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr3_get_min_tck to i32), ptr @__kstrtab_of_lpddr3_get_min_tck, ptr @__kstrtabns_of_lpddr3_get_min_tck }, section "___ksymtab+of_lpddr3_get_min_tck", align 4
@.str.27 = private unnamed_addr constant [21 x i8] c"jedec,lpddr3-timings\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Failed to get timings\0A\00", align 1
@__kstrtab_of_lpddr3_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr3_get_ddr_timings = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr3_get_ddr_timings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr3_get_ddr_timings to i32), ptr @__kstrtab_of_lpddr3_get_ddr_timings, ptr @__kstrtabns_of_lpddr3_get_ddr_timings }, section "___ksymtab+of_lpddr3_get_ddr_timings", align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"revision-id1\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"revision-id2\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"io-width\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"jedec,lpddr2-s4\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"jedec,lpddr2-s2\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"jedec,lpddr2-nvm\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"samsung,\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"qimonda,\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"elpida,\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"etron,\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"nanya,\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"hynix,\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"mosel,\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"winbond,\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"esmt,\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"spansion,\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"sst,\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"zmos,\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"intel,\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"numonyx,\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"micron,\00", align 1
@__kstrtab_of_lpddr2_get_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_lpddr2_get_info = external dso_local constant [0 x i8], align 1
@__ksymtab_of_lpddr2_get_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_lpddr2_get_info to i32), ptr @__kstrtab_of_lpddr2_get_info, ptr @__kstrtabns_of_lpddr2_get_info }, section "___ksymtab+of_lpddr2_get_info", align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"max-freq\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"min-freq\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"tRPab\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"tRCD\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"tWR\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"tRAS-min\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"tRRD\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"tWTR\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"tXP\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"tRTP\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"tCKESR\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"tDQSCK-max\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"tFAW\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"tZQCS\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"tZQCL\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"tZQinit\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"tRAS-max-ns\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"tDQSCK-max-derated\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"tRFC\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"tRPpb\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"tRC\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"tRAS\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"tW2W-C2C\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"tR2R-C2C\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"tXSR\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"tCKE\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"tMRD\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_of_get_ddr_timings, ptr @__ksymtab_of_get_min_tck, ptr @__ksymtab_of_lpddr2_get_info, ptr @__ksymtab_of_lpddr3_get_ddr_timings, ptr @__ksymtab_of_lpddr3_get_min_tck], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_min_tck(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 44, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #8
  %8 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 1
  %9 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef 1, i32 noundef 0) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0) #8
  %11 = or i32 %10, %7
  %12 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 2
  %13 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef 1, i32 noundef 0) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #8
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 3
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef 1, i32 noundef 0) #8
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0) #8
  %19 = or i32 %15, %18
  %20 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 4
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %20, i32 noundef 1, i32 noundef 0) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0) #8
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 5
  %25 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %24, i32 noundef 1, i32 noundef 0) #8
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 0) #8
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 6
  %29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef 1, i32 noundef 0) #8
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 0) #8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 7
  %33 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %32, i32 noundef 1, i32 noundef 0) #8
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 0) #8
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 8
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %36, i32 noundef 1, i32 noundef 0) #8
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 0) #8
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 9
  %41 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %40, i32 noundef 1, i32 noundef 0) #8
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0) #8
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds %struct.lpddr2_min_tck, ptr %3, i32 0, i32 10
  %45 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %44, i32 noundef 1, i32 noundef 0) #8
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 0) #8
  %47 = or i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %5
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %50

50:                                               ; preds = %49, %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  br label %51

51:                                               ; preds = %50, %5
  %52 = phi ptr [ @lpddr2_jedec_min_tck, %50 ], [ %3, %5 ]
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_ddr_timings(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = add i32 %2, -3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi ptr [ null, %7 ], [ @.str.12, %4 ]
  %10 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %118, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %19, %12 ], [ %10, %8 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %8 ]
  %15 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %13, ptr noundef %9) #8
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = add i32 %14, %17
  %19 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %13) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12

21:                                               ; preds = %12
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %118, label %23

23:                                               ; preds = %21
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 72) #8
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %118, label %26, !prof !8

26:                                               ; preds = %23
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %27, i32 noundef 3520) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %118, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %119, label %33

33:                                               ; preds = %114, %30
  %34 = phi ptr [ %116, %114 ], [ %31, %30 ]
  %35 = phi i32 [ %115, %114 ], [ 0, %30 ]
  %36 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %34, ptr noundef %9) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %114, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35
  %40 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.52, ptr noundef %39, i32 noundef 1, i32 noundef 0) #8
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 0) #8
  %42 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 1
  %43 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.53, ptr noundef %42, i32 noundef 1, i32 noundef 0) #8
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 0) #8
  %45 = or i32 %44, %41
  %46 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 2
  %47 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.54, ptr noundef %46, i32 noundef 1, i32 noundef 0) #8
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 0) #8
  %49 = or i32 %45, %48
  %50 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 3
  %51 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.55, ptr noundef %50, i32 noundef 1, i32 noundef 0) #8
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 0) #8
  %53 = or i32 %49, %52
  %54 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 4
  %55 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.56, ptr noundef %54, i32 noundef 1, i32 noundef 0) #8
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 0) #8
  %57 = or i32 %53, %56
  %58 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 5
  %59 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.57, ptr noundef %58, i32 noundef 1, i32 noundef 0) #8
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 0) #8
  %61 = or i32 %57, %60
  %62 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 6
  %63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.58, ptr noundef %62, i32 noundef 1, i32 noundef 0) #8
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 0) #8
  %65 = or i32 %61, %64
  %66 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 7
  %67 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.59, ptr noundef %66, i32 noundef 1, i32 noundef 0) #8
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 0) #8
  %69 = or i32 %65, %68
  %70 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 8
  %71 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.60, ptr noundef %70, i32 noundef 1, i32 noundef 0) #8
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 0) #8
  %73 = or i32 %69, %72
  %74 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 9
  %75 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.61, ptr noundef %74, i32 noundef 1, i32 noundef 0) #8
  %76 = tail call i32 @llvm.smin.i32(i32 %75, i32 0) #8
  %77 = or i32 %73, %76
  %78 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 10
  %79 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.62, ptr noundef %78, i32 noundef 1, i32 noundef 0) #8
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 0) #8
  %81 = or i32 %77, %80
  %82 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 11
  %83 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.63, ptr noundef %82, i32 noundef 1, i32 noundef 0) #8
  %84 = tail call i32 @llvm.smin.i32(i32 %83, i32 0) #8
  %85 = or i32 %81, %84
  %86 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 13
  %87 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.64, ptr noundef %86, i32 noundef 1, i32 noundef 0) #8
  %88 = tail call i32 @llvm.smin.i32(i32 %87, i32 0) #8
  %89 = or i32 %85, %88
  %90 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 14
  %91 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.65, ptr noundef %90, i32 noundef 1, i32 noundef 0) #8
  %92 = tail call i32 @llvm.smin.i32(i32 %91, i32 0) #8
  %93 = or i32 %89, %92
  %94 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 15
  %95 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.66, ptr noundef %94, i32 noundef 1, i32 noundef 0) #8
  %96 = tail call i32 @llvm.smin.i32(i32 %95, i32 0) #8
  %97 = or i32 %93, %96
  %98 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 16
  %99 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.67, ptr noundef %98, i32 noundef 1, i32 noundef 0) #8
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 0) #8
  %101 = or i32 %97, %100
  %102 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 17
  %103 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.68, ptr noundef %102, i32 noundef 1, i32 noundef 0) #8
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 0) #8
  %105 = or i32 %101, %104
  %106 = getelementptr %struct.lpddr2_timings, ptr %28, i32 %35, i32 12
  %107 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %34, ptr noundef nonnull @.str.69, ptr noundef %106, i32 noundef 1, i32 noundef 0) #8
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 0) #8
  %109 = or i32 %105, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %38
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %28) #8
  br label %118

112:                                              ; preds = %38
  %113 = add i32 %35, 1
  br label %114

114:                                              ; preds = %112, %33
  %115 = phi i32 [ %113, %112 ], [ %35, %33 ]
  %116 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %34) #8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %33

118:                                              ; preds = %111, %26, %23, %21, %8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.14) #9
  br label %119

119:                                              ; preds = %118, %114, %30
  %120 = phi i32 [ 4, %118 ], [ %18, %30 ], [ %18, %114 ]
  %121 = phi ptr [ @lpddr2_jedec_timings, %118 ], [ %28, %30 ], [ %28, %114 ]
  store i32 %120, ptr %3, align 4
  ret ptr %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_lpddr3_get_min_tck(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 84, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #8
  %8 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 1
  %9 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef 1, i32 noundef 0) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0) #8
  %11 = or i32 %10, %7
  %12 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 2
  %13 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef 1, i32 noundef 0) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 0) #8
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 3
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %16, i32 noundef 1, i32 noundef 0) #8
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 0) #8
  %19 = or i32 %15, %18
  %20 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 4
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %20, i32 noundef 1, i32 noundef 0) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 0) #8
  %23 = or i32 %19, %22
  %24 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 5
  %25 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %24, i32 noundef 1, i32 noundef 0) #8
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 0) #8
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 6
  %29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %28, i32 noundef 1, i32 noundef 0) #8
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 0) #8
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 7
  %33 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef 1, i32 noundef 0) #8
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 0) #8
  %35 = or i32 %31, %34
  %36 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 8
  %37 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef 1, i32 noundef 0) #8
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 0) #8
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 9
  %41 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %40, i32 noundef 1, i32 noundef 0) #8
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0) #8
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 10
  %45 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %44, i32 noundef 1, i32 noundef 0) #8
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 0) #8
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 11
  %49 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %48, i32 noundef 1, i32 noundef 0) #8
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 0) #8
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 12
  %53 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %52, i32 noundef 1, i32 noundef 0) #8
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 0) #8
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 13
  %57 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %56, i32 noundef 1, i32 noundef 0) #8
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 0) #8
  %59 = or i32 %55, %58
  %60 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 14
  %61 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %60, i32 noundef 1, i32 noundef 0) #8
  %62 = tail call i32 @llvm.smin.i32(i32 %61, i32 0) #8
  %63 = or i32 %59, %62
  %64 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 15
  %65 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %64, i32 noundef 1, i32 noundef 0) #8
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 0) #8
  %67 = or i32 %63, %66
  %68 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 16
  %69 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %68, i32 noundef 1, i32 noundef 0) #8
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 0) #8
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 17
  %73 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %72, i32 noundef 1, i32 noundef 0) #8
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 0) #8
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 18
  %77 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %76, i32 noundef 1, i32 noundef 0) #8
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 0) #8
  %79 = or i32 %75, %78
  %80 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 19
  %81 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %80, i32 noundef 1, i32 noundef 0) #8
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 0) #8
  %83 = or i32 %79, %82
  %84 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %3, i32 0, i32 20
  %85 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %84, i32 noundef 1, i32 noundef 0) #8
  %86 = tail call i32 @llvm.smin.i32(i32 %85, i32 0) #8
  %87 = or i32 %83, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.26) #9
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %90

90:                                               ; preds = %89, %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  br label %91

91:                                               ; preds = %90, %5
  %92 = phi ptr [ null, %90 ], [ %3, %5 ]
  ret ptr %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_lpddr3_get_ddr_timings(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 6
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.13) #9
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi ptr [ null, %6 ], [ @.str.27, %4 ]
  %9 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %125, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %18, %11 ], [ %9, %7 ]
  %13 = phi i32 [ %17, %11 ], [ 0, %7 ]
  %14 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %12, ptr noundef %8) #8
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = add i32 %13, %16
  %18 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %12) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11

20:                                               ; preds = %11
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %125, label %22

22:                                               ; preds = %20
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 92) #8
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %125, label %25, !prof !8

25:                                               ; preds = %22
  %26 = extractvalue { i32, i1 } %23, 0
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %26, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %125, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %126, label %32

32:                                               ; preds = %121, %29
  %33 = phi ptr [ %123, %121 ], [ %30, %29 ]
  %34 = phi i32 [ %122, %121 ], [ 0, %29 ]
  %35 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %33, ptr noundef %8) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %121, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34
  %39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.70, ptr noundef %38, i32 noundef 1, i32 noundef 0) #8
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 0) #8
  %41 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 1
  %42 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.53, ptr noundef %41, i32 noundef 1, i32 noundef 0) #8
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 0) #8
  %44 = or i32 %43, %40
  %45 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 2
  %46 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.71, ptr noundef %45, i32 noundef 1, i32 noundef 0) #8
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 0) #8
  %48 = or i32 %44, %47
  %49 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 3
  %50 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.58, ptr noundef %49, i32 noundef 1, i32 noundef 0) #8
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 0) #8
  %52 = or i32 %48, %51
  %53 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 4
  %54 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.54, ptr noundef %53, i32 noundef 1, i32 noundef 0) #8
  %55 = tail call i32 @llvm.smin.i32(i32 %54, i32 0) #8
  %56 = or i32 %52, %55
  %57 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 5
  %58 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.72, ptr noundef %57, i32 noundef 1, i32 noundef 0) #8
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 0) #8
  %60 = or i32 %56, %59
  %61 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 6
  %62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.55, ptr noundef %61, i32 noundef 1, i32 noundef 0) #8
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 0) #8
  %64 = or i32 %60, %63
  %65 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 7
  %66 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.73, ptr noundef %65, i32 noundef 1, i32 noundef 0) #8
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 0) #8
  %68 = or i32 %64, %67
  %69 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 8
  %70 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.74, ptr noundef %69, i32 noundef 1, i32 noundef 0) #8
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 0) #8
  %72 = or i32 %68, %71
  %73 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 9
  %74 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.59, ptr noundef %73, i32 noundef 1, i32 noundef 0) #8
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 0) #8
  %76 = or i32 %72, %75
  %77 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 10
  %78 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.56, ptr noundef %77, i32 noundef 1, i32 noundef 0) #8
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 0) #8
  %80 = or i32 %76, %79
  %81 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 11
  %82 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.61, ptr noundef %81, i32 noundef 1, i32 noundef 0) #8
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 0) #8
  %84 = or i32 %80, %83
  %85 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 12
  %86 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.75, ptr noundef %85, i32 noundef 1, i32 noundef 0) #8
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 0) #8
  %88 = or i32 %84, %87
  %89 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 13
  %90 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.76, ptr noundef %89, i32 noundef 1, i32 noundef 0) #8
  %91 = tail call i32 @llvm.smin.i32(i32 %90, i32 0) #8
  %92 = or i32 %88, %91
  %93 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 17
  %94 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.64, ptr noundef %93, i32 noundef 1, i32 noundef 0) #8
  %95 = tail call i32 @llvm.smin.i32(i32 %94, i32 0) #8
  %96 = or i32 %92, %95
  %97 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 18
  %98 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.77, ptr noundef %97, i32 noundef 1, i32 noundef 0) #8
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 0) #8
  %100 = or i32 %96, %99
  %101 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 19
  %102 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.60, ptr noundef %101, i32 noundef 1, i32 noundef 0) #8
  %103 = tail call i32 @llvm.smin.i32(i32 %102, i32 0) #8
  %104 = or i32 %100, %103
  %105 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 20
  %106 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.78, ptr noundef %105, i32 noundef 1, i32 noundef 0) #8
  %107 = tail call i32 @llvm.smin.i32(i32 %106, i32 0) #8
  %108 = or i32 %104, %107
  %109 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 21
  %110 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.62, ptr noundef %109, i32 noundef 1, i32 noundef 0) #8
  %111 = tail call i32 @llvm.smin.i32(i32 %110, i32 0) #8
  %112 = or i32 %108, %111
  %113 = getelementptr %struct.lpddr3_timings, ptr %27, i32 %34, i32 22
  %114 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str.79, ptr noundef %113, i32 noundef 1, i32 noundef 0) #8
  %115 = tail call i32 @llvm.smin.i32(i32 %114, i32 0) #8
  %116 = or i32 %112, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %37
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %27) #8
  br label %125

119:                                              ; preds = %37
  %120 = add i32 %34, 1
  br label %121

121:                                              ; preds = %119, %32
  %122 = phi i32 [ %120, %119 ], [ %34, %32 ]
  %123 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %33) #8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %32

125:                                              ; preds = %118, %25, %22, %20, %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.28) #9
  br label %126

126:                                              ; preds = %125, %121, %29
  %127 = phi i32 [ 0, %125 ], [ %17, %29 ], [ %17, %121 ]
  %128 = phi ptr [ null, %125 ], [ %27, %29 ], [ %27, %121 ]
  store i32 %127, ptr %3, align 4
  ret ptr %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @of_lpddr2_get_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.lpddr2_info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 4
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %4, i32 noundef 1, i32 noundef 0) #8
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i32 -2, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 5
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %9, i32 noundef 1, i32 noundef 0) #8
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 -2, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 2
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %14, i32 noundef 1, i32 noundef 0) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %106

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 4
  %19 = sdiv i32 32, %18
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %14, align 4
  %21 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 1
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %21, i32 noundef 1, i32 noundef 0) #8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %106

24:                                               ; preds = %17
  %25 = load i32, ptr %21, align 4
  %26 = call i32 @llvm.cttz.i32(i32 %25, i1 true), !range !9
  %27 = icmp eq i32 %25, 0
  %28 = add nsw i32 %26, -6
  %29 = select i1 %27, i32 -7, i32 %28
  store i32 %29, ptr %21, align 4
  %30 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.33) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, ptr %3, align 4
  br label %41

33:                                               ; preds = %24
  %34 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.34) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 1, ptr %3, align 4
  br label %41

37:                                               ; preds = %33
  %38 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.35) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %106, label %40

40:                                               ; preds = %37
  store i32 2, ptr %3, align 4
  br label %41

41:                                               ; preds = %40, %36, %32
  %42 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef null) #8
  %43 = call ptr @of_prop_next_string(ptr noundef %42, ptr noundef null) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %91, %41
  %46 = phi ptr [ %92, %91 ], [ %43, %41 ]
  %47 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.37)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %45
  %50 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.38)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %94, label %52

52:                                               ; preds = %49
  %53 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.39)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %94, label %55

55:                                               ; preds = %52
  %56 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.40)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %55
  %59 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.41)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %58
  %62 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.42)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %61
  %65 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.43)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %64
  %68 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.44)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %67
  %71 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.45)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %70
  %74 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.46)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.47)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %76
  %80 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.48)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.49)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.50)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.51)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = call ptr @of_prop_next_string(ptr noundef %42, ptr noundef nonnull %46) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %45

94:                                               ; preds = %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %45
  %95 = phi i32 [ 1, %45 ], [ 2, %49 ], [ 3, %52 ], [ 4, %55 ], [ 5, %58 ], [ 6, %61 ], [ 7, %64 ], [ 8, %67 ], [ 9, %70 ], [ 11, %73 ], [ 12, %76 ], [ 13, %79 ], [ 14, %82 ], [ 254, %85 ], [ 255, %88 ]
  %96 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 3
  store i32 %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %91, %41
  %98 = getelementptr inbounds %struct.lpddr2_info, ptr %3, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -2, ptr %98, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %103, ptr noundef nonnull align 4 dereferenceable(24) %3, i32 24, i1 false)
  br label %106

106:                                              ; preds = %105, %102, %37, %17, %13
  %107 = phi ptr [ null, %13 ], [ null, %17 ], [ null, %37 ], [ %103, %105 ], [ null, %102 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret ptr %107
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
