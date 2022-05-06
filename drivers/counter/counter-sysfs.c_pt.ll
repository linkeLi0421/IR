; ModuleID = '/llk/IR/drivers/counter/counter-sysfs.c_pt.bc'
source_filename = "../drivers/counter/counter-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.counter_comp = type { i32, ptr, ptr, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { ptr }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.63, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.63 = type { %union.anon.64, [0 x %struct.counter_event] }
%union.anon.64 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.counter_attribute_group = type { ptr, %struct.list_head, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_attribute = type { %struct.device_attribute, %struct.list_head, %struct.counter_comp, i32, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.counter_available = type { %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.anon.70 = type { %union.anon.71, [0 x %struct.counter_event] }
%union.anon.71 = type { %struct.__kfifo }

@counter_num_signals_comp = internal global %struct.counter_comp { i32 0, ptr @.str.31, ptr null, %union.anon.61 { ptr @counter_num_signals_read }, %union.anon.62 zeroinitializer }, align 4
@counter_num_counts_comp = internal global %struct.counter_comp { i32 0, ptr @.str.32, ptr null, %union.anon.61 { ptr @counter_num_counts_read }, %union.anon.62 zeroinitializer }, align 4
@counter_events_queue_size_comp = internal global %struct.counter_comp { i32 1, ptr @.str.33, ptr null, %union.anon.61 { ptr @counter_events_queue_size_read }, %union.anon.62 { ptr @counter_events_queue_size_write } }, align 4
@.str = private unnamed_addr constant [10 x i8] c"signal%zu\00", align 1
@counter_signal_comp = internal unnamed_addr constant %struct.counter_comp { i32 3, ptr @.str.1, ptr null, %union.anon.61 zeroinitializer, %union.anon.62 zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"count%zu\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"signal%zu_action\00", align 1
@counter_count_comp = internal unnamed_addr constant %struct.counter_comp { i32 1, ptr @.str.4, ptr null, %union.anon.61 zeroinitializer, %union.anon.62 zeroinitializer }, align 4
@counter_function_comp = internal unnamed_addr constant %struct.counter_comp { i32 4, ptr @.str.5, ptr null, %union.anon.61 zeroinitializer, %union.anon.62 zeroinitializer }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@counter_function_str = internal unnamed_addr constant [8 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@counter_signal_value_str = internal unnamed_addr constant [2 x ptr] [ptr @.str.17, ptr @.str.18], align 4
@counter_synapse_action_str = internal unnamed_addr constant [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@counter_count_direction_str = internal unnamed_addr constant [2 x ptr] [ptr @.str.23, ptr @.str.24], align 4
@counter_count_mode_str = internal unnamed_addr constant [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"increase\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"decrease\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pulse-direction\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"quadrature x1 a\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"quadrature x1 b\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"quadrature x2 a\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"quadrature x2 b\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"quadrature x4\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"rising edge\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"falling edge\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"both edges\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"range limit\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"non-recycle\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"modulo-n\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"%s_available\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"num_signals\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"num_counts\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"events_queue_size\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%s_component_id\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @counter_sysfs_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.counter_comp, align 4
  %3 = alloca %struct.counter_comp, align 4
  %4 = alloca %struct.counter_comp, align 4
  %5 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  %6 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, %7
  %11 = add i32 %10, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 16) #7
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %363, label %14, !prof !8

14:                                               ; preds = %1
  %15 = extractvalue { i32, i1 } %12, 0
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %15, i32 noundef 3520) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %363, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %11, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %24, %20 ], [ 0, %18 ]
  %22 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %21, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %21, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = add nuw i32 %21, 1
  %25 = icmp eq i32 %21, %10
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %18
  %27 = load i32, ptr %6, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 2
  %32 = getelementptr inbounds %struct.counter_comp, ptr %4, i32 0, i32 3
  br label %33

33:                                               ; preds = %96, %29
  %34 = phi i32 [ 0, %29 ], [ %97, %96 ]
  %35 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %34) #7
  %36 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %34
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %363, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr %struct.counter_signal, ptr %39, i32 %34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @counter_signal_comp, i32 20, i1 false) #7
  %41 = load ptr, ptr %31, align 8
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %32, align 4
  %43 = call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %36, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %40) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %94, label %45

45:                                               ; preds = %38
  %46 = getelementptr %struct.counter_signal, ptr %39, i32 %34, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %94, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.counter_attribute, ptr %48, i32 0, i32 2, i32 1
  store ptr %47, ptr %51, align 4
  store ptr @.str.6, ptr %48, align 4
  %52 = getelementptr inbounds %struct.attribute, ptr %48, i32 0, i32 1
  store i16 292, ptr %52, align 4
  %53 = getelementptr inbounds %struct.device_attribute, ptr %48, i32 0, i32 1
  store ptr @counter_comp_name_show, ptr %53, align 4
  %54 = getelementptr inbounds %struct.counter_attribute, ptr %48, i32 0, i32 1
  %55 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %34, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %56, ptr %54, align 4
  %58 = getelementptr inbounds %struct.counter_attribute, ptr %48, i32 0, i32 1, i32 1
  store ptr %55, ptr %58, align 4
  store volatile ptr %54, ptr %55, align 4
  %59 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %34, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = getelementptr %struct.counter_signal, ptr %39, i32 %34, i32 2
  %63 = getelementptr %struct.counter_signal, ptr %39, i32 %34, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %96, label %66

66:                                               ; preds = %80, %50
  %67 = phi i32 [ %91, %80 ], [ 0, %50 ]
  %68 = load ptr, ptr %62, align 4
  %69 = getelementptr %struct.counter_comp, ptr %68, i32 %67
  %70 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %36, ptr noundef %69, i32 noundef 1, ptr noundef %40) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %66
  %73 = getelementptr %struct.counter_comp, ptr %68, i32 %67, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %72
  %78 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %74) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = inttoptr i32 %67 to ptr
  %82 = getelementptr inbounds %struct.counter_attribute, ptr %75, i32 0, i32 2, i32 2
  store ptr %81, ptr %82, align 4
  store ptr %78, ptr %75, align 4
  %83 = getelementptr inbounds %struct.attribute, ptr %75, i32 0, i32 1
  store i16 292, ptr %83, align 4
  %84 = getelementptr inbounds %struct.device_attribute, ptr %75, i32 0, i32 1
  store ptr @counter_comp_id_show, ptr %84, align 4
  %85 = getelementptr inbounds %struct.counter_attribute, ptr %75, i32 0, i32 1
  %86 = load ptr, ptr %55, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store ptr %86, ptr %85, align 4
  %88 = getelementptr inbounds %struct.counter_attribute, ptr %75, i32 0, i32 1, i32 1
  store ptr %55, ptr %88, align 4
  store volatile ptr %85, ptr %55, align 4
  %89 = load i32, ptr %59, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %59, align 4
  %91 = add nuw i32 %67, 1
  %92 = load i32, ptr %63, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %66, label %96

