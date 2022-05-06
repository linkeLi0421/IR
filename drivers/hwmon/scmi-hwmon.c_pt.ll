; ModuleID = '/llk/IR/drivers/hwmon/scmi-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/scmi-hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, %struct.scmi_sensor_intervals_info, i32, [16 x i8], i8, i32, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_sensor_intervals_info = type { i8, i32, ptr, [16 x i32] }
%struct.scmi_range_attrs = type { i64, i64 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.scmi_sensors = type { ptr, [10 x ptr] }

@__initcall__kmod_scmi_hwmon__166_280_scmi_hwmon_drv_init6 = internal global ptr @scmi_hwmon_drv_init, section ".initcall6.init", align 4
@scmi_hwmon_drv = internal global %struct.scmi_driver { ptr @.str.1, ptr @scmi_hwmon_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, align 4
@__exitcall_scmi_hwmon_drv_exit = internal global ptr @scmi_hwmon_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [54 x i8] c"scmi_hwmon.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [55 x i8] c"scmi_hwmon.description=ARM SCMI HWMON interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [41 x i8] c"scmi_hwmon.file=drivers/hwmon/scmi-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [26 x i8] c"scmi_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"scmi_hwmon\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scmi-hwmon\00", align 1
@scmi_id_table = internal constant [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 21, ptr @.str.3 }, %struct.scmi_device_id zeroinitializer], align 4
@sensor_ops = internal unnamed_addr global ptr null, align 4
@scmi_types = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 3, i32 4, i32 5], align 4
@scmi_chip_info = internal global %struct.hwmon_chip_info { ptr @scmi_hwmon_ops, ptr null }, align 4
@hwmon_attributes = internal unnamed_addr constant [10 x i32] [i32 16, i32 2097154, i32 1026, i32 1026, i32 4194816, i32 6, i32 0, i32 0, i32 0, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"scmi_sensors\00", align 1
@scmi_hwmon_ops = internal constant %struct.hwmon_ops { ptr @scmi_hwmon_is_visible, ptr @scmi_hwmon_read, ptr @scmi_hwmon_read_string, ptr null }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"hwmon\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_scmi_hwmon_drv_exit, ptr @__initcall__kmod_scmi_hwmon__166_280_scmi_hwmon_drv_init6, ptr @scmi_hwmon_drv_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_drv_init() #0 section ".init.text" {
  %1 = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_hwmon_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_hwmon_drv_exit() #0 section ".exit.text" {
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_hwmon_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_probe(ptr noundef %0) #2 {
  %2 = alloca [10 x i32], align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %155, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.scmi_handle, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call ptr %10(ptr noundef %0, i8 noundef zeroext 21, ptr noundef nonnull %3) #8
  store ptr %11, ptr @sensor_ops, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %11 to i32
  br label %155

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = call i32 %16(ptr noundef %17) #8
  %19 = trunc i32 %18 to i16
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %155, label %21

21:                                               ; preds = %15
  %22 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %155, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 4
  store ptr %25, ptr %22, align 4
  %26 = and i32 %18, 65535
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @sensor_ops, align 4
  %30 = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr %31(ptr noundef %25, i32 noundef 0) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %155, label %34

34:                                               ; preds = %53, %28
  %35 = phi ptr [ %58, %53 ], [ %32, %28 ]
  %36 = phi i32 [ %51, %53 ], [ 0, %28 ]
  %37 = phi i32 [ %50, %53 ], [ 0, %28 ]
  %38 = getelementptr inbounds %struct.scmi_sensor_info, ptr %35, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %49 [
    i32 2, label %40
    i32 5, label %40
    i32 6, label %40
    i32 7, label %40
    i32 8, label %40
  ]

40:                                               ; preds = %34, %34, %34, %34, %34
  %41 = getelementptr [9 x i32], ptr @scmi_types, i32 0, i32 %39
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [10 x i32], ptr %2, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = add i32 %37, %46
  %48 = add i32 %44, 1
  store i32 %48, ptr %43, align 4
  br label %49

49:                                               ; preds = %40, %34
  %50 = phi i32 [ %37, %34 ], [ %47, %40 ]
  %51 = add nuw nsw i32 %36, 1
  %52 = icmp eq i32 %51, %26
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %3, align 4
  %55 = load ptr, ptr @sensor_ops, align 4
  %56 = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call ptr %57(ptr noundef %54, i32 noundef %51) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %155, label %34

60:                                               ; preds = %49
  %61 = getelementptr inbounds [10 x i32], ptr %2, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %2, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %2, align 4
  %67 = add i32 %50, 1
  br label %68

68:                                               ; preds = %64, %60, %24
  %69 = phi i32 [ %67, %64 ], [ %50, %60 ], [ 0, %24 ]
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 8) #8
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %155, label %72, !prof !9

