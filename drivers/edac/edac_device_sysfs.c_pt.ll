; ModuleID = '/llk/IR/drivers/edac/edac_device_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_device_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ctl_info_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.instance_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_dev_sysfs_block_attribute = type { %struct.attribute, ptr, ptr, ptr, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.edac_device_counter = type { i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.edac_dev_sysfs_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_device_instance = type { ptr, [35 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }
%struct.edac_device_block = type { ptr, [32 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }

@ktype_device_ctrl = internal global %struct.kobj_type { ptr @edac_device_ctrl_master_release, ptr @device_ctl_info_ops, ptr @device_ctrl_attr, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@device_ctl_info_ops = internal constant %struct.sysfs_ops { ptr @edac_dev_ctl_info_show, ptr @edac_dev_ctl_info_store }, align 4
@device_ctrl_attr = internal global [5 x ptr] [ptr @attr_ctl_info_panic_on_ue, ptr @attr_ctl_info_log_ue, ptr @attr_ctl_info_log_ce, ptr @attr_ctl_info_poll_msec, ptr null], align 4
@attr_ctl_info_panic_on_ue = internal global %struct.ctl_info_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @edac_device_ctl_panic_on_ue_show, ptr @edac_device_ctl_panic_on_ue_store }, align 4
@attr_ctl_info_log_ue = internal global %struct.ctl_info_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @edac_device_ctl_log_ue_show, ptr @edac_device_ctl_log_ue_store }, align 4
@attr_ctl_info_log_ce = internal global %struct.ctl_info_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @edac_device_ctl_log_ce_show, ptr @edac_device_ctl_log_ce_store }, align 4
@attr_ctl_info_poll_msec = internal global %struct.ctl_info_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @edac_device_ctl_poll_msec_show, ptr @edac_device_ctl_poll_msec_store }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"panic_on_ue\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"log_ue\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"log_ce\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"poll_msec\00", align 1
@ktype_instance_ctrl = internal global %struct.kobj_type { ptr @edac_device_ctrl_instance_release, ptr @device_instance_ops, ptr @device_instance_attr, ptr null, ptr null, ptr null, ptr null }, align 4
@device_instance_ops = internal constant %struct.sysfs_ops { ptr @edac_dev_instance_show, ptr @edac_dev_instance_store }, align 4
@device_instance_attr = internal global [3 x ptr] [ptr @attr_instance_ce_count, ptr @attr_instance_ue_count, ptr null], align 4
@attr_instance_ce_count = internal global %struct.instance_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @instance_ce_count_show, ptr null }, align 4
@attr_instance_ue_count = internal global %struct.instance_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @instance_ue_count_show, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ce_count\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ue_count\00", align 1
@ktype_block_ctrl = internal global %struct.kobj_type { ptr @edac_device_ctrl_block_release, ptr @device_block_ops, ptr @device_block_attr, ptr null, ptr null, ptr null, ptr null }, align 4
@device_block_ops = internal constant %struct.sysfs_ops { ptr @edac_dev_block_show, ptr @edac_dev_block_store }, align 4
@device_block_attr = internal global [3 x ptr] [ptr @attr_block_ce_count, ptr @attr_block_ue_count, ptr null], align 4
@attr_block_ce_count = internal global %struct.edac_dev_sysfs_block_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @block_ce_count_show, ptr null, ptr null, i32 0 }, align 4
@attr_block_ue_count = internal global %struct.edac_dev_sysfs_block_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @block_ue_count_show, ptr null, ptr null, i32 0 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_device_register_sysfs_main_kobj(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @edac_get_sysfs_subsys() #5
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 9
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 24
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false)
  %5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 1
  store ptr null, ptr %5, align 4
  %6 = tail call zeroext i1 @try_module_get(ptr noundef null) #5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bus_type, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 20
  %11 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %4, ptr noundef nonnull @ktype_device_ctrl, ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %10) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @kobject_uevent(ptr noundef %4, i32 noundef 0) #5
  br label %17