94:                                               ; preds = %77, %72, %66, %45, %38
  %95 = phi i32 [ %70, %66 ], [ -12, %72 ], [ -12, %77 ], [ %43, %38 ], [ -12, %45 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %363

96:                                               ; preds = %80, %50
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  %97 = add nuw i32 %34, 1
  %98 = load i32, ptr %6, align 8
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %33, label %100

100:                                              ; preds = %96, %26
  %101 = phi i32 [ 0, %26 ], [ %98, %96 ]
  %102 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %101
  %103 = load i32, ptr %8, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %245, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 5
  %107 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 3
  %108 = getelementptr inbounds %struct.counter_comp, ptr %3, i32 0, i32 1
  %109 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 2
  %110 = getelementptr inbounds %struct.counter_comp, ptr %3, i32 0, i32 3
  %111 = getelementptr inbounds %struct.counter_comp, ptr %3, i32 0, i32 4
  %112 = getelementptr inbounds %struct.counter_comp, ptr %3, i32 0, i32 2
  %113 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 3
  %114 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 4
  br label %115

115:                                              ; preds = %241, %105
  %116 = phi i32 [ 0, %105 ], [ %242, %241 ]
  %117 = load ptr, ptr %106, align 4
  %118 = getelementptr %struct.counter_count, ptr %117, i32 %116
  %119 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %116) #7
  %120 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %116
  store ptr %119, ptr %120, align 4
  %121 = icmp eq ptr %119, null
  br i1 %121, label %363, label %122

122:                                              ; preds = %115
  %123 = getelementptr %struct.counter_count, ptr %117, i32 %116, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %174, label %126

126:                                              ; preds = %122
  %127 = getelementptr %struct.counter_count, ptr %117, i32 %116, i32 4
  %128 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %116, i32 1
  %129 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %116, i32 2
  br label %130

130:                                              ; preds = %160, %126
  %131 = phi i32 [ 0, %126 ], [ %171, %160 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  %132 = load ptr, ptr %127, align 4
  %133 = getelementptr %struct.counter_synapse, ptr %132, i32 %131, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %107, align 4
  %136 = ptrtoint ptr %134 to i32
  %137 = ptrtoint ptr %135 to i32
  %138 = sub i32 %136, %137
  %139 = ashr exact i32 %138, 4
  %140 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %139) #7
  store ptr %140, ptr %108, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %157, label %142

142:                                              ; preds = %130
  %143 = getelementptr %struct.counter_synapse, ptr %132, i32 %131
  store i32 5, ptr %3, align 4
  %144 = load ptr, ptr %109, align 8
  %145 = getelementptr inbounds %struct.counter_ops, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  store ptr %146, ptr %110, align 4
  %147 = getelementptr inbounds %struct.counter_ops, ptr %144, i32 0, i32 6
  %148 = load ptr, ptr %147, align 4
  store ptr %148, ptr %111, align 4
  store ptr %143, ptr %112, align 4
  %149 = call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %120, ptr noundef nonnull %3, i32 noundef 2, ptr noundef %118) #7
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %142
  %152 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef nonnull %140) #7
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %160

