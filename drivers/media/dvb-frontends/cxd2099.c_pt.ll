; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2099.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2099.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cxd = type { %struct.dvb_ca_en50221, %struct.cxd2099_cfg, ptr, ptr, [35 x i8], i8, i8, i8, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, %struct.mutex, [1028 x i8], [1028 x i8] }
%struct.cxd2099_cfg = type { i32, i8, i8, i32, ptr }

@__param_str_buffermode = internal constant [11 x i8] c"buffermode\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@buffermode = internal global i32 0, align 4
@__param_buffermode = internal constant %struct.kernel_param { ptr @__param_str_buffermode, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @buffermode } }, section "__param", align 4
@__UNIQUE_ID_buffermodetype249 = internal constant [24 x i8] c"parmtype=buffermode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffermode250 = internal constant [65 x i8] c"parm=buffermode:Enable CXD2099AR buffer mode (default: disabled)\00", section ".modinfo", align 1
@cxd2099_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cxd2099\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [62 x i8] c"description=Sony CXD2099AR Common Interface controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [21 x i8] c"author=Ralph Metzler\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cxd2099_driver = internal global %struct.i2c_driver { i32 0, ptr @cxd2099_probe, ptr @cxd2099_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cxd2099_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"cxd2099\00", align 1
@cxd2099_probe.rm_cfg = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No CXD2099AR detected at 0x%02x\0A\00", align 1
@cxd2099_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"&ci->lock\00", align 1
@en_templ = internal unnamed_addr constant %struct.dvb_ca_en50221 { ptr null, ptr @read_attribute_mem, ptr @write_attribute_mem, ptr @read_cam_control, ptr @write_cam_control, ptr @read_data, ptr @write_data, ptr @slot_reset, ptr @slot_shutdown, ptr @slot_ts_enable, ptr @poll_slot_status, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Attached CXD2099AR at 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Using CXD2099AR buffer mode\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"NO CAM\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"enable cam buffer mode\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_buffermode250, ptr @__UNIQUE_ID_buffermodetype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__param_buffermode], section "llvm.metadata"

@__mod_i2c__cxd2099_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @cxd2099_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @cxd2099_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @cxd2099_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2099_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 3244) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 2
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %12, ptr noundef align 4 dereferenceable(16) %6, i32 16, i1 false)
  %13 = tail call ptr @__regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @cxd2099_probe.rm_cfg, ptr noundef null, ptr noundef null) #8
  %14 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  store ptr %13, ptr %14, align 8
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = ptrtoint ptr %13 to i32
  br label %44

18:                                               ; preds = %10
  %19 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %24) #10
  call void @regmap_exit(ptr noundef %13) #8
  br label %44

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 16
  call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @cxd2099_probe.__key) #8
  %27 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 5
  store i8 -1, ptr %27, align 1
  %28 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 7
  store i8 74, ptr %28, align 1
  %29 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 6
  store i8 27, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(52) %8, ptr noundef nonnull align 4 dereferenceable(52) @en_templ, i32 52, i1 false)
  %30 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %8, i32 0, i32 11
  store ptr %8, ptr %30, align 4
  call fastcc void @init(ptr noundef nonnull %8)
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %33) #10
  %34 = getelementptr inbounds %struct.cxd2099_cfg, ptr %6, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  store ptr %8, ptr %35, align 4
  %36 = load i32, ptr @buffermode, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %8, i32 0, i32 5
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %8, i32 0, i32 6
  store ptr null, ptr %40, align 8
  br label %42

41:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4) #10
  br label %42

42:                                               ; preds = %41, %38
  %43 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %43, align 8
  br label %46

44:                                               ; preds = %21, %16
  %45 = phi i32 [ %17, %16 ], [ %19, %21 ]
  call void @kfree(ptr noundef nonnull %8) #8
  br label %46

46:                                               ; preds = %44, %42, %2
  %47 = phi i32 [ 0, %42 ], [ %45, %44 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2099_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cxd, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @regmap_exit(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 8
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  store i8 0, ptr %4, align 1
  %8 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 0
  store i8 0, ptr %8, align 1
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 0) #8
  %13 = icmp eq i32 %12, 0
  store i8 0, ptr %4, align 1
  %14 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 0
  store i8 0, ptr %14, align 1
  br i1 %13, label %15, label %19

15:                                               ; preds = %9, %7
  %16 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 1, i32 noundef 0) #8
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %12, %9 ], [ %18, %15 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %276, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %4, align 1
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i8 1, ptr %4, align 1
  %26 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %26, align 1
  br label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 0, i32 noundef 1) #8
  %31 = icmp eq i32 %30, 0
  store i8 1, ptr %4, align 1
  %32 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %32, align 1
  br i1 %31, label %33, label %37

33:                                               ; preds = %27, %25
  %34 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 1, i32 noundef 0) #8
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %30, %27 ], [ %36, %33 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %276, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr %4, align 1
  %42 = icmp eq i8 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  store i8 2, ptr %4, align 1
  %44 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 2
  store i8 16, ptr %44, align 1
  br label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 0, i32 noundef 2) #8
  %49 = icmp eq i32 %48, 0
  store i8 2, ptr %4, align 1
  %50 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 2
  store i8 16, ptr %50, align 1
  br i1 %49, label %51, label %55

51:                                               ; preds = %45, %43
  %52 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 1, i32 noundef 16) #8
  br label %55

55:                                               ; preds = %51, %45
  %56 = phi i32 [ %48, %45 ], [ %54, %51 ]
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %276, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr %4, align 1
  %60 = icmp eq i8 %59, 3
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  store i8 3, ptr %4, align 1
  %62 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 3
  store i8 0, ptr %62, align 1
  br label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 0, i32 noundef 3) #8
  %67 = icmp eq i32 %66, 0
  store i8 3, ptr %4, align 1
  %68 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 3
  store i8 0, ptr %68, align 1
  br i1 %67, label %69, label %73