15:                                               ; preds = %7
  tail call void @kobject_put(ptr noundef %4) #5
  %16 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %16) #5
  br label %17

17:                                               ; preds = %15, %13, %1
  %18 = phi i32 [ 0, %13 ], [ %11, %15 ], [ -19, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_unregister_sysfs_main_kobj(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_device_create_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 24
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %13

9:                                                ; preds = %13
  %10 = getelementptr %struct.edac_dev_sysfs_attribute, ptr %14, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %10, %9 ], [ %4, %6 ]
  %15 = tail call i32 @sysfs_create_file_ns(ptr noundef %2, ptr noundef %14, ptr noundef null) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %9, label %165

17:                                               ; preds = %9, %6, %1
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @sysfs_create_link(ptr noundef %2, ptr noundef %19, ptr noundef nonnull @.str.1) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %153

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %165, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 22
  br label %28

28:                                               ; preds = %107, %26
  %29 = phi i32 [ 0, %26 ], [ %109, %107 ]
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr %struct.edac_device_instance, ptr %30, i32 %29
  %32 = getelementptr %struct.edac_device_instance, ptr %30, i32 %29, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %32, i8 0, i32 36, i1 false) #5
  store ptr %0, ptr %31, align 4
  %33 = tail call ptr @kobject_get(ptr noundef %2) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %113, label %35

35:                                               ; preds = %28
  %36 = getelementptr %struct.edac_device_instance, ptr %30, i32 %29, i32 1
  %37 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %32, ptr noundef nonnull @ktype_instance_ctrl, ptr noundef %2, ptr noundef nonnull @.str, ptr noundef %36) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr %struct.edac_device_instance, ptr %30, i32 %29, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %107, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.edac_device_instance, ptr %30, i32 %29, i32 4
  br label %46

45:                                               ; preds = %35
  tail call void @kobject_put(ptr noundef nonnull %33) #5
  br label %113

46:                                               ; preds = %102, %43
  %47 = phi i32 [ 0, %43 ], [ %104, %102 ]
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr %struct.edac_device_block, ptr %48, i32 %47, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %49, i8 0, i32 36, i1 false) #5
  %50 = tail call ptr @kobject_get(ptr noundef %2) #5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %46
  %53 = getelementptr %struct.edac_device_block, ptr %48, i32 %47, i32 1
  %54 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %49, ptr noundef nonnull @ktype_block_ctrl, ptr noundef %32, ptr noundef nonnull @.str, ptr noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @kobject_put(ptr noundef nonnull %50) #5
  br label %76

57:                                               ; preds = %52
  %58 = getelementptr %struct.edac_device_block, ptr %48, i32 %47, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %102, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.edac_device_block, ptr %48, i32 %47, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %70, %61
  %66 = phi ptr [ %72, %70 ], [ %59, %61 ]
  %67 = phi i32 [ %71, %70 ], [ 0, %61 ]
  %68 = tail call i32 @sysfs_create_file_ns(ptr noundef %49, ptr noundef %66, ptr noundef null) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %67, 1
  %72 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %66, i32 1
  %73 = load i32, ptr %62, align 4
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %65, label %102

75:                                               ; preds = %65
  tail call void @kobject_put(ptr noundef %49) #5
  br label %76

76:                                               ; preds = %75, %56, %46
  %77 = phi i32 [ -19, %56 ], [ %68, %75 ], [ -19, %46 ]
  %78 = icmp sgt i32 %47, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %98, %76
  %80 = phi i32 [ %100, %98 ], [ 0, %76 ]
  %81 = load ptr, ptr %44, align 4
  %82 = getelementptr %struct.edac_device_block, ptr %81, i32 %80, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %98, label %85

85:                                               ; preds = %79
  %86 = getelementptr %struct.edac_device_block, ptr %81, i32 %80, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = getelementptr %struct.edac_device_block, ptr %81, i32 %80, i32 5
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi i32 [ 0, %89 ], [ %94, %91 ]
  %93 = phi ptr [ %83, %89 ], [ %95, %91 ]
  tail call void @sysfs_remove_file_ns(ptr noundef %90, ptr noundef %93, ptr noundef null) #5
  %94 = add nuw nsw i32 %92, 1
  %95 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %93, i32 1
  %96 = load i32, ptr %86, align 4
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %91, label %98