157:                                              ; preds = %142, %130
  %158 = phi i32 [ %149, %142 ], [ -12, %130 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  br label %363

159:                                              ; preds = %154, %151
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  br label %363

160:                                              ; preds = %154
  %161 = inttoptr i32 %131 to ptr
  %162 = getelementptr inbounds %struct.counter_attribute, ptr %152, i32 0, i32 2, i32 2
  store ptr %161, ptr %162, align 4
  store ptr %155, ptr %152, align 4
  %163 = getelementptr inbounds %struct.attribute, ptr %152, i32 0, i32 1
  store i16 292, ptr %163, align 4
  %164 = getelementptr inbounds %struct.device_attribute, ptr %152, i32 0, i32 1
  store ptr @counter_comp_id_show, ptr %164, align 4
  %165 = getelementptr inbounds %struct.counter_attribute, ptr %152, i32 0, i32 1
  %166 = load ptr, ptr %128, align 4
  %167 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  store ptr %165, ptr %167, align 4
  store ptr %166, ptr %165, align 4
  %168 = getelementptr inbounds %struct.counter_attribute, ptr %152, i32 0, i32 1, i32 1
  store ptr %128, ptr %168, align 4
  store volatile ptr %165, ptr %128, align 4
  %169 = load i32, ptr %129, align 4
  %170 = add i32 %169, 1
  store i32 %170, ptr %129, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  %171 = add nuw i32 %131, 1
  %172 = load i32, ptr %123, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %130, label %174

174:                                              ; preds = %160, %122
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @counter_count_comp, i32 12, i1 false) #7
  %175 = load ptr, ptr %109, align 8
  %176 = getelementptr inbounds %struct.counter_ops, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  store ptr %177, ptr %113, align 4
  %178 = getelementptr inbounds %struct.counter_ops, ptr %175, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  store ptr %179, ptr %114, align 4
  %180 = call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %120, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %118) #7
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %239, label %182

182:                                              ; preds = %174
  %183 = getelementptr %struct.counter_count, ptr %117, i32 %116, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %186 = icmp eq ptr %185, null
  br i1 %186, label %239, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.counter_attribute, ptr %185, i32 0, i32 2, i32 1
  store ptr %184, ptr %188, align 4
  store ptr @.str.6, ptr %185, align 4
  %189 = getelementptr inbounds %struct.attribute, ptr %185, i32 0, i32 1
  store i16 292, ptr %189, align 4
  %190 = getelementptr inbounds %struct.device_attribute, ptr %185, i32 0, i32 1
  store ptr @counter_comp_name_show, ptr %190, align 4
  %191 = getelementptr inbounds %struct.counter_attribute, ptr %185, i32 0, i32 1
  %192 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %116, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  store ptr %191, ptr %194, align 4
  store ptr %193, ptr %191, align 4
  %195 = getelementptr inbounds %struct.counter_attribute, ptr %185, i32 0, i32 1, i32 1
  store ptr %192, ptr %195, align 4
  store volatile ptr %191, ptr %192, align 4
  %196 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %116, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @counter_function_comp, i32 12, i1 false) #7
  %199 = load ptr, ptr %109, align 8
  %200 = getelementptr inbounds %struct.counter_ops, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  store ptr %201, ptr %113, align 4
  %202 = getelementptr inbounds %struct.counter_ops, ptr %199, i32 0, i32 4
  %203 = load ptr, ptr %202, align 4
  store ptr %203, ptr %114, align 4
  %204 = call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %120, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %118) #7
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %239, label %206

206:                                              ; preds = %187
  %207 = getelementptr %struct.counter_count, ptr %117, i32 %116, i32 6
  %208 = getelementptr %struct.counter_count, ptr %117, i32 %116, i32 7
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %241, label %211

211:                                              ; preds = %225, %206
  %212 = phi i32 [ %236, %225 ], [ 0, %206 ]
  %213 = load ptr, ptr %207, align 4
  %214 = getelementptr %struct.counter_comp, ptr %213, i32 %212
  %215 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %120, ptr noundef %214, i32 noundef 2, ptr noundef %118) #7
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %239, label %217

217:                                              ; preds = %211
  %218 = getelementptr %struct.counter_comp, ptr %213, i32 %212, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %221 = icmp eq ptr %220, null
  br i1 %221, label %239, label %222

222:                                              ; preds = %217
  %223 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %219) #7
  %224 = icmp eq ptr %223, null
  br i1 %224, label %239, label %225

225:                                              ; preds = %222
  %226 = inttoptr i32 %212 to ptr
  %227 = getelementptr inbounds %struct.counter_attribute, ptr %220, i32 0, i32 2, i32 2
  store ptr %226, ptr %227, align 4
  store ptr %223, ptr %220, align 4
  %228 = getelementptr inbounds %struct.attribute, ptr %220, i32 0, i32 1
  store i16 292, ptr %228, align 4
  %229 = getelementptr inbounds %struct.device_attribute, ptr %220, i32 0, i32 1
  store ptr @counter_comp_id_show, ptr %229, align 4
  %230 = getelementptr inbounds %struct.counter_attribute, ptr %220, i32 0, i32 1
  %231 = load ptr, ptr %192, align 4
  %232 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  store ptr %230, ptr %232, align 4
  store ptr %231, ptr %230, align 4
  %233 = getelementptr inbounds %struct.counter_attribute, ptr %220, i32 0, i32 1, i32 1
  store ptr %192, ptr %233, align 4
  store volatile ptr %230, ptr %192, align 4
  %234 = load i32, ptr %196, align 4
  %235 = add i32 %234, 1
  store i32 %235, ptr %196, align 4
  %236 = add nuw i32 %212, 1
  %237 = load i32, ptr %208, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %211, label %241

