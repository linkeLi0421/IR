; ModuleID = '/llk/IR/drivers/media/tuners/mc44s803.c_pt.bc'
source_filename = "../drivers/media/tuners/mc44s803.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc44s803_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mc44s803_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mc44s803_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mc44s803_priv = type { ptr, ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mc44s803_config = type { i8, i8 }

@.str = private unnamed_addr constant [48 x i8] c"\013mc44s803: unsupported ID (%x should be 0x14)\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\016mc44s803: successfully identified (ID = %x)\0A\00", align 1
@mc44s803_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Freescale MC44S803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 1000000000, i32 100000, i32 0, i32 0, i32 0 }, ptr @mc44s803_release, ptr @mc44s803_init, ptr null, ptr null, ptr null, ptr @mc44s803_set_params, ptr null, ptr null, ptr @mc44s803_get_frequency, ptr null, ptr @mc44s803_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mc44s803_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc44s803_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mc44s803_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc44s803_attach to i32), ptr @__kstrtab_mc44s803_attach, ptr @__kstrtabns_mc44s803_attach }, section "___ksymtab+mc44s803_attach", align 4
@__UNIQUE_ID_author249 = internal constant [24 x i8] c"author=Jochen Friedrich\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [52 x i8] c"description=Freescale MC44S803 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\014mc44s803: I2C read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\014mc44s803: I2C write failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\014mc44s803: I/O Error\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_mc44s803_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mc44s803_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %63, label %11

11:                                               ; preds = %3
  store ptr %2, ptr %9, align 8
  %12 = getelementptr inbounds %struct.mc44s803_priv, ptr %9, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mc44s803_priv, ptr %9, i32 0, i32 2
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 1) #10
  br label %19

19:                                               ; preds = %17, %11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %20 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %20, align 4, !annotation !8
  %21 = load i8, ptr %2, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %7, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %25, align 4, !annotation !8
  store i16 %22, ptr %5, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %27, align 4
  store i8 0, ptr %4, align 1
  %28 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 -5, ptr %29, align 1
  %30 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 1) #10
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %39

34:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  %35 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 1) #10
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %39

39:                                               ; preds = %37, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  br label %57

40:                                               ; preds = %34
  %41 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  %43 = lshr i8 %42, 1
  %44 = and i8 %43, 31
  %45 = icmp eq i8 %44, 20
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = zext i8 %44 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %47) #11
  br label %57

49:                                               ; preds = %40
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 20) #11
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %51, ptr noundef nonnull align 4 dereferenceable(220) @mc44s803_tuner_ops, i32 220, i1 false)
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %9, ptr %52, align 4
  %53 = load ptr, ptr %14, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %49
  %56 = call i32 %53(ptr noundef %0, i32 noundef 0) #10
  br label %63

57:                                               ; preds = %46, %39
  %58 = load ptr, ptr %14, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 %58(ptr noundef %0, i32 noundef 0) #10
  br label %62

62:                                               ; preds = %60, %57
  call void @kfree(ptr noundef nonnull %9) #10
  br label %63

63:                                               ; preds = %62, %55, %49, %3
  %64 = phi ptr [ null, %62 ], [ null, %3 ], [ %0, %55 ], [ %0, %49 ]
  ret ptr %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mc44s803_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mc44s803_init(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [3 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef 1) #10
  br label %29

29:                                               ; preds = %27, %1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %30 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %30, align 4, !annotation !8
  %31 = load ptr, ptr %23, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %21, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %35, align 4
  store i8 0, ptr %20, align 1
  %36 = getelementptr inbounds [3 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds [3 x i8], ptr %20, i32 0, i32 2
  store i8 20, ptr %37, align 1
  %38 = getelementptr inbounds %struct.mc44s803_priv, ptr %23, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %21, i32 noundef 1) #10
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #10
  br label %187

44:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %45 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %45, align 4, !annotation !8
  %46 = load ptr, ptr %23, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %19, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %50, align 4
  store i8 0, ptr %18, align 1
  %51 = getelementptr inbounds [3 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds [3 x i8], ptr %18, i32 0, i32 2
  store i8 4, ptr %52, align 1
  %53 = load ptr, ptr %38, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %19, i32 noundef 1) #10
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #10
  br label %187

58:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %59 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %59, align 4, !annotation !8
  %60 = load ptr, ptr %23, align 4
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %17, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %64, align 4
  store i8 0, ptr %16, align 1
  %65 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  store i8 44, ptr %65, align 1
  %66 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 2
  store i8 1, ptr %66, align 1
  %67 = load ptr, ptr %38, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %17, i32 noundef 1) #10
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  br label %187

72:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %73 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %23, align 4
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %15, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %78, align 4
  store i8 0, ptr %14, align 1
  %79 = getelementptr inbounds [3 x i8], ptr %14, i32 0, i32 1
  store i8 32, ptr %79, align 1
  %80 = getelementptr inbounds [3 x i8], ptr %14, i32 0, i32 2
  store i8 0, ptr %80, align 1
  %81 = load ptr, ptr %38, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %15, i32 noundef 1) #10
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %72
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  br label %187

86:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  call void @msleep(i32 noundef 10) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %87 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %87, align 4, !annotation !8
  %88 = load ptr, ptr %23, align 4
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %13, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %91, align 2
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %92, align 4
  store i8 0, ptr %12, align 1
  %93 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 1
  store i8 36, ptr %93, align 1
  %94 = getelementptr inbounds [3 x i8], ptr %12, i32 0, i32 2
  store i8 1, ptr %94, align 1
  %95 = load ptr, ptr %38, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %13, i32 noundef 1) #10
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #10
  br label %187

100:                                              ; preds = %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #10
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %101 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %101, align 4, !annotation !8
  %102 = load ptr, ptr %23, align 4
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %11, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %105, align 2
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %106, align 4
  store i8 15, ptr %10, align 1
  %107 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 1
  store i8 -28, ptr %107, align 1
  %108 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 2
  store i8 3, ptr %108, align 1
  %109 = load ptr, ptr %38, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %11, i32 noundef 1) #10
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  br label %187

114:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  %115 = load ptr, ptr %23, align 4
  %116 = getelementptr inbounds %struct.mc44s803_config, ptr %115, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = shl i8 %117, 4
  %119 = and i8 %118, 16
  %120 = or i8 %119, 103
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %121 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %121, align 4, !annotation !8
  %122 = load ptr, ptr %23, align 4
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %9, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %126, align 4
  store i8 24, ptr %8, align 1
  %127 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 1
  store i8 %120, ptr %127, align 1
  %128 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 2
  store i8 -89, ptr %128, align 1
  %129 = load ptr, ptr %38, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %9, i32 noundef 1) #10
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %114
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  br label %187

134:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  %135 = load ptr, ptr %23, align 4
  %136 = getelementptr inbounds %struct.mc44s803_config, ptr %135, i32 0, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = shl i8 %137, 4
  %139 = and i8 %138, 16
  %140 = or i8 %139, 103
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %141 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %141, align 4, !annotation !8
  %142 = load ptr, ptr %23, align 4
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %7, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %146, align 4
  store i8 0, ptr %6, align 1
  %147 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  store i8 %140, ptr %147, align 1
  %148 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  store i8 -89, ptr %148, align 1
  %149 = load ptr, ptr %38, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %7, i32 noundef 1) #10
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %154, label %152

152:                                              ; preds = %134
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  br label %187

154:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %155 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %155, align 4, !annotation !8
  %156 = load ptr, ptr %23, align 4
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %5, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %159, align 2
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %160, align 4
  store i8 0, ptr %4, align 1
  %161 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 3, ptr %161, align 1
  %162 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 9, ptr %162, align 1
  %163 = load ptr, ptr %38, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %5, i32 noundef 1) #10
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %168, label %166

166:                                              ; preds = %154
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %187

168:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %169 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %169, align 4, !annotation !8
  %170 = load ptr, ptr %23, align 4
  %171 = load i8, ptr %170, align 1
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %3, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %173, align 2
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %174, align 4
  store i8 13, ptr %2, align 1
  %175 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 12, ptr %175, align 1
  %176 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 10, ptr %176, align 1
  %177 = load ptr, ptr %38, align 4
  %178 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %3, i32 noundef 1) #10
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %182, label %180

180:                                              ; preds = %168
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %187

182:                                              ; preds = %168
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  %183 = load ptr, ptr %24, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %182
  %186 = call i32 %183(ptr noundef %0, i32 noundef 0) #10
  br label %194

187:                                              ; preds = %180, %166, %152, %132, %112, %98, %84, %70, %56, %42
  %188 = load ptr, ptr %24, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = call i32 %188(ptr noundef %0, i32 noundef 0) #10
  br label %192

192:                                              ; preds = %190, %187
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %194