72:                                               ; preds = %68
  %73 = extractvalue { i32, i1 } %70, 0
  %74 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %73, i32 noundef 3520) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %155, label %76

76:                                               ; preds = %72
  %77 = shl nuw nsw i32 %69, 2
  %78 = add nuw i32 %77, 4
  %79 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %78, i32 noundef 3520) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %155, label %81

81:                                               ; preds = %76
  store ptr %79, ptr getelementptr inbounds (%struct.hwmon_chip_info, ptr @scmi_chip_info, i32 0, i32 1), align 4
  br label %83

82:                                               ; preds = %122
  br i1 %27, label %150, label %127

83:                                               ; preds = %122, %81
  %84 = phi ptr [ %79, %81 ], [ %124, %122 ]
  %85 = phi ptr [ %74, %81 ], [ %123, %122 ]
  %86 = phi i32 [ 0, %81 ], [ %125, %122 ]
  %87 = getelementptr [10 x i32], ptr %2, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %83
  %91 = getelementptr [10 x i32], ptr @hwmon_attributes, i32 0, i32 %86
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %88, 1
  %94 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #8
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %109, label %96, !prof !9

96:                                               ; preds = %90
  %97 = extractvalue { i32, i1 } %94, 0
  %98 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %97, i32 noundef 3520) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  store i32 %86, ptr %85, align 4
  %101 = getelementptr inbounds %struct.hwmon_channel_info, ptr %85, i32 0, i32 1
  store ptr %98, ptr %101, align 4
  %102 = icmp sgt i32 %88, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %103, %100
  %104 = phi ptr [ %107, %103 ], [ %98, %100 ]
  %105 = phi i32 [ %106, %103 ], [ 0, %100 ]
  store i32 %92, ptr %104, align 4
  %106 = add nuw nsw i32 %105, 1
  %107 = getelementptr i32, ptr %104, i32 1
  %108 = icmp eq i32 %106, %88
  br i1 %108, label %109, label %103

109:                                              ; preds = %103, %100, %96, %90
  store ptr %85, ptr %84, align 4
  %110 = load i32, ptr %87, align 4
  %111 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 4) #8
  %112 = extractvalue { i32, i1 } %111, 1
  br i1 %112, label %113, label %115, !prof !9

113:                                              ; preds = %109
  %114 = getelementptr %struct.scmi_sensors, ptr %22, i32 0, i32 1, i32 %86
  store ptr null, ptr %114, align 4
  br label %155

115:                                              ; preds = %109
  %116 = getelementptr ptr, ptr %84, i32 1
  %117 = getelementptr %struct.hwmon_channel_info, ptr %85, i32 1
  %118 = extractvalue { i32, i1 } %111, 0
  %119 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %118, i32 noundef 3520) #8
  %120 = getelementptr %struct.scmi_sensors, ptr %22, i32 0, i32 1, i32 %86
  store ptr %119, ptr %120, align 4
  %121 = icmp eq ptr %119, null
  br i1 %121, label %155, label %122

122:                                              ; preds = %115, %83
  %123 = phi ptr [ %117, %115 ], [ %85, %83 ]
  %124 = phi ptr [ %116, %115 ], [ %84, %83 ]
  %125 = add nuw nsw i32 %86, 1
  %126 = icmp eq i32 %125, 10
  br i1 %126, label %82, label %83