239:                                              ; preds = %222, %217, %211, %187, %182, %174
  %240 = phi i32 [ %215, %211 ], [ -12, %217 ], [ -12, %222 ], [ %180, %174 ], [ %204, %187 ], [ -12, %182 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %363

241:                                              ; preds = %225, %206
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  %242 = add nuw i32 %116, 1
  %243 = load i32, ptr %8, align 8
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %115, label %245

245:                                              ; preds = %241, %100
  %246 = phi i32 [ 0, %100 ], [ %243, %241 ]
  %247 = getelementptr %struct.counter_attribute_group, ptr %102, i32 %246
  %248 = load ptr, ptr %0, align 8
  %249 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %250 = icmp eq ptr %249, null
  br i1 %250, label %363, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.counter_attribute, ptr %249, i32 0, i32 2, i32 1
  store ptr %248, ptr %252, align 4
  store ptr @.str.6, ptr %249, align 4
  %253 = getelementptr inbounds %struct.attribute, ptr %249, i32 0, i32 1
  store i16 292, ptr %253, align 4
  %254 = getelementptr inbounds %struct.device_attribute, ptr %249, i32 0, i32 1
  store ptr @counter_comp_name_show, ptr %254, align 4
  %255 = getelementptr inbounds %struct.counter_attribute, ptr %249, i32 0, i32 1
  %256 = getelementptr inbounds %struct.counter_attribute_group, ptr %247, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.list_head, ptr %257, i32 0, i32 1
  store ptr %255, ptr %258, align 4
  store ptr %257, ptr %255, align 4
  %259 = getelementptr inbounds %struct.counter_attribute, ptr %249, i32 0, i32 1, i32 1
  store ptr %256, ptr %259, align 4
  store volatile ptr %255, ptr %256, align 4
  %260 = getelementptr inbounds %struct.counter_attribute_group, ptr %247, i32 0, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %260, align 4
  %263 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %247, ptr noundef nonnull @counter_num_signals_comp, i32 noundef 0, ptr noundef null) #7
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %363, label %265

265:                                              ; preds = %251
  %266 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %247, ptr noundef nonnull @counter_num_counts_comp, i32 noundef 0, ptr noundef null) #7
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %363, label %268

268:                                              ; preds = %265
  %269 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %247, ptr noundef nonnull @counter_events_queue_size_comp, i32 noundef 0, ptr noundef null) #7
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %363, label %271

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 7
  %273 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 8
  %274 = load i32, ptr %273, align 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %304, label %276

276:                                              ; preds = %290, %271
  %277 = phi i32 [ %301, %290 ], [ 0, %271 ]
  %278 = load ptr, ptr %272, align 4
  %279 = getelementptr %struct.counter_comp, ptr %278, i32 %277
  %280 = tail call fastcc i32 @counter_attr_create(ptr noundef %5, ptr noundef %247, ptr noundef %279, i32 noundef 0, ptr noundef null) #7
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %363, label %282

282:                                              ; preds = %276
  %283 = getelementptr %struct.counter_comp, ptr %278, i32 %277, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 52, i32 noundef 3520) #7
  %286 = icmp eq ptr %285, null
  br i1 %286, label %363, label %287

287:                                              ; preds = %282
  %288 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %5, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %284) #7
  %289 = icmp eq ptr %288, null
  br i1 %289, label %363, label %290

290:                                              ; preds = %287
  %291 = inttoptr i32 %277 to ptr
  %292 = getelementptr inbounds %struct.counter_attribute, ptr %285, i32 0, i32 2, i32 2
  store ptr %291, ptr %292, align 4
  store ptr %288, ptr %285, align 4
  %293 = getelementptr inbounds %struct.attribute, ptr %285, i32 0, i32 1
  store i16 292, ptr %293, align 4
  %294 = getelementptr inbounds %struct.device_attribute, ptr %285, i32 0, i32 1
  store ptr @counter_comp_id_show, ptr %294, align 4
  %295 = getelementptr inbounds %struct.counter_attribute, ptr %285, i32 0, i32 1
  %296 = load ptr, ptr %256, align 4
  %297 = getelementptr inbounds %struct.list_head, ptr %296, i32 0, i32 1
  store ptr %295, ptr %297, align 4
  store ptr %296, ptr %295, align 4
  %298 = getelementptr inbounds %struct.counter_attribute, ptr %285, i32 0, i32 1, i32 1
  store ptr %256, ptr %298, align 4
  store volatile ptr %295, ptr %256, align 4
  %299 = load i32, ptr %260, align 4
  %300 = add i32 %299, 1
  store i32 %300, ptr %260, align 4
  %301 = add nuw i32 %277, 1
  %302 = load i32, ptr %273, align 8
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %276, label %304

304:                                              ; preds = %290, %271
  %305 = add i32 %10, 2
  %306 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %305, i32 4) #7
  %307 = extractvalue { i32, i1 } %306, 1
  br i1 %307, label %308, label %310, !prof !8

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9, i32 32
  store ptr null, ptr %309, align 8
  br label %363

310:                                              ; preds = %304
  %311 = extractvalue { i32, i1 } %306, 0
  %312 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %311, i32 noundef 3520) #7
  %313 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9, i32 32
  store ptr %312, ptr %313, align 8
  %314 = icmp eq ptr %312, null
  br i1 %314, label %363, label %315