69:                                               ; preds = %63, %61
  %70 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 1, i32 noundef 0) #8
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i32 [ %66, %63 ], [ %72, %69 ]
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %276, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr %4, align 1
  %78 = icmp eq i8 %77, 5
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  store i8 5, ptr %4, align 1
  %80 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 5
  store i8 -1, ptr %80, align 1
  br label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 0, i32 noundef 5) #8
  %85 = icmp eq i32 %84, 0
  store i8 5, ptr %4, align 1
  %86 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 5
  store i8 -1, ptr %86, align 1
  br i1 %85, label %87, label %91

87:                                               ; preds = %81, %79
  %88 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 1, i32 noundef 255) #8
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i32 [ %84, %81 ], [ %90, %87 ]
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %276, label %94

94:                                               ; preds = %91
  %95 = load i8, ptr %4, align 1
  %96 = icmp eq i8 %95, 6
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  store i8 6, ptr %4, align 1
  %98 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  store i8 31, ptr %98, align 1
  br label %105

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 0, i32 noundef 6) #8
  %103 = icmp eq i32 %102, 0
  store i8 6, ptr %4, align 1
  %104 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  store i8 31, ptr %104, align 1
  br i1 %103, label %105, label %109

105:                                              ; preds = %99, %97
  %106 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 1, i32 noundef 31) #8
  br label %109

109:                                              ; preds = %105, %99
  %110 = phi i32 [ %102, %99 ], [ %108, %105 ]
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %276, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %4, align 1
  %114 = icmp eq i8 %113, 7
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  store i8 7, ptr %4, align 1
  %116 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 7
  store i8 31, ptr %116, align 1
  br label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @regmap_write(ptr noundef %119, i32 noundef 0, i32 noundef 7) #8
  %121 = icmp eq i32 %120, 0
  store i8 7, ptr %4, align 1
  %122 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 7
  store i8 31, ptr %122, align 1
  br i1 %121, label %123, label %127

123:                                              ; preds = %117, %115
  %124 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @regmap_write(ptr noundef %125, i32 noundef 1, i32 noundef 31) #8
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi i32 [ %120, %117 ], [ %126, %123 ]
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %276, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %4, align 1
  %132 = icmp eq i8 %131, 8
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  store i8 8, ptr %4, align 1
  %134 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 8
  store i8 40, ptr %134, align 1
  br label %141

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 @regmap_write(ptr noundef %137, i32 noundef 0, i32 noundef 8) #8
  %139 = icmp eq i32 %138, 0
  store i8 8, ptr %4, align 1
  %140 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 8
  store i8 40, ptr %140, align 1
  br i1 %139, label %141, label %145

141:                                              ; preds = %135, %133
  %142 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 @regmap_write(ptr noundef %143, i32 noundef 1, i32 noundef 40) #8
  br label %145

145:                                              ; preds = %141, %135
  %146 = phi i32 [ %138, %135 ], [ %144, %141 ]
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %276, label %148

148:                                              ; preds = %145
  %149 = load i8, ptr %4, align 1
  %150 = icmp eq i8 %149, 20
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  store i8 20, ptr %4, align 1
  %152 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 20
  store i8 32, ptr %152, align 1
  br label %159

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 @regmap_write(ptr noundef %155, i32 noundef 0, i32 noundef 20) #8
  %157 = icmp eq i32 %156, 0
  store i8 20, ptr %4, align 1
  %158 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 20
  store i8 32, ptr %158, align 1
  br i1 %157, label %159, label %163

159:                                              ; preds = %153, %151
  %160 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 @regmap_write(ptr noundef %161, i32 noundef 1, i32 noundef 32) #8
  br label %163

163:                                              ; preds = %159, %153
  %164 = phi i32 [ %156, %153 ], [ %162, %159 ]
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %276, label %166

166:                                              ; preds = %163
  %167 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext -89)
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %276, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 51)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %276, label %172

172:                                              ; preds = %169
  %173 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 12, i8 noundef zeroext 51)
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %276, label %175

175:                                              ; preds = %172
  %176 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 20, i8 noundef zeroext 0, i8 noundef zeroext 15)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %276, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 7
  %180 = load i8, ptr %179, align 1
  %181 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 21, i8 noundef zeroext %180)
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %276, label %183

183:                                              ; preds = %178
  %184 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 0, i8 noundef zeroext 15)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %276, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 6
  %188 = load i8, ptr %187, align 4
  %189 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 23, i8 noundef zeroext %188)
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %276, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 2
  %193 = load i8, ptr %192, align 1
  switch i8 %193, label %240 [
    i8 2, label %194
    i8 1, label %221
  ]

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = shl i32 %196, 13
  %198 = add i32 %197, 71999
  %199 = udiv i32 %198, 72000
  %200 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 1
  %201 = load i8, ptr %200, align 4
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %194
  %204 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 111)
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %276, label %209

206:                                              ; preds = %194
  %207 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 109)
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %276, label %209

209:                                              ; preds = %206, %203
  %210 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 8)
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %276, label %212

212:                                              ; preds = %209
  %213 = lshr i32 %199, 8
  %214 = trunc i32 %213 to i8
  %215 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 33, i8 noundef zeroext %214)
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %276, label %217

217:                                              ; preds = %212
  %218 = trunc i32 %199 to i8
  %219 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 34, i8 noundef zeroext %218)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %276, label %259

221:                                              ; preds = %191
  %222 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 1
  %223 = load i8, ptr %222, align 4
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 111)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %276, label %231

228:                                              ; preds = %221
  %229 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 109)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %276, label %231

231:                                              ; preds = %228, %225
  %232 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 104)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %276, label %234

234:                                              ; preds = %231
  %235 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 33, i8 noundef zeroext 0)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %276, label %237

237:                                              ; preds = %234
  %238 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 34, i8 noundef zeroext 2)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %276, label %259

240:                                              ; preds = %191
  %241 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 1
  %242 = load i8, ptr %241, align 4
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 79)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %276, label %250