127:                                              ; preds = %148, %82
  %128 = phi i32 [ %129, %148 ], [ %26, %82 ]
  %129 = add nsw i32 %128, -1
  %130 = load ptr, ptr @sensor_ops, align 4
  %131 = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %3, align 4
  %134 = call ptr %132(ptr noundef %133, i32 noundef %129) #8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.scmi_sensor_info, ptr %134, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %148 [
    i32 2, label %139
    i32 5, label %139
    i32 6, label %139
    i32 7, label %139
    i32 8, label %139
  ]

139:                                              ; preds = %136, %136, %136, %136, %136
  %140 = getelementptr [9 x i32], ptr @scmi_types, i32 0, i32 %138
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr [10 x i32], ptr %2, i32 0, i32 %141
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -1
  store i32 %144, ptr %142, align 4
  %145 = getelementptr %struct.scmi_sensors, ptr %22, i32 0, i32 1, i32 %141
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr ptr, ptr %146, i32 %144
  store ptr %134, ptr %147, align 4
  br label %148

148:                                              ; preds = %139, %136, %127
  %149 = icmp sgt i32 %128, 1
  br i1 %149, label %127, label %150

150:                                              ; preds = %148, %82
  %151 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %22, ptr noundef nonnull @scmi_chip_info, ptr noundef null) #8
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  %153 = ptrtoint ptr %151 to i32
  %154 = select i1 %152, i32 %153, i32 0
  br label %155

155:                                              ; preds = %150, %115, %113, %76, %72, %68, %53, %28, %21, %15, %13, %1
  %156 = phi i32 [ %14, %13 ], [ %154, %150 ], [ -19, %1 ], [ -5, %15 ], [ -12, %21 ], [ -12, %72 ], [ -12, %76 ], [ -12, %113 ], [ -12, %68 ], [ -22, %28 ], [ -12, %115 ], [ -22, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8
  ret i32 %156
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scmi_hwmon_is_visible(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = getelementptr %struct.scmi_sensors, ptr %0, i32 0, i32 1, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i16 0, i16 292
  ret i16 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #2 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.scmi_sensors, ptr %8, i32 0, i32 1, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 %3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr @sensor_ops, align 4
  %14 = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = load i32, ptr %12, align 8
  %18 = call i32 %15(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %6) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.scmi_sensor_info, ptr %12, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.scmi_sensor_info, ptr %12, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %29 [
    i32 2, label %25
    i32 5, label %25
    i32 6, label %25
    i32 7, label %27
    i32 8, label %27
  ]

25:                                               ; preds = %20, %20, %20
  %26 = add i32 %22, 3
  br label %29

27:                                               ; preds = %20, %20
  %28 = add i32 %22, 6
  br label %29

29:                                               ; preds = %27, %25, %20
  %30 = phi i32 [ %22, %20 ], [ %28, %27 ], [ %26, %25 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, ptr %6, align 8
  %34 = trunc i64 %33 to i32
  br label %57

35:                                               ; preds = %29
  %36 = call i32 @llvm.abs.i32(i32 %30, i1 false) #8
  %37 = icmp sgt i32 %36, 19
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = trunc i32 %36 to i8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %41, %38
  %42 = phi i64 [ %45, %41 ], [ 1, %38 ]
  %43 = phi i8 [ %44, %41 ], [ %39, %38 ]
  %44 = add i8 %43, -1
  %45 = mul i64 %42, 10
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %47, label %41

47:                                               ; preds = %41, %38
  %48 = phi i64 [ 1, %38 ], [ %45, %41 ]
  %49 = icmp sgt i32 %30, 0
  %50 = load i64, ptr %6, align 8
  br i1 %49, label %51, label %54

51:                                               ; preds = %47
  %52 = mul i64 %50, %48
  %53 = trunc i64 %52 to i32
  br label %57

54:                                               ; preds = %47
  %55 = call i64 @div64_u64(i64 noundef %50, i64 noundef %48) #8
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %54, %51, %32
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ], [ %34, %32 ]
  store i32 %58, ptr %4, align 4
  br label %59

59:                                               ; preds = %57, %35, %5
  %60 = phi i32 [ %18, %5 ], [ 0, %57 ], [ -7, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @scmi_hwmon_read_string(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #7 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.scmi_sensors, ptr %7, i32 0, i32 1, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 %3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scmi_sensor_info, ptr %11, i32 0, i32 12
  store ptr %12, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