315:                                              ; preds = %310
  %316 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 20) #7
  %317 = extractvalue { i32, i1 } %316, 1
  br i1 %317, label %363, label %318, !prof !8

318:                                              ; preds = %315
  %319 = extractvalue { i32, i1 } %316, 0
  %320 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %319, i32 noundef 3520) #7
  %321 = icmp eq ptr %320, null
  %322 = select i1 %321, i1 true, i1 %19
  %323 = select i1 %321, i32 -12, i32 0
  br i1 %322, label %363, label %324

324:                                              ; preds = %358, %318
  %325 = phi i32 [ %361, %358 ], [ 0, %318 ]
  %326 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %325
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr %struct.attribute_group, ptr %320, i32 %325
  store ptr %327, ptr %328, align 4
  %329 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %325, i32 2
  %330 = load i32, ptr %329, align 4
  %331 = add i32 %330, 1
  %332 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %331, i32 4) #7
  %333 = extractvalue { i32, i1 } %332, 1
  br i1 %333, label %334, label %336, !prof !8

334:                                              ; preds = %324
  %335 = getelementptr %struct.attribute_group, ptr %320, i32 %325, i32 3
  store ptr null, ptr %335, align 4
  br label %363

336:                                              ; preds = %324
  %337 = extractvalue { i32, i1 } %332, 0
  %338 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %337, i32 noundef 3520) #7
  %339 = getelementptr %struct.attribute_group, ptr %320, i32 %325, i32 3
  store ptr %338, ptr %339, align 4
  %340 = icmp eq ptr %338, null
  br i1 %340, label %363, label %341

341:                                              ; preds = %336
  %342 = getelementptr %struct.counter_attribute_group, ptr %16, i32 %325, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = icmp eq ptr %343, %342
  br i1 %344, label %358, label %345

345:                                              ; preds = %341
  %346 = getelementptr i8, ptr %343, i32 -16
  store ptr %346, ptr %338, align 4
  %347 = load ptr, ptr %343, align 4
  %348 = icmp eq ptr %347, %342
  br i1 %348, label %358, label %349

349:                                              ; preds = %349, %345
  %350 = phi ptr [ %356, %349 ], [ %347, %345 ]
  %351 = phi i32 [ %352, %349 ], [ 0, %345 ]
  %352 = add i32 %351, 1
  %353 = load ptr, ptr %339, align 4
  %354 = getelementptr i8, ptr %350, i32 -16
  %355 = getelementptr ptr, ptr %353, i32 %352
  store ptr %354, ptr %355, align 4
  %356 = load ptr, ptr %350, align 4
  %357 = icmp eq ptr %356, %342
  br i1 %357, label %358, label %349

358:                                              ; preds = %349, %345, %341
  %359 = load ptr, ptr %313, align 8
  %360 = getelementptr ptr, ptr %359, i32 %325
  store ptr %328, ptr %360, align 4
  %361 = add nuw i32 %325, 1
  %362 = icmp eq i32 %325, %10
  br i1 %362, label %363, label %324

363:                                              ; preds = %358, %336, %334, %318, %315, %310, %308, %287, %282, %276, %268, %265, %251, %245, %239, %159, %157, %115, %94, %33, %14, %1
  %364 = phi i32 [ -12, %14 ], [ -12, %310 ], [ %323, %318 ], [ -12, %308 ], [ -12, %334 ], [ -12, %1 ], [ -12, %245 ], [ %240, %239 ], [ -12, %159 ], [ %158, %157 ], [ %95, %94 ], [ %269, %268 ], [ %266, %265 ], [ %263, %251 ], [ -12, %315 ], [ -12, %336 ], [ 0, %358 ], [ %280, %276 ], [ -12, %282 ], [ -12, %287 ], [ -12, %115 ], [ -12, %33 ]
  ret i32 %364
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @counter_attr_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 52, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %92, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %9, ptr noundef align 4 dereferenceable(20) %2, i32 20, i1 false)
  %10 = getelementptr inbounds %struct.counter_attribute, ptr %6, i32 0, i32 3
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.counter_attribute, ptr %6, i32 0, i32 4
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %6, align 4
  %14 = load i32, ptr %2, align 4
  switch i32 %14, label %92 [
    i32 0, label %15
    i32 2, label %15
    i32 3, label %28
    i32 4, label %28
    i32 5, label %28
    i32 6, label %28
    i32 7, label %28
    i32 8, label %28
    i32 1, label %41
  ]

15:                                               ; preds = %8, %8
  %16 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = or i16 %21, 292
  store i16 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.device_attribute, ptr %6, i32 0, i32 1
  store ptr @counter_comp_u8_show, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %60, label %54

28:                                               ; preds = %8, %8, %8, %8, %8, %8
  %29 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = or i16 %34, 292
  store i16 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.device_attribute, ptr %6, i32 0, i32 1
  store ptr @counter_comp_u32_show, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %54

41:                                               ; preds = %8
  %42 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = or i16 %47, 292
  store i16 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.device_attribute, ptr %6, i32 0, i32 1
  store ptr @counter_comp_u64_show, ptr %49, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %37, %24
  %55 = phi ptr [ @counter_comp_u8_store, %24 ], [ @counter_comp_u32_store, %37 ], [ @counter_comp_u64_store, %50 ]
  %56 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1
  %57 = load i16, ptr %56, align 4
  %58 = or i16 %57, 128
  store i16 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.device_attribute, ptr %6, i32 0, i32 2
  store ptr %55, ptr %59, align 4
  br label %60