98:                                               ; preds = %91, %85, %79
  %99 = getelementptr %struct.edac_device_block, ptr %81, i32 %80, i32 5
  tail call void @kobject_put(ptr noundef %99) #5
  %100 = add nuw nsw i32 %80, 1
  %101 = icmp eq i32 %100, %47
  br i1 %101, label %112, label %79

102:                                              ; preds = %70, %61, %57
  %103 = tail call i32 @kobject_uevent(ptr noundef %49, i32 noundef 0) #5
  %104 = add nuw i32 %47, 1
  %105 = load i32, ptr %40, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %46, label %107

107:                                              ; preds = %102, %39
  %108 = tail call i32 @kobject_uevent(ptr noundef %32, i32 noundef 0) #5
  %109 = add nuw i32 %29, 1
  %110 = load i32, ptr %23, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %28, label %165

112:                                              ; preds = %98, %76
  tail call void @kobject_put(ptr noundef %32) #5
  br label %113

113:                                              ; preds = %112, %45, %28
  %114 = phi i32 [ %37, %45 ], [ %77, %112 ], [ -19, %28 ]
  %115 = icmp sgt i32 %29, 0
  br i1 %115, label %116, label %152

116:                                              ; preds = %148, %113
  %117 = phi i32 [ %150, %148 ], [ 0, %113 ]
  %118 = load ptr, ptr %27, align 4
  %119 = getelementptr %struct.edac_device_instance, ptr %118, i32 %117, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %148, label %122

122:                                              ; preds = %116
  %123 = getelementptr %struct.edac_device_instance, ptr %118, i32 %117, i32 4
  br label %124

124:                                              ; preds = %143, %122
  %125 = phi i32 [ 0, %122 ], [ %145, %143 ]
  %126 = load ptr, ptr %123, align 4
  %127 = getelementptr %struct.edac_device_block, ptr %126, i32 %125, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %143, label %130

130:                                              ; preds = %124
  %131 = getelementptr %struct.edac_device_block, ptr %126, i32 %125, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = getelementptr %struct.edac_device_block, ptr %126, i32 %125, i32 5
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i32 [ 0, %134 ], [ %139, %136 ]
  %138 = phi ptr [ %128, %134 ], [ %140, %136 ]
  tail call void @sysfs_remove_file_ns(ptr noundef %135, ptr noundef %138, ptr noundef null) #5
  %139 = add nuw nsw i32 %137, 1
  %140 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %138, i32 1
  %141 = load i32, ptr %131, align 4
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %136, label %143

143:                                              ; preds = %136, %130, %124
  %144 = getelementptr %struct.edac_device_block, ptr %126, i32 %125, i32 5
  tail call void @kobject_put(ptr noundef %144) #5
  %145 = add nuw i32 %125, 1
  %146 = load i32, ptr %119, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %124, label %148

148:                                              ; preds = %143, %116
  %149 = getelementptr %struct.edac_device_instance, ptr %118, i32 %117, i32 5
  tail call void @kobject_put(ptr noundef %149) #5
  %150 = add nuw nsw i32 %117, 1
  %151 = icmp eq i32 %150, %29
  br i1 %151, label %152, label %116

