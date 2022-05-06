; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_toshiba.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_toshiba.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.11, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.11 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_op_instr = type { i32, %union.anon.9, i32 }
%union.anon.9 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.10, i8 }
%union.anon.10 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.8 }
%union.anon.8 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@toshiba_nand_manuf_ops = dso_local local_unnamed_addr constant %struct.nand_manufacturer_ops { ptr @toshiba_nand_decode_id, ptr @toshiba_nand_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/nand_toshiba.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not get ECC info\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"TC58TEG5DCLTA00\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TC58NVG0S3E\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TH58NVG2S3HBAI4\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1
@dist3_pairing_scheme = external dso_local constant %struct.mtd_pairing_scheme, align 4
@switch.table.toshiba_nand_decode_id = private unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @toshiba_nand_decode_id(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  tail call void @nand_decode_ext_id(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 5
  br i1 %5, label %6, label %51

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  %10 = load i32, ptr %2, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 7
  %18 = icmp eq i8 %17, 6
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 4
  %27 = and i32 %26, 8388607
  %28 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %23, %19, %14, %11
  %31 = load i32, ptr %3, align 8
  %32 = icmp sgt i32 %31, 5
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = icmp eq i32 %12, 0
  br i1 %34, label %35, label %37, !prof !8

35:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  %36 = load i32, ptr %2, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %12, %33 ]
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 7
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %44, -4
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %51

48:                                               ; preds = %40
  %49 = getelementptr inbounds [3 x i32], ptr @switch.table.toshiba_nand_decode_id, i32 0, i32 %45
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %47, %37, %30, %1
  %52 = phi i32 [ 0, %47 ], [ 0, %37 ], [ 0, %30 ], [ 0, %1 ], [ 512, %48 ]
  %53 = phi i32 [ 0, %47 ], [ 0, %37 ], [ 0, %30 ], [ 0, %1 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %54, i8 0, i32 12, i1 false)
  %55 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  store i32 %53, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  store i32 %52, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  store i32 0, ptr %57, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toshiba_nand_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  %6 = load i32, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  switch i32 %8, label %38 [
    i32 1, label %9
    i32 0, label %13
  ], !prof !9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = or i32 %11, 50331648
  store i32 %12, ptr %10, align 8
  br label %16

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  %14 = load i32, ptr %2, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 512, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 8, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @toshiba_nand_read_page_benand, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 19
  store ptr @toshiba_nand_read_subpage_benand, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @nand_write_page_raw, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @nand_read_page_raw_notsupp, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @nand_write_page_raw_notsupp, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 4096
  store i32 %35, ptr %33, align 8
  %36 = tail call ptr @nand_get_large_page_ooblayout() #6
  %37 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  store ptr %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %24, %20, %16, %13, %7
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.4, ptr noundef %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 5
  store ptr @tc58teg5dclta00_choose_interface_config, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = or i32 %46, 8192
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 16
  store ptr @dist3_pairing_scheme, ptr %48, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.5, ptr noundef %40, i32 noundef 11)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 5
  store ptr @tc58nvg0s3e_choose_interface_config, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.6, ptr noundef %40, i32 noundef 15)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 5
  store ptr @th58nvg2s3hbai4_choose_interface_config, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toshiba_nand_read_page_benand(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @nand_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @toshiba_nand_read_subpage_benand(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr i8, ptr %3, i32 %1
  %7 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %4, i32 noundef %1, ptr noundef %6, i32 noundef %2) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %7, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  %4 = alloca i8, align 1
  %5 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !10
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nand_controller, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %81, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_controller_ops, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %81, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.nand_interface_config, ptr %19, i32 0, i32 1, i32 1
  %23 = select i1 %21, ptr %22, ptr inttoptr (i32 -22 to ptr)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  %24 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false) #6
  store i8 122, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 2
  %26 = getelementptr inbounds %struct.nand_sdr_timings, ptr %23, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 999
  %29 = udiv i32 %28, 1000
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1
  store i32 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 1
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 1, i32 0, i32 1
  store ptr %5, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 1, i32 0, i32 2
  store i8 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 2
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %3, align 4
  %39 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 2, ptr %40, align 4
  %41 = load ptr, ptr %10, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.nand_controller_ops, ptr %41, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %49 = load i32, ptr %48, align 8
  %50 = icmp ult i32 %38, %49
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 139, i32 noundef 9, ptr noundef null) #6
  br label %52

52:                                               ; preds = %51, %43, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %81

53:                                               ; preds = %47
  %54 = call i32 %45(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load i32, ptr %32, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %62

62:                                               ; preds = %77, %59
  %63 = phi i32 [ 0, %59 ], [ %79, %77 ]
  %64 = phi i32 [ 0, %59 ], [ %78, %77 ]
  %65 = getelementptr [8 x i8], ptr %5, i32 0, i32 %63
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 15
  %68 = icmp eq i8 %67, 15
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, ptr %61, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %61, align 4
  br label %77

72:                                               ; preds = %62
  %73 = zext i8 %67 to i32
  %74 = load i32, ptr %60, align 4
  %75 = add i32 %74, %73
  store i32 %75, ptr %60, align 4
  %76 = call i32 @llvm.umax.i32(i32 %64, i32 %73)
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i32 [ %64, %69 ], [ %76, %72 ]
  %79 = add nuw i32 %63, 1
  %80 = icmp eq i32 %79, %57
  br i1 %80, label %104, label %62

81:                                               ; preds = %53, %52, %13, %9, %1
  %82 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %4) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i8, ptr %4, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %98

91:                                               ; preds = %84
  %92 = and i32 %86, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi ptr [ %90, %89 ], [ %97, %94 ]
  %100 = phi i32 [ 1, %89 ], [ %96, %94 ]
  %101 = phi i32 [ 0, %89 ], [ %96, %94 ]
  %102 = load i32, ptr %99, align 4
  %103 = add i32 %102, %100
  store i32 %103, ptr %99, align 4
  br label %104

104:                                              ; preds = %98, %91, %81, %77, %56
  %105 = phi i32 [ %82, %81 ], [ 0, %91 ], [ 0, %56 ], [ %101, %98 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc58teg5dclta00_choose_interface_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 5) #6
  %3 = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %0, ptr noundef %1, ptr noundef null) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @onfi_fill_interface_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_choose_best_sdr_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc58nvg0s3e_choose_interface_config(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 2) #6
  %3 = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %0, ptr noundef %1, ptr noundef null) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @th58nvg2s3hbai4_choose_interface_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 4) #6
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 6
  store i32 12000, ptr %4, align 8
  %5 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 11
  store i32 20000, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 14
  store i32 12000, ptr %6, align 8
  %7 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 15
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 18
  store i32 12000, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 25
  store i32 25000, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 26
  store i32 30000, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 27
  store i32 60000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 35
  store i32 60000, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 2
  store i64 700000000, ptr %13, align 8
  store i64 5000000000, ptr %3, align 8
  %14 = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %0, ptr noundef %1, ptr noundef %3) #6
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