60:                                               ; preds = %54, %50, %37, %24
  %61 = getelementptr inbounds %struct.counter_attribute, ptr %6, i32 0, i32 1
  %62 = getelementptr inbounds %struct.counter_attribute_group, ptr %1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %63, ptr %61, align 4
  %65 = getelementptr inbounds %struct.counter_attribute, ptr %6, i32 0, i32 1, i32 1
  store ptr %62, ptr %65, align 4
  store volatile ptr %61, ptr %62, align 4
  %66 = getelementptr inbounds %struct.counter_attribute_group, ptr %1, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  %69 = load i32, ptr %2, align 4
  switch i32 %69, label %92 [
    i32 4, label %70
    i32 5, label %70
    i32 6, label %70
    i32 8, label %70
  ]

70:                                               ; preds = %60, %60, %60, %60
  %71 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 52, i32 noundef 3520) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %2, align 4
  %75 = getelementptr inbounds %struct.counter_attribute, ptr %71, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.counter_comp, ptr %2, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.counter_attribute, ptr %71, i32 0, i32 2, i32 2
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.counter_attribute, ptr %71, i32 0, i32 4
  store ptr %4, ptr %79, align 4
  %80 = load ptr, ptr %12, align 4
  %81 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %0, i32 noundef 3264, ptr noundef nonnull @.str.30, ptr noundef %80) #7
  store ptr %81, ptr %71, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.attribute, ptr %71, i32 0, i32 1
  store i16 292, ptr %84, align 4
  %85 = getelementptr inbounds %struct.device_attribute, ptr %71, i32 0, i32 1
  store ptr @counter_comp_available_show, ptr %85, align 4
  %86 = getelementptr inbounds %struct.counter_attribute, ptr %71, i32 0, i32 1
  %87 = load ptr, ptr %62, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %86, ptr %88, align 4
  store ptr %87, ptr %86, align 4
  %89 = getelementptr inbounds %struct.counter_attribute, ptr %71, i32 0, i32 1, i32 1
  store ptr %62, ptr %89, align 4
  store volatile ptr %86, ptr %62, align 4
  %90 = load i32, ptr %66, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %66, align 4
  br label %92

92:                                               ; preds = %83, %73, %70, %60, %8, %5
  %93 = phi i32 [ -12, %5 ], [ -22, %8 ], [ 0, %60 ], [ 0, %83 ], [ -12, %70 ], [ -12, %73 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_name_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %5) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u8_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1
  %6 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %39 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %18
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %5, ptr noundef nonnull %4) #7
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %14(ptr noundef %5, ptr noundef %16, ptr noundef nonnull %4) #7
  br label %24

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %20(ptr noundef %5, ptr noundef %22, ptr noundef nonnull %4) #7
  br label %24

24:                                               ; preds = %18, %12, %8
  %25 = phi i32 [ %23, %18 ], [ %17, %12 ], [ %11, %8 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  %31 = load i8, ptr %4, align 1
  br i1 %30, label %32, label %35

32:                                               ; preds = %27
  %33 = icmp ne i8 %31, 0
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %4, align 1
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i8 [ %34, %32 ], [ %31, %27 ]
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %37) #7
  br label %39

39:                                               ; preds = %35, %24, %3
  %40 = phi i32 [ %38, %35 ], [ -22, %3 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u8_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr i8, ptr %0, i32 -40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1
  %8 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #7
  %13 = load i8, ptr %5, align 1, !range !9
  store i8 %13, ptr %6, align 1
  br label %16

14:                                               ; preds = %4
  %15 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #7
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %14 ]
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %45 [
    i32 0, label %22
    i32 1, label %27
    i32 2, label %34
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %6, align 1
  %26 = call i32 %24(ptr noundef %7, i8 noundef zeroext %25) #7
  br label %41

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %6, align 1
  %33 = call i32 %29(ptr noundef %7, ptr noundef %31, i8 noundef zeroext %32) #7
  br label %41

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %6, align 1
  %40 = call i32 %36(ptr noundef %7, ptr noundef %38, i8 noundef zeroext %39) #7
  br label %41

41:                                               ; preds = %34, %27, %22
  %42 = phi i32 [ %40, %34 ], [ %33, %27 ], [ %26, %22 ]
  %43 = icmp slt i32 %42, 0
  %44 = select i1 %43, i32 %42, i32 %3
  br label %45

45:                                               ; preds = %41, %19, %16
  %46 = phi i32 [ %17, %16 ], [ -22, %19 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u32_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %71 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %21
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %5, ptr noundef nonnull %4) #7
  br label %32

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %17(ptr noundef %5, ptr noundef %19, ptr noundef nonnull %4) #7
  br label %32

21:                                               ; preds = %3
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %22, 5
  %24 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  br i1 %23, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 %25(ptr noundef %5, ptr noundef %27, ptr noundef %8, ptr noundef nonnull %4) #7
  br label %32

30:                                               ; preds = %21
  %31 = call i32 %25(ptr noundef %5, ptr noundef %27, ptr noundef nonnull %4) #7
  br label %32

32:                                               ; preds = %30, %28, %15, %11
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ], [ %20, %15 ], [ %14, %11 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %6, align 4
  switch i32 %36, label %68 [
    i32 4, label %37
    i32 3, label %42
    i32 5, label %47
    i32 6, label %52
    i32 7, label %58
    i32 8, label %63
  ]

37:                                               ; preds = %35
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr [8 x ptr], ptr @counter_function_str, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %40) #7
  br label %71