247:                                              ; preds = %240
  %248 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 77)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %276, label %250

250:                                              ; preds = %247, %244
  %251 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext 40)
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %250
  %254 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 33, i8 noundef zeroext 0)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %276, label %256

256:                                              ; preds = %253
  %257 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 34, i8 noundef zeroext 7)
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %276, label %259

259:                                              ; preds = %256, %237, %217
  %260 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext -128, i8 noundef zeroext -128)
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %276, label %262

262:                                              ; preds = %259
  %263 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 2)
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %262
  %266 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 4)
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %265
  %269 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 49)
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %268
  %272 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 9, i8 noundef zeroext 8, i8 noundef zeroext 8)
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 15
  store i32 -1, ptr %275, align 4
  tail call fastcc void @cam_mode(ptr noundef %0, i32 noundef 0)
  br label %276

276:                                              ; preds = %274, %271, %268, %265, %262, %259, %256, %253, %250, %247, %244, %237, %234, %231, %228, %225, %217, %212, %209, %206, %203, %186, %183, %178, %175, %172, %169, %166, %163, %145, %127, %109, %91, %73, %55, %37, %19
  tail call void @mutex_unlock(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_attribute_mem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #8
  tail call fastcc void @set_mode(ptr noundef %7, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  %9 = trunc i32 %2 to i8
  store i8 %9, ptr %4, align 2
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  %11 = lshr i32 %2, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1
  %13 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_raw_write(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 2) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load ptr, ptr %13, align 4
  %19 = call i32 @regmap_raw_read(ptr noundef %18, i32 noundef 3, ptr noundef nonnull %5, i32 noundef 1) #8
  br label %20

20:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @mutex_unlock(ptr noundef %8) #8
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_attribute_mem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #2 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [256 x i8], align 1
  %7 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %9) #8
  tail call fastcc void @set_mode(ptr noundef %8, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  %10 = trunc i32 %2 to i8
  store i8 %10, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  %12 = lshr i32 %2, 8
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %11, align 1
  %14 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_raw_write(ptr noundef %15, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #8
  %19 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %19, i8 0, i32 255, i1 false) #8, !annotation !8
  store i8 %3, ptr %6, align 1
  %20 = load ptr, ptr %14, align 4
  %21 = call i32 @regmap_raw_write(ptr noundef %20, i32 noundef 3, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #8
  br label %22

22:                                               ; preds = %18, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @mutex_unlock(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_cam_control(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #2 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #8
  tail call fastcc void @set_mode(ptr noundef %7, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 %2, ptr %4, align 2
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_raw_write(ptr noundef %11, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 3, ptr noundef nonnull %5) #8
  br label %17

17:                                               ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @mutex_unlock(ptr noundef %8) #8
  %18 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_cam_control(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #2 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #8
  tail call fastcc void @set_mode(ptr noundef %7, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i8 %2, ptr %5, align 2
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.cxd, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_raw_write(ptr noundef %11, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load ptr, ptr %10, align 4
  %16 = zext i8 %3 to i32
  %17 = call i32 @regmap_write(ptr noundef %15, i32 noundef 3, i32 noundef %16) #8
  br label %18

18:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @mutex_unlock(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %9 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %9) #8
  tail call fastcc void @campoll(ptr noundef %8)
  tail call void @mutex_unlock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %143, label %13

13:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef %9) #8
  %14 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 15
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef 15) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17, %13
  store i8 15, ptr %14, align 1
  %23 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 1, i32 3
  %24 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %5, %22 ], [ %39, %29 ]
  %27 = phi i16 [ 1, %22 ], [ %41, %29 ]
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = load i32, ptr %23, align 4
  %32 = icmp ne i32 %31, 0
  %33 = icmp ult i32 %31, %30
  %34 = select i1 %32, i1 %33, i1 false
  %35 = select i1 %34, i32 %31, i32 %30
  %36 = load ptr, ptr %24, align 4
  %37 = call i32 @regmap_raw_read(ptr noundef %36, i32 noundef 1, ptr noundef %26, i32 noundef %35) #8
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr i8, ptr %26, i32 %35
  %40 = trunc i32 %35 to i16
  %41 = sub i16 %27, %40
  br i1 %38, label %25, label %42

42:                                               ; preds = %29, %25, %17
  %43 = load i8, ptr %14, align 1
  %44 = icmp eq i8 %43, 16
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @regmap_write(ptr noundef %47, i32 noundef 0, i32 noundef 16) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45, %42
  store i8 16, ptr %14, align 1
  %51 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 1, i32 3
  %52 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  br label %53

53:                                               ; preds = %57, %50
  %54 = phi ptr [ %6, %50 ], [ %67, %57 ]
  %55 = phi i16 [ 1, %50 ], [ %69, %57 ]
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = zext i16 %55 to i32
  %59 = load i32, ptr %51, align 4
  %60 = icmp ne i32 %59, 0
  %61 = icmp ult i32 %59, %58
  %62 = select i1 %60, i1 %61, i1 false
  %63 = select i1 %62, i32 %59, i32 %58
  %64 = load ptr, ptr %52, align 4
  %65 = call i32 @regmap_raw_read(ptr noundef %64, i32 noundef 1, ptr noundef %54, i32 noundef %63) #8
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr i8, ptr %54, i32 %63
  %68 = trunc i32 %63 to i16
  %69 = sub i16 %55, %68
  br i1 %66, label %53, label %70

70:                                               ; preds = %57, %53
  %71 = load i8, ptr %6, align 1
  br label %72

72:                                               ; preds = %70, %45
  %73 = phi i8 [ %71, %70 ], [ 0, %45 ]
  %74 = load i8, ptr %5, align 1
  %75 = zext i8 %74 to i16
  %76 = shl nuw i16 %75, 8
  %77 = zext i8 %73 to i16
  %78 = or i16 %76, %77
  %79 = zext i16 %78 to i32
  %80 = icmp sgt i32 %79, %3
  %81 = icmp ult i16 %78, 2
  %82 = or i1 %81, %80
  br i1 %82, label %83, label %112

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 17
  %85 = load i8, ptr %14, align 1
  %86 = icmp eq i8 %85, 18
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @regmap_write(ptr noundef %89, i32 noundef 0, i32 noundef 18) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %141

92:                                               ; preds = %87, %83
  store i8 18, ptr %14, align 1
  %93 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 1, i32 3
  %94 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  br label %95

95:                                               ; preds = %99, %92
  %96 = phi ptr [ %84, %92 ], [ %109, %99 ]
  %97 = phi i16 [ %78, %92 ], [ %111, %99 ]
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %141, label %99

99:                                               ; preds = %95
  %100 = zext i16 %97 to i32
  %101 = load i32, ptr %93, align 4
  %102 = icmp ne i32 %101, 0
  %103 = icmp ult i32 %101, %100
  %104 = select i1 %102, i1 %103, i1 false
  %105 = select i1 %104, i32 %101, i32 %100
  %106 = load ptr, ptr %94, align 4
  %107 = call i32 @regmap_raw_read(ptr noundef %106, i32 noundef 1, ptr noundef %96, i32 noundef %105) #8
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr i8, ptr %96, i32 %105
  %110 = trunc i32 %105 to i16
  %111 = sub i16 %97, %110
  br i1 %108, label %95, label %141

112:                                              ; preds = %72
  %113 = load i8, ptr %14, align 1
  %114 = icmp eq i8 %113, 18
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 @regmap_write(ptr noundef %117, i32 noundef 0, i32 noundef 18) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115, %112
  store i8 18, ptr %14, align 1
  %121 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 1, i32 3
  %122 = getelementptr inbounds %struct.cxd, ptr %8, i32 0, i32 3
  br label %123

123:                                              ; preds = %127, %120
  %124 = phi ptr [ %2, %120 ], [ %137, %127 ]
  %125 = phi i16 [ %78, %120 ], [ %139, %127 ]
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = zext i16 %125 to i32
  %129 = load i32, ptr %121, align 4
  %130 = icmp ne i32 %129, 0
  %131 = icmp ult i32 %129, %128
  %132 = select i1 %130, i1 %131, i1 false
  %133 = select i1 %132, i32 %129, i32 %128
  %134 = load ptr, ptr %122, align 4
  %135 = call i32 @regmap_raw_read(ptr noundef %134, i32 noundef 1, ptr noundef %124, i32 noundef %133) #8
  %136 = icmp eq i32 %135, 0
  %137 = getelementptr i8, ptr %124, i32 %133
  %138 = trunc i32 %133 to i16
  %139 = sub i16 %125, %138
  br i1 %136, label %123, label %140

140:                                              ; preds = %127, %123, %115
  store i32 0, ptr %10, align 4
  br label %141

141:                                              ; preds = %140, %99, %95, %87
  %142 = phi i32 [ %79, %140 ], [ -5, %87 ], [ -5, %95 ], [ -5, %99 ]
  call void @mutex_unlock(ptr noundef %9) #8
  br label %143

143:                                              ; preds = %141, %4
  %144 = phi i32 [ 0, %4 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = lshr i32 %3, 8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 13
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  store i8 13, ptr %14, align 1
  %18 = getelementptr %struct.cxd, ptr %6, i32 0, i32 4, i32 13
  store i8 %13, ptr %18, align 1
  br label %27

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef 13) #8
  %23 = icmp eq i32 %22, 0
  store i8 13, ptr %14, align 1
  %24 = getelementptr %struct.cxd, ptr %6, i32 0, i32 4, i32 13
  store i8 %13, ptr %24, align 1
  br i1 %23, label %27, label %25

25:                                               ; preds = %19
  %26 = trunc i32 %3 to i8
  br label %37

27:                                               ; preds = %19, %17
  %28 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = and i32 %12, 255
  %31 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 1, i32 noundef %30) #8
  %32 = load i8, ptr %14, align 1
  %33 = trunc i32 %3 to i8
  %34 = icmp eq i8 %32, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  store i8 14, ptr %14, align 1
  %36 = getelementptr %struct.cxd, ptr %6, i32 0, i32 4, i32 14
  store i8 %33, ptr %36, align 1
  br label %47

37:                                               ; preds = %27, %25
  %38 = phi i8 [ %26, %25 ], [ %33, %27 ]
  %39 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 0, i32 noundef 14) #8
  %42 = icmp eq i32 %41, 0
  store i8 14, ptr %14, align 1
  %43 = getelementptr %struct.cxd, ptr %6, i32 0, i32 4, i32 14
  store i8 %38, ptr %43, align 1
  br i1 %42, label %47, label %44

44:                                               ; preds = %37
  %45 = trunc i32 %3 to i16
  %46 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 18
  br label %57

47:                                               ; preds = %37, %35
  %48 = phi i8 [ %33, %35 ], [ %38, %37 ]
  %49 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = zext i8 %48 to i32
  %52 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 1, i32 noundef %51) #8
  %53 = load i8, ptr %14, align 1
  %54 = trunc i32 %3 to i16
  %55 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 18
  %56 = icmp eq i8 %53, 17
  br i1 %56, label %64, label %57

57:                                               ; preds = %47, %44
  %58 = phi ptr [ %46, %44 ], [ %55, %47 ]
  %59 = phi i16 [ %45, %44 ], [ %54, %47 ]
  %60 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 0, i32 noundef 17) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %57, %47
  %65 = phi ptr [ %58, %57 ], [ %55, %47 ]
  %66 = phi i16 [ %59, %57 ], [ %54, %47 ]
  store i8 17, ptr %14, align 1
  %67 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 1, i32 3
  %68 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  br label %69

69:                                               ; preds = %73, %64
  %70 = phi ptr [ %2, %64 ], [ %86, %73 ]
  %71 = phi i16 [ %66, %64 ], [ %85, %73 ]
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  %74 = zext i16 %71 to i32
  %75 = load i32, ptr %67, align 4
  %76 = icmp eq i32 %75, 0
  %77 = icmp ugt i32 %75, %74
  %78 = select i1 %76, i1 true, i1 %77
  %79 = add i32 %75, -1
  %80 = select i1 %78, i32 %74, i32 %79
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr align 1 %70, i32 %80, i1 false) #8
  %81 = load ptr, ptr %68, align 4
  %82 = tail call i32 @regmap_raw_write(ptr noundef %81, i32 noundef 1, ptr noundef %65, i32 noundef %80) #8
  %83 = icmp eq i32 %82, 0
  %84 = trunc i32 %80 to i16
  %85 = sub i16 %71, %84
  %86 = getelementptr i8, ptr %70, i32 %80
  br i1 %83, label %69, label %87

87:                                               ; preds = %73, %69, %57
  store i32 1, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %11) #8
  br label %88