152:                                              ; preds = %148, %113
  tail call void @sysfs_remove_link(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %153

153:                                              ; preds = %152, %17
  %154 = phi i32 [ %20, %17 ], [ %114, %152 ]
  %155 = load ptr, ptr %3, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %155, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %160, %157
  %161 = phi ptr [ %162, %160 ], [ %155, %157 ]
  tail call void @sysfs_remove_file_ns(ptr noundef %2, ptr noundef %161, ptr noundef null) #5
  %162 = getelementptr %struct.edac_dev_sysfs_attribute, ptr %161, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %160

165:                                              ; preds = %160, %157, %153, %107, %22, %13
  %166 = phi i32 [ %154, %153 ], [ %154, %157 ], [ 0, %22 ], [ %154, %160 ], [ 0, %107 ], [ %15, %13 ]
  ret i32 %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_remove_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 24
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %3, %8 ], [ %12, %10 ]
  tail call void @sysfs_remove_file_ns(ptr noundef %9, ptr noundef %11, ptr noundef null) #5
  %12 = getelementptr %struct.edac_dev_sysfs_attribute, ptr %11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %5, %1
  %16 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 24
  tail call void @sysfs_remove_link(ptr noundef %16, ptr noundef nonnull @.str.1) #5
  %17 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %59, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 22
  br label %22

22:                                               ; preds = %54, %20
  %23 = phi i32 [ 0, %20 ], [ %56, %54 ]
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr %struct.edac_device_instance, ptr %24, i32 %23, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.edac_device_instance, ptr %24, i32 %23, i32 4
  br label %30

30:                                               ; preds = %49, %28
  %31 = phi i32 [ 0, %28 ], [ %51, %49 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.edac_device_block, ptr %32, i32 %31, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %30
  %37 = getelementptr %struct.edac_device_block, ptr %32, i32 %31, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr %struct.edac_device_block, ptr %32, i32 %31, i32 5
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ 0, %40 ], [ %45, %42 ]
  %44 = phi ptr [ %34, %40 ], [ %46, %42 ]
  tail call void @sysfs_remove_file_ns(ptr noundef %41, ptr noundef %44, ptr noundef null) #5
  %45 = add nuw nsw i32 %43, 1
  %46 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %44, i32 1
  %47 = load i32, ptr %37, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %42, label %49

49:                                               ; preds = %42, %36, %30
  %50 = getelementptr %struct.edac_device_block, ptr %32, i32 %31, i32 5
  tail call void @kobject_put(ptr noundef %50) #5
  %51 = add nuw i32 %31, 1
  %52 = load i32, ptr %25, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %30, label %54

54:                                               ; preds = %49, %22
  %55 = getelementptr %struct.edac_device_instance, ptr %24, i32 %23, i32 5
  tail call void @kobject_put(ptr noundef %55) #5
  %56 = add nuw i32 %23, 1
  %57 = load i32, ptr %17, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %22, label %59

59:                                               ; preds = %54, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_device_ctrl_master_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -184
  %3 = getelementptr i8, ptr %0, i32 -176
  %4 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %4) #5
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_ctl_info_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ctl_info_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -184
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #5
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_ctl_info_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ctl_info_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -184
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #5
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_panic_on_ue_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_panic_on_ue_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef returned %2) #0 {
  %4 = tail call i32 @simple_strtoul(ptr noundef %1, ptr noundef null, i32 noundef 0) #5
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ue_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ue_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef returned %2) #0 {
  %4 = tail call i32 @simple_strtoul(ptr noundef %1, ptr noundef null, i32 noundef 0) #5
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ce_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_log_ce_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef returned %2) #0 {
  %4 = tail call i32 @simple_strtoul(ptr noundef %1, ptr noundef null, i32 noundef 0) #5
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 4
  store i32 %6, ptr %7, align 4
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_poll_msec_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_device_ctl_poll_msec_store(ptr noundef %0, ptr noundef %1, i32 noundef returned %2) #0 {
  %4 = tail call i32 @simple_strtoul(ptr noundef %1, ptr noundef null, i32 noundef 0) #5
  tail call void @edac_device_reset_delay_period(ptr noundef %0, i32 noundef %4) #5
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_reset_delay_period(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_device_ctrl_instance_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %3, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_instance_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.instance_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -56
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #5
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_instance_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.instance_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -56
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #5
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_instance, ptr %0, i32 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_ue_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.edac_device_instance, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_device_ctrl_block_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 24
  tail call void @kobject_put(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_block_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -5, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_dev_block_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #5
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -5, %4 ]
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @block_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @block_ue_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