42:                                               ; preds = %35
  %43 = load i32, ptr %4, align 4
  %44 = getelementptr [2 x ptr], ptr @counter_signal_value_str, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %45) #7
  br label %71

47:                                               ; preds = %35
  %48 = load i32, ptr %4, align 4
  %49 = getelementptr [4 x ptr], ptr @counter_synapse_action_str, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %50) #7
  br label %71

52:                                               ; preds = %35
  %53 = load ptr, ptr %8, align 4
  %54 = load i32, ptr %4, align 4
  %55 = getelementptr ptr, ptr %53, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %56) #7
  br label %71

58:                                               ; preds = %35
  %59 = load i32, ptr %4, align 4
  %60 = getelementptr [2 x ptr], ptr @counter_count_direction_str, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %61) #7
  br label %71

63:                                               ; preds = %35
  %64 = load i32, ptr %4, align 4
  %65 = getelementptr [4 x ptr], ptr @counter_count_mode_str, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %66) #7
  br label %71

68:                                               ; preds = %35
  %69 = load i32, ptr %4, align 4
  %70 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %69) #7
  br label %71

71:                                               ; preds = %68, %63, %58, %52, %47, %42, %37, %32, %3
  %72 = phi i32 [ %70, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %52 ], [ %51, %47 ], [ %46, %42 ], [ %41, %37 ], [ -22, %3 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u32_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %12 = load i32, ptr %9, align 4
  switch i32 %12, label %64 [
    i32 4, label %13
    i32 5, label %29
    i32 6, label %44
    i32 8, label %49
  ]

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.counter_count, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.counter_count, ptr %8, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %97, label %22

19:                                               ; preds = %22
  %20 = add nuw i32 %23, 1
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %97, label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %20, %19 ], [ 0, %13 ]
  %24 = getelementptr i32, ptr %15, i32 %23
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %5, align 4
  %26 = getelementptr ptr, ptr @counter_function_str, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef %27) #7
  br i1 %28, label %69, label %19

29:                                               ; preds = %4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.counter_synapse, ptr %11, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %97, label %37

34:                                               ; preds = %37
  %35 = add nuw i32 %38, 1
  %36 = icmp eq i32 %35, %32
  br i1 %36, label %97, label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %35, %34 ], [ 0, %29 ]
  %39 = getelementptr i32, ptr %30, i32 %38
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %5, align 4
  %41 = getelementptr ptr, ptr @counter_synapse_action_str, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef %42) #7
  br i1 %43, label %69, label %34

44:                                               ; preds = %4
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.counter_available, ptr %11, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @__sysfs_match_string(ptr noundef %45, i32 noundef %47, ptr noundef %2) #7
  store i32 %48, ptr %5, align 4
  br label %66

49:                                               ; preds = %4
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.counter_available, ptr %11, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %97, label %57

54:                                               ; preds = %57
  %55 = add nuw i32 %58, 1
  %56 = icmp eq i32 %55, %52
  br i1 %56, label %97, label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %55, %54 ], [ 0, %49 ]
  %59 = getelementptr i32, ptr %50, i32 %58
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %5, align 4
  %61 = getelementptr ptr, ptr @counter_count_mode_str, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef %62) #7
  br i1 %63, label %69, label %54

64:                                               ; preds = %4
  %65 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #7
  br label %66

66:                                               ; preds = %64, %44
  %67 = phi i32 [ %65, %64 ], [ %48, %44 ]
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %66, %57, %37, %22
  %70 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %97 [
    i32 0, label %72
    i32 1, label %77
    i32 2, label %83
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %5, align 4
  %76 = call i32 %74(ptr noundef %6, i32 noundef %75) #7
  br label %93

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %7, align 4
  %81 = load i32, ptr %5, align 4
  %82 = call i32 %79(ptr noundef %6, ptr noundef %80, i32 noundef %81) #7
  br label %93

83:                                               ; preds = %69
  %84 = load i32, ptr %9, align 4
  %85 = icmp eq i32 %84, 5
  %86 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %5, align 4
  br i1 %85, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 %87(ptr noundef %6, ptr noundef %8, ptr noundef %11, i32 noundef %88) #7
  br label %93

91:                                               ; preds = %83
  %92 = call i32 %87(ptr noundef %6, ptr noundef %8, i32 noundef %88) #7
  br label %93

93:                                               ; preds = %91, %89, %77, %72
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ], [ %82, %77 ], [ %76, %72 ]
  %95 = icmp slt i32 %94, 0
  %96 = select i1 %95, i32 %94, i32 %3
  br label %97