88:                                               ; preds = %87, %4
  %89 = phi i32 [ %3, %87 ], [ -11, %4 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slot_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 17
  %10 = tail call i32 @read_data(ptr noundef %0, i32 noundef %1, ptr noundef %9, i32 noundef 0)
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 5
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 32
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  store i8 32, ptr %16, align 1
  %20 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 32
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, -128
  store i8 %22, ptr %20, align 1
  br label %31

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 0, i32 noundef 32) #8
  store i8 32, ptr %16, align 1
  %27 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 32
  %28 = load i8, ptr %27, align 1
  %29 = or i8 %28, -128
  store i8 %29, ptr %27, align 1
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23, %19
  %32 = phi i8 [ %22, %19 ], [ %29, %23 ]
  %33 = phi ptr [ %20, %19 ], [ %27, %23 ]
  %34 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = zext i8 %32 to i32
  %37 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 1, i32 noundef %36) #8
  %38 = load i8, ptr %33, align 1
  br label %39

39:                                               ; preds = %31, %23
  %40 = phi i8 [ %29, %23 ], [ %38, %31 ]
  %41 = phi ptr [ %27, %23 ], [ %33, %31 ]
  %42 = and i8 %40, 127
  store i8 %42, ptr %41, align 1
  store i32 0, ptr %5, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  store i8 0, ptr %44, align 1
  %48 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 0
  store i8 33, ptr %48, align 1
  br label %55

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 0, i32 noundef 0) #8
  %53 = icmp eq i32 %52, 0
  store i8 0, ptr %44, align 1
  %54 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 0
  store i8 33, ptr %54, align 1
  br i1 %53, label %55, label %63

