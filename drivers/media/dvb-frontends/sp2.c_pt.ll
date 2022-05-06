; ModuleID = '/llk/IR/drivers/media/dvb-frontends/sp2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/sp2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sp2 = type { i32, ptr, ptr, %struct.dvb_ca_en50221, i32, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sp2_config = type { ptr, ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sp2_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sp2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [35 x i8] c"description=CIMaX SP2/HF CI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"author=Olli Salonen <olli.salonen@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [21 x i8] c"callback not defined\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"i2c write error, reg = 0x%02x, status = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"i2c read error, reg = 0x%02x, status = %d\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sp2_driver = internal global %struct.i2c_driver { i32 0, ptr @sp2_probe, ptr @sp2_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sp2_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"sp2\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CIMaX SP2 successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.sp2_init.cimax_init = private unnamed_addr constant [34 x i8] c"\00\00\00\00\00D\00\00\00\00\00\00\00\00D\00\00\00\00\00\00\00\00\02\01\00\00\00\05\00\04\00\22\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__sp2_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @sp2_id

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_read_attribute_mem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %2, i8 noundef zeroext 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sp2_ci_op_cam(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [35 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.sp2, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.sp2, ptr %14, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = zext i8 %2 to i32
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %67, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 0, ptr %9, align 1
  %24 = getelementptr inbounds %struct.sp2, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %28 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %28, i8 0, i32 16, i1 false) #9, !annotation !8
  %29 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  store i16 %30, ptr %10, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 1, ptr %28, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %34 = load i16, ptr %29, align 2
  store i16 %34, ptr %33, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %11, ptr %37, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %10, i32 noundef 2) #9
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %42 = load i8, ptr %9, align 1
  %43 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.3, i32 noundef %43, i32 noundef %38) #10
  %44 = icmp slt i32 %38, 0
  %45 = select i1 %44, i32 %38, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br label %82

46:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %47 = load i8, ptr %11, align 1
  %48 = and i8 %47, -13
  %49 = or i8 %48, %2
  store i8 %49, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %7) #9
  %50 = getelementptr inbounds i8, ptr %7, i32 1
  %51 = getelementptr inbounds i8, ptr %7, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %51, i8 0, i32 33, i1 false) #9, !annotation !8
  %52 = load ptr, ptr %24, align 4
  %53 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %55 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %55, align 4, !annotation !8
  %56 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  store i16 %57, ptr %8, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %58, align 2
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %59, align 4
  store i8 0, ptr %7, align 1
  store i8 %49, ptr %50, align 1
  %60 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %8, i32 noundef 1) #9
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %66, label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %60) #10
  %64 = icmp slt i32 %60, 0
  %65 = select i1 %64, i32 %60, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %7) #9
  br label %82

66:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %7) #9
  br label %67

67:                                               ; preds = %66, %18
  store i32 %21, ptr %19, align 4
  %68 = icmp eq ptr %16, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.sp2, ptr %14, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 %16(ptr noundef %71, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef nonnull %12) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %82

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.sp2, ptr %14, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str) #10
  br label %82

78:                                               ; preds = %69
  %79 = icmp eq i8 %3, 0
  %80 = load i32, ptr %12, align 4
  %81 = select i1 %79, i32 0, i32 %80
  br label %82

82:                                               ; preds = %78, %74, %69, %62, %40, %6
  %83 = phi i32 [ -22, %74 ], [ -22, %6 ], [ %72, %69 ], [ %81, %78 ], [ %45, %40 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_write_attribute_mem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef %2, i8 noundef zeroext %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_read_cam_control(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = zext i8 %2 to i32
  %5 = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %4, i8 noundef zeroext 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_write_cam_control(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = zext i8 %2 to i32
  %6 = tail call fastcc i32 @sp2_ci_op_cam(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef %5, i8 noundef zeroext %3)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_slot_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [35 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [35 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %5) #9
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  %12 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %12, i8 0, i32 33, i1 false) #9, !annotation !8
  %13 = getelementptr inbounds %struct.sp2, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %17 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  store i16 %19, ptr %6, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %21, align 4
  store i8 0, ptr %5, align 1
  store i8 -128, ptr %11, align 1
  %22 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %6, i32 noundef 1) #9
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %22) #10
  %26 = icmp slt i32 %22, 0
  %27 = select i1 %26, i32 %22, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #9
  br label %46

28:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #9
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %3) #9
  %29 = getelementptr inbounds i8, ptr %3, i32 1
  %30 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %30, i8 0, i32 33, i1 false) #9, !annotation !8
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %34 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %36 = load i16, ptr %35, align 2
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %38, align 4
  store i8 0, ptr %3, align 1
  store i8 0, ptr %29, align 1
  %39 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #9
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %39) #10
  %43 = icmp slt i32 %39, 0
  %44 = select i1 %43, i32 %39, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %3) #9
  br label %46

45:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %3) #9
  call void @msleep(i32 noundef 1000) #9
  br label %46

46:                                               ; preds = %45, %41, %24, %2
  %47 = phi i32 [ 0, %45 ], [ -22, %2 ], [ %27, %24 ], [ %44, %41 ]
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @sp2_ci_slot_shutdown(ptr nocapture noundef readnone %0, i32 %1) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_slot_ts_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [35 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1
  %12 = getelementptr inbounds %struct.sp2, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %16 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #9, !annotation !8
  %17 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %16, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %22 = load i16, ptr %17, align 2
  store i16 %22, ptr %21, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %25, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %6, i32 noundef 2) #9
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %30 = load i8, ptr %5, align 1
  %31 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef %26) #10
  br label %32