97:                                               ; preds = %93, %69, %66, %54, %49, %34, %29, %19, %13
  %98 = phi i32 [ %67, %66 ], [ -22, %69 ], [ %96, %93 ], [ -22, %13 ], [ -22, %29 ], [ -22, %49 ], [ -22, %19 ], [ -22, %34 ], [ -22, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u64_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr i8, ptr %0, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8
  %6 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %30 [
    i32 0, label %8
    i32 1, label %12
    i32 2, label %18
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef %5, ptr noundef nonnull %4) #7
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %14(ptr noundef %5, ptr noundef %16, ptr noundef nonnull %4) #7
  br label %24

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %20(ptr noundef %5, ptr noundef %22, ptr noundef nonnull %4) #7
  br label %24

24:                                               ; preds = %18, %12, %8
  %25 = phi i32 [ %23, %18 ], [ %17, %12 ], [ %11, %8 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, ptr %4, align 8
  %29 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.29, i64 noundef %28) #7
  br label %30

30:                                               ; preds = %27, %24, %3
  %31 = phi i32 [ %29, %27 ], [ -22, %3 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_u64_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = getelementptr i8, ptr %0, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8
  %7 = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %35 [
    i32 0, label %12
    i32 1, label %17
    i32 2, label %24
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = load i64, ptr %5, align 8
  %16 = call i32 %14(ptr noundef %6, i64 noundef %15) #7
  br label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i64, ptr %5, align 8
  %23 = call i32 %19(ptr noundef %6, ptr noundef %21, i64 noundef %22) #7
  br label %31

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = load i64, ptr %5, align 8
  %30 = call i32 %26(ptr noundef %6, ptr noundef %28, i64 noundef %29) #7
  br label %31

31:                                               ; preds = %24, %17, %12
  %32 = phi i32 [ %30, %24 ], [ %23, %17 ], [ %16, %12 ]
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 %32, i32 %3
  br label %35

35:                                               ; preds = %31, %9, %4
  %36 = phi i32 [ %7, %4 ], [ -22, %9 ], [ %34, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_available_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  switch i32 %7, label %74 [
    i32 4, label %8
    i32 5, label %27
    i32 6, label %43
    i32 8, label %58
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.counter_count, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.counter_count, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %74, label %16

16:                                               ; preds = %16, %8
  %17 = phi i32 [ %25, %16 ], [ 0, %8 ]
  %18 = phi i32 [ %24, %16 ], [ 0, %8 ]
  %19 = getelementptr i32, ptr %12, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr ptr, ptr @counter_function_str, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %18, ptr noundef nonnull @.str.7, ptr noundef %22) #7
  %24 = add i32 %23, %18
  %25 = add nuw i32 %17, 1
  %26 = icmp eq i32 %25, %14
  br i1 %26, label %74, label %16

27:                                               ; preds = %3
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.counter_synapse, ptr %6, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %32, %27
  %33 = phi i32 [ %41, %32 ], [ 0, %27 ]
  %34 = phi i32 [ %40, %32 ], [ 0, %27 ]
  %35 = getelementptr i32, ptr %28, i32 %33
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr ptr, ptr @counter_synapse_action_str, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %34, ptr noundef nonnull @.str.7, ptr noundef %38) #7
  %40 = add i32 %39, %34
  %41 = add nuw i32 %33, 1
  %42 = icmp eq i32 %41, %30
  br i1 %42, label %74, label %32

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.counter_available, ptr %6, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ %55, %47 ], [ 0, %43 ]
  %49 = phi i32 [ %54, %47 ], [ 0, %43 ]
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr ptr, ptr %50, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %49, ptr noundef nonnull @.str.7, ptr noundef %52) #7
  %54 = add i32 %53, %49
  %55 = add nuw i32 %48, 1
  %56 = load i32, ptr %44, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %47, label %74

58:                                               ; preds = %3
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr inbounds %struct.counter_available, ptr %6, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %63, %58
  %64 = phi i32 [ %72, %63 ], [ 0, %58 ]
  %65 = phi i32 [ %71, %63 ], [ 0, %58 ]
  %66 = getelementptr i32, ptr %59, i32 %64
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr ptr, ptr @counter_count_mode_str, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %65, ptr noundef nonnull @.str.7, ptr noundef %69) #7
  %71 = add i32 %70, %65
  %72 = add nuw i32 %64, 1
  %73 = icmp eq i32 %72, %61
  br i1 %73, label %74, label %63

74:                                               ; preds = %63, %58, %47, %43, %32, %27, %16, %8, %3
  %75 = phi i32 [ -22, %3 ], [ 0, %8 ], [ 0, %27 ], [ 0, %43 ], [ 0, %58 ], [ %24, %16 ], [ %40, %32 ], [ %54, %47 ], [ %71, %63 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @counter_num_signals_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %1, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @counter_num_counts_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %1, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @counter_events_queue_size_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  %6 = zext i32 %5 to i64
  store i64 %6, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_events_queue_size_write(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.anon.70, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = trunc i64 %1 to i32
  %5 = call i32 @__kfifo_alloc(ptr noundef nonnull %3, i32 noundef %4, i32 noundef 24, i32 noundef 3264) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 18
  call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 17
  %10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 15
  call void @__kfifo_free(ptr noundef %11) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 20, i1 false)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  call void @mutex_unlock(ptr noundef %8) #7
  br label %12

12:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @counter_comp_id_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %1, i32 0, i32 2, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef %6) #7
  ret i32 %7
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