55:                                               ; preds = %49, %47
  %56 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 1, i32 noundef 33) #8
  %59 = load i8, ptr %44, align 1
  %60 = icmp eq i8 %59, 6
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  store i8 6, ptr %44, align 1
  %62 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 6
  store i8 31, ptr %62, align 1
  br label %69

63:                                               ; preds = %55, %49
  %64 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 0, i32 noundef 6) #8
  %67 = icmp eq i32 %66, 0
  store i8 6, ptr %44, align 1
  %68 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 6
  store i8 31, ptr %68, align 1
  br i1 %67, label %69, label %77

69:                                               ; preds = %63, %61
  %70 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 1, i32 noundef 31) #8
  %73 = load i8, ptr %44, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  store i8 0, ptr %44, align 1
  %76 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 0
  store i8 49, ptr %76, align 1
  br label %83

77:                                               ; preds = %69, %63
  %78 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 0, i32 noundef 0) #8
  %81 = icmp eq i32 %80, 0
  store i8 0, ptr %44, align 1
  %82 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 0
  store i8 49, ptr %82, align 1
  br i1 %81, label %83, label %93

83:                                               ; preds = %77, %75
  %84 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 1, i32 noundef 49) #8
  %87 = load i8, ptr %44, align 1
  %88 = icmp eq i8 %87, 32
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  store i8 32, ptr %44, align 1
  %90 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 32
  %91 = load i8, ptr %90, align 1
  %92 = or i8 %91, -128
  store i8 %92, ptr %90, align 1
  br label %101

93:                                               ; preds = %83, %77
  %94 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef 0, i32 noundef 32) #8
  store i8 32, ptr %44, align 1
  %97 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 32
  %98 = load i8, ptr %97, align 1
  %99 = or i8 %98, -128
  store i8 %99, ptr %97, align 1
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %93, %89
  %102 = phi i8 [ %92, %89 ], [ %99, %93 ]
  %103 = phi ptr [ %90, %89 ], [ %97, %93 ]
  %104 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = zext i8 %102 to i32
  %107 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 1, i32 noundef %106) #8
  %108 = load i8, ptr %103, align 1
  br label %109

109:                                              ; preds = %101, %93
  %110 = phi i8 [ %99, %93 ], [ %108, %101 ]
  %111 = phi ptr [ %97, %93 ], [ %103, %101 ]
  %112 = and i8 %110, 127
  store i8 %112, ptr %111, align 1
  %113 = load i8, ptr %44, align 1
  %114 = icmp eq i8 %113, 3
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  store i8 3, ptr %44, align 1
  %116 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 3
  store i8 2, ptr %116, align 1
  br label %123

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @regmap_write(ptr noundef %119, i32 noundef 0, i32 noundef 3) #8
  %121 = icmp eq i32 %120, 0
  store i8 3, ptr %44, align 1
  %122 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 3
  store i8 2, ptr %122, align 1
  br i1 %121, label %123, label %127

123:                                              ; preds = %117, %115
  %124 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @regmap_write(ptr noundef %125, i32 noundef 1, i32 noundef 2) #8
  br label %127

127:                                              ; preds = %123, %117
  %128 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 9
  store i32 0, ptr %128, align 4
  %129 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 8
  store i32 -1, ptr %129, align 4
  br label %130