32:                                               ; preds = %28, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %33 = load i8, ptr %7, align 1
  %34 = or i8 %33, 96
  store i8 %34, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %3) #9
  %35 = getelementptr inbounds i8, ptr %3, i32 1
  %36 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %36, i8 0, i32 33, i1 false) #9, !annotation !8
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  store i8 0, ptr %3, align 1
  store i8 %34, ptr %35, align 1
  %45 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 1) #9
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %45) #10
  %49 = icmp slt i32 %45, 0
  %50 = select i1 %49, i32 %45, i32 -5
  br label %51

51:                                               ; preds = %47, %32
  %52 = phi i32 [ %50, %47 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %3) #9
  br label %53

53:                                               ; preds = %51, %2
  %54 = phi i32 [ %52, %51 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sp2_ci_poll_slot_status(ptr nocapture noundef readonly %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 0, ptr %6, align 2, !annotation !8
  %9 = getelementptr inbounds %struct.sp2, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %10, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %8, align 4
  br label %47

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 0, ptr %4, align 1
  %17 = getelementptr inbounds %struct.sp2, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %21 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #9, !annotation !8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %24, align 2
  store i16 1, ptr %21, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %27 = load i16, ptr %22, align 2
  store i16 %27, ptr %26, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %30, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #9
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %39, label %33

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.3, i32 noundef %36, i32 noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 100
  store i32 %38, ptr %9, align 4
  br label %47

39:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = add i32 %40, 100
  store i32 %41, ptr %9, align 4
  %42 = load i8, ptr %6, align 2
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 5, ptr %8, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, ptr %8, align 4
  br label %47

47:                                               ; preds = %46, %45, %33, %14
  %48 = phi i32 [ 0, %33 ], [ %15, %14 ], [ 5, %45 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @sp2_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @sp2_driver) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp2_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [35 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [35 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [35 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 80) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %91, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sp2_config, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 6
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sp2_config, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 7
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %12, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3
  store ptr @__this_module, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 1
  store ptr @sp2_ci_read_attribute_mem, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 2
  store ptr @sp2_ci_write_attribute_mem, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 3
  store ptr @sp2_ci_read_cam_control, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 4
  store ptr @sp2_ci_write_cam_control, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 7
  store ptr @sp2_ci_slot_reset, ptr %30, align 8
  %31 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 8
  store ptr @sp2_ci_slot_shutdown, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 9
  store ptr @sp2_ci_slot_ts_enable, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 10
  store ptr @sp2_ci_poll_slot_status, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 3, i32 11
  store ptr %12, ptr %34, align 8
  %35 = getelementptr inbounds %struct.sp2, ptr %12, i32 0, i32 4
  store i32 0, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %7) #9
  %36 = getelementptr inbounds i8, ptr %7, i32 1
  %37 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %39 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 35, ptr %39, align 4, !annotation !8
  %40 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  store i16 %41, ptr %8, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %43, align 4
  store i8 0, ptr %7, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(34) %36, ptr noundef nonnull align 1 dereferenceable(34) @__const.sp2_init.cimax_init, i32 34, i1 false) #9
  %44 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #9
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %50, label %46

46:                                               ; preds = %14
  %47 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %44) #10
  %48 = icmp slt i32 %44, 0
  %49 = select i1 %48, i32 %44, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %7) #9
  br label %91

50:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %5) #9
  %51 = getelementptr inbounds i8, ptr %5, i32 1
  %52 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %52, i8 0, i32 33, i1 false) #9, !annotation !8
  %53 = load ptr, ptr %15, align 4
  %54 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %56 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %56, align 4, !annotation !8
  %57 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 1
  %58 = load i16, ptr %57, align 2
  store i16 %58, ptr %6, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %60, align 4
  store i8 31, ptr %5, align 1
  store i8 1, ptr %51, align 1
  %61 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %6, i32 noundef 1) #9
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.2, i32 noundef 31, i32 noundef %61) #10
  %65 = icmp slt i32 %61, 0
  %66 = select i1 %65, i32 %61, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #9
  br label %91

67:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %3) #9
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  %69 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %69, i8 0, i32 33, i1 false) #9, !annotation !8
  %70 = load ptr, ptr %15, align 4
  %71 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %73 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %73, align 4, !annotation !8
  %74 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  store i16 %75, ptr %4, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %76, align 2
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %77, align 4
  store i8 24, ptr %3, align 1
  store i8 1, ptr %68, align 1
  %78 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %4, i32 noundef 1) #9
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %84, label %80

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.2, i32 noundef 24, i32 noundef %78) #10
  %82 = icmp slt i32 %78, 0
  %83 = select i1 %82, i32 %78, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %3) #9
  br label %91

84:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %3) #9
  %85 = load ptr, ptr %17, align 8
  %86 = call i32 @dvb_ca_en50221_init(ptr noundef %85, ptr noundef %25, i32 noundef 0, i32 noundef 1) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load ptr, ptr %15, align 4
  %90 = getelementptr inbounds %struct.i2c_client, ptr %89, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.5) #10
  br label %93

91:                                               ; preds = %84, %80, %63, %46, %2
  %92 = phi i32 [ -12, %2 ], [ %86, %84 ], [ %49, %46 ], [ %66, %63 ], [ %83, %80 ]
  call void @kfree(ptr noundef %12) #9
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %92, %91 ], [ 0, %88 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp2_remove(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %3, null
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sp2, ptr %3, i32 0, i32 3, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sp2, ptr %3, i32 0, i32 3
  tail call void @dvb_ca_en50221_release(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %7, %1
  tail call void @kfree(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