194:                                              ; preds = %192, %185, %182
  %195 = phi i32 [ -121, %192 ], [ 0, %185 ], [ 0, %182 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mc44s803_set_params(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mc44s803_priv, ptr %13, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %14, align 4
  %18 = add i32 %17, 1086500000
  %19 = udiv i32 %18, 1000000
  %20 = mul nuw i32 %19, 1000000
  %21 = mul nuw nsw i32 %19, 60
  %22 = add nuw nsw i32 %21, 13
  %23 = udiv i32 %22, 26
  %24 = sub i32 -36075000, %17
  %25 = add i32 %24, %20
  %26 = udiv i32 %25, 100000
  %27 = mul nuw nsw i32 %26, 60
  %28 = add nuw nsw i32 %27, 130
  %29 = udiv i32 %28, 260
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 1) #10
  br label %35

35:                                               ; preds = %33, %1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %36 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %36, align 4, !annotation !8
  %37 = load ptr, ptr %13, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %41, align 4
  store i8 6, ptr %10, align 1
  %42 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 1
  store i8 112, ptr %42, align 1
  %43 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 2
  store i8 50, ptr %43, align 1
  %44 = getelementptr inbounds %struct.mc44s803_priv, ptr %13, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %11, i32 noundef 1) #10
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %50, label %48

48:                                               ; preds = %35
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  br label %136

50:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  %51 = shl nuw nsw i32 %19, 4
  %52 = add nuw nsw i32 %51, 65504
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %53 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %13, align 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %9, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %58, align 4
  store i8 0, ptr %8, align 1
  %59 = lshr i32 %52, 8
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 1
  store i8 %60, ptr %61, align 1
  %62 = trunc i32 %52 to i8
  %63 = or i8 %62, 5
  %64 = getelementptr inbounds [3 x i8], ptr %8, i32 0, i32 2
  store i8 %63, ptr %64, align 1
  %65 = load ptr, ptr %44, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %9, i32 noundef 1) #10
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %50
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  br label %136

70:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  %71 = shl nuw nsw i32 %26, 4
  %72 = add nuw nsw i32 %71, 524256
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %73 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %73, align 4, !annotation !8
  %74 = load ptr, ptr %13, align 4
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %7, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %78, align 4
  %79 = lshr i32 %72, 16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 7
  store i8 %81, ptr %6, align 1
  %82 = lshr i32 %72, 8
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  store i8 %83, ptr %84, align 1
  %85 = trunc i32 %72 to i8
  %86 = or i8 %85, 6
  %87 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  store i8 %86, ptr %87, align 1
  %88 = load ptr, ptr %44, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %7, i32 noundef 1) #10
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %93, label %91

91:                                               ; preds = %70
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  br label %136

93:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %94 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %94, align 4, !annotation !8
  %95 = load ptr, ptr %13, align 4
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %5, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %98, align 2
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %99, align 4
  %100 = lshr i32 %23, 8
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 31
  %103 = or i8 %102, 32
  store i8 %103, ptr %4, align 1
  %104 = trunc i32 %23 to i8
  %105 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  store i8 %104, ptr %105, align 1
  %106 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  store i8 25, ptr %106, align 1
  %107 = load ptr, ptr %44, align 4
  %108 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %5, i32 noundef 1) #10
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %112, label %110

110:                                              ; preds = %93
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %136

112:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %113 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %113, align 4, !annotation !8
  %114 = load ptr, ptr %13, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %3, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %118, align 4
  %119 = lshr i32 %29, 8
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 31
  %122 = or i8 %121, 32
  store i8 %122, ptr %2, align 1
  %123 = trunc i32 %29 to i8
  %124 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 41, ptr %125, align 1
  %126 = load ptr, ptr %44, align 4
  %127 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %3, i32 noundef 1) #10
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %131, label %129

129:                                              ; preds = %112
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %136

131:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  %132 = load ptr, ptr %30, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = call i32 %132(ptr noundef %0, i32 noundef 0) #10
  br label %143

136:                                              ; preds = %129, %110, %91, %68, %48
  %137 = load ptr, ptr %30, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = call i32 %137(ptr noundef %0, i32 noundef 0) #10
  br label %141

141:                                              ; preds = %139, %136
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %143

143:                                              ; preds = %141, %134, %131
  %144 = phi i32 [ -121, %141 ], [ 0, %134 ], [ 0, %131 ]
  ret i32 %144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mc44s803_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mc44s803_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mc44s803_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 36125000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