130:                                              ; preds = %130, %127
  %131 = phi i32 [ 0, %127 ], [ %134, %130 ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %132 = load i32, ptr %128, align 4
  %133 = icmp ne i32 %132, 0
  %134 = add nuw nsw i32 %131, 1
  %135 = icmp eq i32 %134, 100
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %130

137:                                              ; preds = %130
  tail call void @mutex_unlock(ptr noundef %12) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slot_shutdown(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 17
  %11 = tail call i32 @read_data(ptr noundef %0, i32 noundef %1, ptr noundef %10, i32 noundef 0)
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  store i8 0, ptr %14, align 1
  %18 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 0
  store i8 33, ptr %18, align 1
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef 0) #8
  %23 = icmp eq i32 %22, 0
  store i8 0, ptr %14, align 1
  %24 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 0
  store i8 33, ptr %24, align 1
  br i1 %23, label %25, label %33

25:                                               ; preds = %19, %17
  %26 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 1, i32 noundef 33) #8
  %29 = load i8, ptr %14, align 1
  %30 = icmp eq i8 %29, 6
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  store i8 6, ptr %14, align 1
  %32 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 6
  store i8 31, ptr %32, align 1
  br label %39

33:                                               ; preds = %25, %19
  %34 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 0, i32 noundef 6) #8
  %37 = icmp eq i32 %36, 0
  store i8 6, ptr %14, align 1
  %38 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 6
  store i8 31, ptr %38, align 1
  br i1 %37, label %39, label %43

39:                                               ; preds = %33, %31
  %40 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 1, i32 noundef 31) #8
  br label %43

43:                                               ; preds = %39, %33
  tail call void @msleep(i32 noundef 300) #8
  %44 = load i8, ptr %14, align 1
  %45 = icmp eq i8 %44, 9
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  store i8 9, ptr %14, align 1
  %47 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 9
  %48 = load i8, ptr %47, align 1
  %49 = or i8 %48, 8
  store i8 %49, ptr %47, align 1
  br label %58

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 0, i32 noundef 9) #8
  store i8 9, ptr %14, align 1
  %54 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = or i8 %55, 8
  store i8 %56, ptr %54, align 1
  %57 = icmp eq i32 %53, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50, %46
  %59 = phi i8 [ %49, %46 ], [ %56, %50 ]
  %60 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = zext i8 %59 to i32
  %63 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 1, i32 noundef %62) #8
  %64 = load i8, ptr %14, align 1
  %65 = icmp eq i8 %64, 32
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  store i8 32, ptr %14, align 1
  %67 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 32
  %68 = load i8, ptr %67, align 1
  %69 = or i8 %68, -128
  store i8 %69, ptr %67, align 1
  br label %78

70:                                               ; preds = %58, %50
  %71 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 0, i32 noundef 32) #8
  store i8 32, ptr %14, align 1
  %74 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 32
  %75 = load i8, ptr %74, align 1
  %76 = or i8 %75, -128
  store i8 %76, ptr %74, align 1
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70, %66
  %79 = phi i8 [ %69, %66 ], [ %76, %70 ]
  %80 = phi ptr [ %67, %66 ], [ %74, %70 ]
  %81 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = zext i8 %79 to i32
  %84 = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 1, i32 noundef %83) #8
  %85 = load i8, ptr %80, align 1
  br label %86

86:                                               ; preds = %78, %70
  %87 = phi i8 [ %76, %70 ], [ %85, %78 ]
  %88 = phi ptr [ %74, %70 ], [ %80, %78 ]
  %89 = and i8 %87, 127
  store i8 %89, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %90 = load i8, ptr %14, align 1
  %91 = icmp eq i8 %90, 6
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 0, i32 noundef 6) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  store i8 6, ptr %14, align 1
  %98 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 6
  %99 = load i8, ptr %98, align 1
  %100 = or i8 %99, 7
  store i8 %100, ptr %98, align 1
  br label %114

101:                                              ; preds = %92, %86
  %102 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 @regmap_read(ptr noundef %103, i32 noundef 1, ptr noundef nonnull %3) #8
  %105 = load i32, ptr %3, align 4
  %106 = trunc i32 %105 to i8
  %107 = getelementptr %struct.cxd, ptr %5, i32 0, i32 4, i32 6
  store i8 6, ptr %14, align 1
  %108 = or i8 %106, 7
  store i8 %108, ptr %107, align 1
  %109 = icmp eq i32 %104, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load ptr, ptr %102, align 4
  %112 = zext i8 %108 to i32
  %113 = call i32 @regmap_write(ptr noundef %111, i32 noundef 1, i32 noundef %112) #8
  br label %114

114:                                              ; preds = %110, %101, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %115 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 8
  store i32 -1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.cxd, ptr %5, i32 0, i32 11
  store i32 0, ptr %116, align 4
  call void @mutex_unlock(ptr noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slot_ts_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 9
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  store i8 9, ptr %6, align 1
  %10 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -9
  store i8 %12, ptr %10, align 1
  br label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 9) #8
  store i8 9, ptr %6, align 1
  %17 = getelementptr %struct.cxd, ptr %4, i32 0, i32 4, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -9
  store i8 %19, ptr %17, align 1
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13, %9
  %22 = phi i8 [ %12, %9 ], [ %19, %13 ]
  %23 = getelementptr inbounds %struct.cxd, ptr %4, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = zext i8 %22 to i32
  %26 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 1, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %21, %13
  tail call fastcc void @set_mode(ptr noundef %4, i32 noundef 0)
  tail call fastcc void @cam_mode(ptr noundef %4, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @poll_slot_status(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %7) #8
  tail call fastcc void @campoll(ptr noundef %6)
  %8 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 0, i32 noundef 1) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %11, %3
  store i8 1, ptr %8, align 1
  %17 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 3
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi ptr [ %4, %16 ], [ %33, %23 ]
  %21 = phi i16 [ 1, %16 ], [ %35, %23 ]
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = zext i16 %21 to i32
  %25 = load i32, ptr %17, align 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp ult i32 %25, %24
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %28, i32 %25, i32 %24
  %30 = load ptr, ptr %18, align 4
  %31 = call i32 @regmap_raw_read(ptr noundef %30, i32 noundef 1, ptr noundef %20, i32 noundef %29) #8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr i8, ptr %20, i32 %29
  %34 = trunc i32 %29 to i16
  %35 = sub i16 %21, %34
  br i1 %32, label %19, label %36

36:                                               ; preds = %23, %19, %11
  call void @mutex_unlock(ptr noundef %7) #8
  %37 = getelementptr inbounds %struct.cxd, ptr %6, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %66, label %8

8:                                                ; preds = %2
  switch i32 %1, label %65 [
    i32 0, label %9
    i32 1, label %36
  ]

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 6
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 6) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  store i8 6, ptr %10, align 1
  %19 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, -8
  store i8 %21, ptr %19, align 1
  br label %35

22:                                               ; preds = %13, %9
  %23 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %4) #8
  %26 = load i32, ptr %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  store i8 6, ptr %10, align 1
  %29 = and i8 %27, -8
  store i8 %29, ptr %28, align 1
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load ptr, ptr %23, align 4
  %33 = zext i8 %29 to i32
  %34 = call i32 @regmap_write(ptr noundef %32, i32 noundef 1, i32 noundef %33) #8
  br label %35

35:                                               ; preds = %31, %22, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %65

36:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %37 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 6
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 0, i32 noundef 6) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  store i8 6, ptr %37, align 1
  %46 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, -8
  %49 = or i8 %48, 2
  store i8 %49, ptr %46, align 1
  br label %64

50:                                               ; preds = %40, %36
  %51 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @regmap_read(ptr noundef %52, i32 noundef 1, ptr noundef nonnull %3) #8
  %54 = load i32, ptr %3, align 4
  %55 = trunc i32 %54 to i8
  %56 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 6
  store i8 6, ptr %37, align 1
  %57 = and i8 %55, -8
  %58 = or i8 %57, 2
  store i8 %58, ptr %56, align 1
  %59 = icmp eq i32 %53, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load ptr, ptr %51, align 4
  %62 = zext i8 %58 to i32
  %63 = call i32 @regmap_write(ptr noundef %61, i32 noundef 1, i32 noundef %62) #8
  br label %64

64:                                               ; preds = %60, %50, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %65

65:                                               ; preds = %64, %35, %8
  store i32 %1, ptr %5, align 4
  br label %66

66:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_regm(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %1 to i32
  %9 = icmp eq i8 %7, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %8) #8
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %13, %10 ], [ 0, %4 ]
  %16 = icmp eq i32 %15, 0
  %17 = add i8 %1, -6
  %18 = icmp ult i8 %17, 3
  %19 = and i1 %18, %16
  %20 = icmp ne i8 %3, -1
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %5) #8
  %26 = load i32, ptr %5, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 %8
  store i8 %27, ptr %28, align 1
  br label %29

29:                                               ; preds = %22, %14
  %30 = phi i32 [ %25, %22 ], [ %15, %14 ]
  store i8 %1, ptr %6, align 1
  %31 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 %8
  %32 = load i8, ptr %31, align 1
  %33 = xor i8 %3, -1
  %34 = and i8 %32, %33
  %35 = or i8 %34, %2
  store i8 %35, ptr %31, align 1
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = zext i8 %35 to i32
  %41 = call i32 @regmap_write(ptr noundef %39, i32 noundef 1, i32 noundef %40) #8
  br label %42

42:                                               ; preds = %37, %29
  %43 = phi i32 [ %30, %29 ], [ %41, %37 ]
  %44 = icmp eq i8 %1, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8, ptr %31, align 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %31, align 1
  br label %48

48:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @campoll(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 4
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %143

12:                                               ; preds = %7, %1
  store i8 4, ptr %4, align 1
  %13 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 3
  %14 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi ptr [ %2, %12 ], [ %29, %19 ]
  %17 = phi i16 [ 1, %12 ], [ %31, %19 ]
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = zext i16 %17 to i32
  %21 = load i32, ptr %13, align 4
  %22 = icmp ne i32 %21, 0
  %23 = icmp ult i32 %21, %20
  %24 = select i1 %22, i1 %23, i1 false
  %25 = select i1 %24, i32 %21, i32 %20
  %26 = load ptr, ptr %14, align 4
  %27 = call i32 @regmap_raw_read(ptr noundef %26, i32 noundef 1, ptr noundef %16, i32 noundef %25) #8
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr i8, ptr %16, i32 %25
  %30 = trunc i32 %25 to i16
  %31 = sub i16 %17, %30
  br i1 %28, label %15, label %32

32:                                               ; preds = %19, %15
  %33 = load i8, ptr %2, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %143, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %4, align 1
  %37 = icmp eq i8 %36, 5
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  store i8 5, ptr %4, align 1
  %39 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 5
  store i8 %33, ptr %39, align 1
  br label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @regmap_write(ptr noundef %42, i32 noundef 0, i32 noundef 5) #8
  %44 = icmp eq i32 %43, 0
  store i8 5, ptr %4, align 1
  %45 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 5
  store i8 %33, ptr %45, align 1
  br i1 %44, label %46, label %51

46:                                               ; preds = %40, %38
  %47 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = zext i8 %33 to i32
  %50 = call i32 @regmap_write(ptr noundef %48, i32 noundef 1, i32 noundef %49) #8
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i8, ptr %2, align 1
  %53 = and i8 %52, 64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 10
  store i32 1, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = and i8 %52, 32
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 11
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = and i8 %52, 2
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %143, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %66 = load i8, ptr %4, align 1
  %67 = icmp eq i8 %66, 1
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_write(ptr noundef %70, i32 noundef 0, i32 noundef 1) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %68, %65
  store i8 1, ptr %4, align 1
  %74 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 3
  %75 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  br label %76

76:                                               ; preds = %80, %73
  %77 = phi ptr [ %3, %73 ], [ %90, %80 ]
  %78 = phi i16 [ 1, %73 ], [ %92, %80 ]
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = zext i16 %78 to i32
  %82 = load i32, ptr %74, align 4
  %83 = icmp ne i32 %82, 0
  %84 = icmp ult i32 %82, %81
  %85 = select i1 %83, i1 %84, i1 false
  %86 = select i1 %85, i32 %82, i32 %81
  %87 = load ptr, ptr %75, align 4
  %88 = call i32 @regmap_raw_read(ptr noundef %87, i32 noundef 1, ptr noundef %77, i32 noundef %86) #8
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr i8, ptr %77, i32 %86
  %91 = trunc i32 %86 to i16
  %92 = sub i16 %78, %91
  br i1 %89, label %76, label %93

93:                                               ; preds = %80, %76
  %94 = load i8, ptr %3, align 1
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %93, %68
  %98 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  store i32 1, ptr %98, align 4
  %102 = load i8, ptr %4, align 1
  %103 = icmp eq i8 %102, 3
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  store i8 3, ptr %4, align 1
  %105 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 3
  %106 = load i8, ptr %105, align 1
  %107 = or i8 %106, 8
  store i8 %107, ptr %105, align 1
  br label %116

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @regmap_write(ptr noundef %110, i32 noundef 0, i32 noundef 3) #8
  store i8 3, ptr %4, align 1
  %112 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = or i8 %113, 8
  store i8 %114, ptr %112, align 1
  %115 = icmp eq i32 %111, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %108, %104
  %117 = phi i8 [ %107, %104 ], [ %114, %108 ]
  %118 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = zext i8 %117 to i32
  %121 = call i32 @regmap_write(ptr noundef %119, i32 noundef 1, i32 noundef %120) #8
  br label %132

122:                                              ; preds = %93
  %123 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 12
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %122
  store i32 0, ptr %123, align 4
  %127 = call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 8)
  %128 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.i2c_client, ptr %129, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.5) #10
  %131 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 9
  store i32 0, ptr %131, align 4
  br label %132

132:                                              ; preds = %126, %122, %116, %108, %97
  %133 = load i8, ptr %2, align 1
  %134 = and i8 %133, 8
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 9
  store i32 1, ptr %141, align 4
  store i32 5, ptr %137, align 4
  br label %142

142:                                              ; preds = %140, %136, %132
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %143

143:                                              ; preds = %142, %62, %32, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = zext i8 %1 to i32
  %9 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 0, i32 noundef %8) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %7, %3
  store i8 %1, ptr %4, align 1
  %14 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 1, i32 3
  %15 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %2, %13 ], [ %30, %20 ]
  %18 = phi i16 [ 1, %13 ], [ %32, %20 ]
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = zext i16 %18 to i32
  %22 = load i32, ptr %14, align 4
  %23 = icmp ne i32 %22, 0
  %24 = icmp ult i32 %22, %21
  %25 = select i1 %23, i1 %24, i1 false
  %26 = select i1 %25, i32 %22, i32 %21
  %27 = load ptr, ptr %15, align 4
  %28 = tail call i32 @regmap_raw_read(ptr noundef %27, i32 noundef 1, ptr noundef %17, i32 noundef %26) #8
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr i8, ptr %17, i32 %26
  %31 = trunc i32 %26 to i16
  %32 = sub i16 %18, %31
  br i1 %29, label %16, label %33

33:                                               ; preds = %20, %16, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %1 to i32
  %7 = icmp eq i8 %5, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  store i8 %1, ptr %4, align 1
  %9 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 %6
  store i8 %2, ptr %9, align 1
  br label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef %6) #8
  %14 = icmp eq i32 %13, 0
  store i8 %1, ptr %4, align 1
  %15 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 %6
  store i8 %2, ptr %15, align 1
  br i1 %14, label %16, label %22

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %15, %10 ]
  %18 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = zext i8 %2 to i32
  %21 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 1, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %24 = phi i32 [ %13, %10 ], [ %21, %16 ]
  %25 = icmp eq i8 %1, 32
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8, ptr %23, align 1
  %28 = and i8 %27, 127
  store i8 %28, ptr %23, align 1
  br label %29

29:                                               ; preds = %26, %22
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cam_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  switch i32 %1, label %49 [
    i32 0, label %8
    i32 1, label %36
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  store i8 32, ptr %9, align 1
  %13 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 32
  %14 = load i8, ptr %13, align 1
  %15 = or i8 %14, -128
  store i8 %15, ptr %13, align 1
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef 32) #8
  store i8 32, ptr %9, align 1
  %20 = getelementptr %struct.cxd, ptr %0, i32 0, i32 4, i32 32
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, -128
  store i8 %22, ptr %20, align 1
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16, %12
  %25 = phi i8 [ %15, %12 ], [ %22, %16 ]
  %26 = phi ptr [ %13, %12 ], [ %20, %16 ]
  %27 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = zext i8 %25 to i32
  %30 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 1, i32 noundef %29) #8
  %31 = load i8, ptr %26, align 1
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i8 [ %22, %16 ], [ %31, %24 ]
  %34 = phi ptr [ %20, %16 ], [ %26, %24 ]
  %35 = and i8 %33, 127
  store i8 %35, ptr %34, align 1
  br label %49

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.dvb_ca_en50221, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 11
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cxd, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.6) #10
  %45 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 13, i8 noundef zeroext 0)
  %46 = tail call fastcc i32 @write_reg(ptr noundef %0, i8 noundef zeroext 14, i8 noundef zeroext 1)
  %47 = tail call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext 64, i8 noundef zeroext 64)
  call fastcc void @read_reg(ptr noundef %0, i8 noundef zeroext 18, ptr noundef nonnull %3)
  %48 = call fastcc i32 @write_regm(ptr noundef %0, i8 noundef zeroext 8, i8 noundef zeroext -128, i8 noundef zeroext -128)
  br label %49

49:                                               ; preds = %40, %32, %7
  store i32 %1, ptr %4, align 4
  br label %50

50:                                               ; preds = %49, %36, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
