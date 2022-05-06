; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/sensors.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/sensors.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sensors_info = type { i32, i32, i32, i64, i32, ptr }
%struct.scmi_msg_resp_sensor_attributes = type { i16, i8, i8, i32, i32, i32 }
%struct.scmi_msg_resp_sensor_description = type { i16, i16, [0 x %struct.scmi_sensor_descriptor] }
%struct.scmi_sensor_descriptor = type { i32, i32, i32, [16 x i8], i32, i32, %struct.scmi_msg_resp_attrs }
%struct.scmi_msg_resp_attrs = type { i32, i32, i32, i32 }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, %struct.scmi_sensor_intervals_info, i32, [16 x i8], i8, i32, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_sensor_intervals_info = type { i8, i32, ptr, [16 x i32] }
%struct.scmi_range_attrs = type { i64, i64 }
%struct.scmi_msg_sensor_list_update_intervals = type { i32, i32 }
%struct.scmi_msg_resp_sensor_list_update_intervals = type { i32, [0 x i32] }
%struct.scmi_msg_resp_sensor_axis_description = type { i32, [0 x %struct.scmi_axis_descriptor] }
%struct.scmi_axis_descriptor = type { i32, i32, i32, [16 x i8], i32, %struct.scmi_msg_resp_attrs }
%struct.scmi_msg_sensor_axis_description_get = type { i32, i32 }
%struct.scmi_sensor_axis_info = type { i32, i32, i32, [16 x i8], i8, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_msg_set_sensor_trip_point = type { i32, i32, i32, i32 }
%struct.scmi_msg_sensor_reading_get = type { i32, i32 }
%struct.scmi_resp_sensor_reading_complete = type { i32, i32, i32 }
%struct.scmi_sensor_reading = type { i64, i64 }
%struct.scmi_resp_sensor_reading_complete_v3 = type { i32, [0 x %struct.scmi_sensor_reading_resp] }
%struct.scmi_sensor_reading_resp = type { i32, i32, i32, i32 }
%struct.scmi_msg_sensor_config_set = type { i32, i32 }
%struct.scmi_msg_sensor_request_notify = type { i32, i32 }
%struct.scmi_sensor_trip_point_report = type { i64, i32, i32, i32 }
%struct.scmi_sensor_trip_notify_payld = type { i32, i32, i32 }
%struct.scmi_sensor_update_notify_payld = type { i32, i32, [0 x %struct.scmi_sensor_reading_resp] }
%struct.scmi_sensor_update_report = type { i64, i32, i32, i32, [0 x %struct.scmi_sensor_reading] }

@scmi_sensors = internal constant %struct.scmi_protocol { i8 21, ptr null, ptr @scmi_sensors_protocol_init, ptr null, ptr @sensor_proto_ops, ptr @sensor_protocol_events }, align 4
@sensor_proto_ops = internal constant %struct.scmi_sensor_proto_ops { ptr @scmi_sensor_count_get, ptr @scmi_sensor_info_get, ptr @scmi_sensor_trip_point_config, ptr @scmi_sensor_reading_get, ptr @scmi_sensor_reading_get_timestamped, ptr @scmi_sensor_config_get, ptr @scmi_sensor_config_set }, align 4
@sensor_protocol_events = internal constant %struct.scmi_protocol_events { i32 4096, ptr @sensor_event_ops, ptr @sensor_events, i32 2, i32 0 }, align 4
@.str = private unnamed_addr constant [31 x i8] c"No. of sensors can't exceed %d\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Sensor ID:%d advertises an invalid segmented interval (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"No. of update intervals can't exceed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"No. of axis can't exceed %d\0A\00", align 1
@sensor_event_ops = internal constant %struct.scmi_event_ops { ptr @scmi_sensor_get_num_sources, ptr @scmi_sensor_set_notify_enabled, ptr @scmi_sensor_fill_custom_report }, align 4
@sensor_events = internal constant [2 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }, %struct.scmi_event { i8 1, i32 1016, i32 1032 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_sensors_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_sensors_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_sensors) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_sensors_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_sensors) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensors_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, ptr noundef nonnull %6) #7
  %11 = load ptr, ptr %0, align 4
  %12 = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 32, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %455, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %6, align 4
  store i32 %15, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %5) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %455

22:                                               ; preds = %14
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, ptr noundef %23) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %450

31:                                               ; preds = %22
  %32 = load i16, ptr %25, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %25, i32 0, i32 1
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 2
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %25, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %25, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or i64 %45, %41
  %47 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 3
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %25, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 4
  store i32 %49, ptr %50, align 8
  %51 = load ptr, ptr %7, align 4
  %52 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %5, align 4
  call void %53(ptr noundef %0, ptr noundef %54) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %55 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 160) #7
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %59, label %61, !prof !9

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 5
  store ptr null, ptr %60, align 4
  br label %455

61:                                               ; preds = %31
  %62 = load ptr, ptr %0, align 4
  %63 = extractvalue { i32, i1 } %57, 0
  %64 = call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %63, i32 noundef 3520) #7
  %65 = getelementptr inbounds %struct.sensors_info, ptr %12, i32 0, i32 5
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %455, label %67

67:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %4) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %455

74:                                               ; preds = %67
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.scmi_xfer, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, ptr %77, i32 0, i32 2
  %80 = getelementptr inbounds %struct.scmi_xfer, ptr %75, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  store i32 0, ptr %81, align 1
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = call i32 %84(ptr noundef %0, ptr noundef %85) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %439

88:                                               ; preds = %429, %74
  %89 = phi i32 [ %93, %429 ], [ 0, %74 ]
  %90 = load i16, ptr %77, align 4
  %91 = load i16, ptr %78, align 2
  %92 = zext i16 %90 to i32
  %93 = add i32 %89, %92
  %94 = load i32, ptr %55, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str, i32 noundef %94) #8
  br label %439

98:                                               ; preds = %88
  %99 = icmp eq i16 %90, 0
  br i1 %99, label %421, label %100

100:                                              ; preds = %416, %98
  %101 = phi i32 [ %419, %416 ], [ 0, %98 ]
  %102 = phi ptr [ %418, %416 ], [ %79, %98 ]
  %103 = load ptr, ptr %65, align 4
  %104 = add i32 %101, %89
  %105 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104
  %106 = load i32, ptr %102, align 4
  store i32 %106, ptr %105, align 8
  %107 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 4
  %110 = lshr i32 %108, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, ptr %109, align 8
  %112 = and i32 %108, 255
  %113 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 3
  store i32 %112, ptr %113, align 4
  %114 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 5
  %115 = lshr i32 %108, 30
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, ptr %114, align 1
  %118 = and i32 %108, 512
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 6
  %121 = lshr exact i32 %118, 9
  %122 = trunc i32 %121 to i8
  store i8 %122, ptr %120, align 2
  br i1 %119, label %131, label %123

123:                                              ; preds = %100
  %124 = lshr i32 %108, 10
  %125 = and i32 %124, 31
  %126 = and i32 %108, 16384
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 0, i32 -32
  %129 = or i32 %128, %125
  %130 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 7
  store i32 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %123, %100
  %132 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 13
  %133 = lshr i32 %108, 8
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, ptr %132, align 8
  %136 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 11
  %139 = and i32 %138, 31
  %140 = and i32 %137, 32768
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 0, i32 -32
  %143 = or i32 %142, %139
  %144 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 2
  store i32 %143, ptr %144, align 8
  %145 = and i32 %137, 255
  %146 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 1
  store i32 %145, ptr %146, align 4
  %147 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10, i32 3
  %148 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10, i32 2
  store ptr %147, ptr %148, align 8
  %149 = load i32, ptr %12, align 8
  %150 = icmp eq i32 %149, 65536
  br i1 %150, label %151, label %155

151:                                              ; preds = %131
  %152 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10
  store i8 0, ptr %152, align 8
  %153 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10, i32 1
  store i32 1, ptr %153, align 4
  %154 = lshr i32 %137, 22
  store i32 %154, ptr %147, align 4
  br label %253

155:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %156 = load ptr, ptr %7, align 4
  %157 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 %158(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %3) #7
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %252

161:                                              ; preds = %155
  %162 = load ptr, ptr %3, align 4
  %163 = getelementptr inbounds %struct.scmi_xfer, ptr %162, i32 0, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10
  %166 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 10, i32 1
  %167 = getelementptr inbounds %struct.scmi_xfer, ptr %162, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = load i32, ptr %105, align 8
  store i32 %169, ptr %168, align 4
  %170 = getelementptr inbounds %struct.scmi_msg_sensor_list_update_intervals, ptr %168, i32 0, i32 1
  store i32 0, ptr %170, align 4
  %171 = load ptr, ptr %7, align 4
  %172 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %3, align 4
  %175 = call i32 %173(ptr noundef %0, ptr noundef %174) #7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %247

177:                                              ; preds = %234, %161
  %178 = phi i32 [ %235, %234 ], [ 0, %161 ]
  %179 = load i32, ptr %164, align 4
  %180 = trunc i32 %179 to i16
  %181 = and i16 %180, 4095
  %182 = load i32, ptr %166, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %177
  %185 = lshr i32 %179, 16
  %186 = lshr i32 %179, 12
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, ptr %165, align 8
  %189 = zext i16 %181 to i32
  %190 = add nuw nsw i32 %185, %189
  store i32 %190, ptr %166, align 4
  %191 = and i32 %179, 4096
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %184
  %194 = icmp ugt i32 %179, 65535
  %195 = icmp ne i16 %181, 3
  %196 = select i1 %194, i1 true, i1 %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load ptr, ptr %0, align 4
  %199 = load i32, ptr %105, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.1, i32 noundef %199, i32 noundef %190) #8
  store i8 0, ptr %165, align 8
  store i32 0, ptr %166, align 4
  br label %247

200:                                              ; preds = %193, %184
  %201 = icmp ugt i32 %190, 15
  br i1 %201, label %202, label %214

202:                                              ; preds = %200
  %203 = shl nuw nsw i32 %190, 2
  %204 = load ptr, ptr %0, align 4
  %205 = call noalias ptr @devm_kmalloc(ptr noundef %204, i32 noundef %203, i32 noundef 3520) #7
  store ptr %205, ptr %148, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  store i8 0, ptr %165, align 8
  store i32 0, ptr %166, align 4
  br label %247

208:                                              ; preds = %177
  %209 = zext i16 %181 to i32
  %210 = add i32 %178, %209
  %211 = icmp ugt i32 %210, %182
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.2, i32 noundef %182) #8
  br label %247

214:                                              ; preds = %208, %202, %200
  %215 = phi i32 [ %209, %208 ], [ %189, %200 ], [ %189, %202 ]
  %216 = icmp eq i16 %181, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %217, %214
  %218 = phi i32 [ %224, %217 ], [ 0, %214 ]
  %219 = getelementptr %struct.scmi_msg_resp_sensor_list_update_intervals, ptr %164, i32 0, i32 1, i32 %218
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %148, align 8
  %222 = add i32 %218, %178
  %223 = getelementptr i32, ptr %221, i32 %222
  store i32 %220, ptr %223, align 4
  %224 = add nuw nsw i32 %218, 1
  %225 = icmp eq i32 %224, %215
  br i1 %225, label %226, label %217

226:                                              ; preds = %217, %214
  %227 = load ptr, ptr %7, align 4
  %228 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %227, i32 0, i32 2
  %229 = load ptr, ptr %228, align 4
  %230 = load ptr, ptr %3, align 4
  call void %229(ptr noundef %0, ptr noundef %230) #7
  %231 = icmp ne i16 %181, 0
  %232 = icmp ugt i32 %179, 65535
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %234, label %247

234:                                              ; preds = %226
  %235 = add i32 %215, %178
  %236 = load ptr, ptr %3, align 4
  %237 = getelementptr inbounds %struct.scmi_xfer, ptr %236, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = load i32, ptr %105, align 8
  store i32 %239, ptr %238, align 4
  %240 = getelementptr inbounds %struct.scmi_msg_sensor_list_update_intervals, ptr %238, i32 0, i32 1
  store i32 %235, ptr %240, align 4
  %241 = load ptr, ptr %7, align 4
  %242 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %241, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %3, align 4
  %245 = call i32 %243(ptr noundef %0, ptr noundef %244) #7
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %177, label %247

247:                                              ; preds = %234, %226, %212, %207, %197, %161
  %248 = load ptr, ptr %7, align 4
  %249 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %248, i32 0, i32 5
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %3, align 4
  call void %250(ptr noundef %0, ptr noundef %251) #7
  br label %252

252:                                              ; preds = %247, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %253

253:                                              ; preds = %252, %151
  %254 = and i32 %137, 256
  %255 = icmp eq i32 %254, 0
  %256 = lshr i32 %137, 16
  %257 = and i32 %256, 63
  %258 = select i1 %255, i32 0, i32 %257
  %259 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 8
  store i32 %258, ptr %259, align 8
  %260 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 12
  %261 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 3
  %262 = call i32 @strlcpy(ptr noundef %260, ptr noundef %261, i32 noundef 16) #7
  %263 = load i8, ptr %132, align 8, !range !10
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %287, label %265

265:                                              ; preds = %253
  %266 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 4
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 14
  store i32 %267, ptr %268, align 4
  %269 = load i32, ptr %259, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 5
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, 134217727
  %275 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 15
  store i32 %274, ptr %275, align 8
  %276 = lshr i32 %273, 27
  %277 = or i32 %276, -32
  %278 = icmp slt i32 %273, 0
  %279 = select i1 %278, i32 %277, i32 %276
  %280 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 16
  store i32 %279, ptr %280, align 4
  %281 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 17
  %282 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 6
  %283 = load i64, ptr %282, align 1
  store i64 %283, ptr %281, align 8
  %284 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %102, i32 0, i32 6, i32 2
  %285 = load i64, ptr %284, align 1
  %286 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 17, i32 1
  store i64 %285, ptr %286, align 8
  br label %416

287:                                              ; preds = %253
  %288 = load i32, ptr %259, align 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %416, label %290

290:                                              ; preds = %287, %265
  %291 = phi i32 [ 28, %287 ], [ 32, %265 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %292 = load i32, ptr %259, align 8
  %293 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %292, i32 56) #7
  %294 = extractvalue { i32, i1 } %293, 1
  br i1 %294, label %295, label %297, !prof !9

295:                                              ; preds = %290
  %296 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 9
  store ptr null, ptr %296, align 4
  br label %407

297:                                              ; preds = %290
  %298 = load ptr, ptr %0, align 4
  %299 = extractvalue { i32, i1 } %293, 0
  %300 = call noalias ptr @devm_kmalloc(ptr noundef %298, i32 noundef %299, i32 noundef 3520) #7
  %301 = getelementptr %struct.scmi_sensor_info, ptr %103, i32 %104, i32 9
  store ptr %300, ptr %301, align 4
  %302 = icmp eq ptr %300, null
  br i1 %302, label %407, label %303

303:                                              ; preds = %297
  %304 = load ptr, ptr %7, align 4
  %305 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %304, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = call i32 %306(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %2) #7
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %407

309:                                              ; preds = %303
  %310 = load ptr, ptr %2, align 4
  %311 = getelementptr inbounds %struct.scmi_xfer, ptr %310, i32 0, i32 3
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.scmi_msg_resp_sensor_axis_description, ptr %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.scmi_xfer, ptr %310, i32 0, i32 2
  %315 = load ptr, ptr %314, align 4
  %316 = load i32, ptr %105, align 8
  store i32 %316, ptr %315, align 4
  %317 = getelementptr inbounds %struct.scmi_msg_sensor_axis_description_get, ptr %315, i32 0, i32 1
  store i32 0, ptr %317, align 4
  %318 = load ptr, ptr %7, align 4
  %319 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %318, i32 0, i32 3
  %320 = load ptr, ptr %319, align 4
  %321 = load ptr, ptr %2, align 4
  %322 = call i32 %320(ptr noundef %0, ptr noundef %321) #7
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %409

324:                                              ; preds = %395, %309
  %325 = phi i32 [ %330, %395 ], [ 0, %309 ]
  %326 = load i32, ptr %312, align 4
  %327 = trunc i32 %326 to i16
  %328 = and i16 %327, 63
  %329 = zext i16 %328 to i32
  %330 = add i32 %325, %329
  %331 = load i32, ptr %259, align 8
  %332 = icmp ugt i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %324
  %334 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.3, i32 noundef %331) #8
  br label %409

335:                                              ; preds = %324
  %336 = icmp eq i16 %328, 0
  br i1 %336, label %387, label %337

337:                                              ; preds = %382, %335
  %338 = phi i32 [ %385, %382 ], [ 0, %335 ]
  %339 = phi ptr [ %384, %382 ], [ %313, %335 ]
  %340 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 1
  %341 = load i32, ptr %340, align 4
  %342 = load ptr, ptr %301, align 4
  %343 = add i32 %338, %325
  %344 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343
  %345 = load i32, ptr %339, align 4
  store i32 %345, ptr %344, align 8
  %346 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 4
  %347 = lshr i32 %341, 8
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, ptr %346, align 4
  %350 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 2
  %351 = load i32, ptr %350, align 4
  %352 = lshr i32 %351, 11
  %353 = and i32 %352, 31
  %354 = and i32 %351, 32768
  %355 = icmp eq i32 %354, 0
  %356 = select i1 %355, i32 0, i32 -32
  %357 = or i32 %356, %353
  %358 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 2
  store i32 %357, ptr %358, align 8
  %359 = and i32 %351, 255
  %360 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 1
  store i32 %359, ptr %360, align 4
  %361 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 3
  %362 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 3
  %363 = call i32 @strlcpy(ptr noundef %361, ptr noundef %362, i32 noundef 16) #7
  %364 = load i8, ptr %346, align 4, !range !10
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %382, label %366

366:                                              ; preds = %337
  %367 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 4
  %368 = load i32, ptr %367, align 4
  %369 = and i32 %368, 134217727
  %370 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 5
  store i32 %369, ptr %370, align 8
  %371 = lshr i32 %368, 27
  %372 = or i32 %371, -32
  %373 = icmp slt i32 %368, 0
  %374 = select i1 %373, i32 %372, i32 %371
  %375 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 6
  store i32 %374, ptr %375, align 4
  %376 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 7
  %377 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 5
  %378 = load i64, ptr %377, align 1
  store i64 %378, ptr %376, align 8
  %379 = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %339, i32 0, i32 5, i32 2
  %380 = load i64, ptr %379, align 1
  %381 = getelementptr %struct.scmi_sensor_axis_info, ptr %342, i32 %343, i32 7, i32 1
  store i64 %380, ptr %381, align 8
  br label %382

382:                                              ; preds = %366, %337
  %383 = phi i32 [ 48, %366 ], [ 28, %337 ]
  %384 = getelementptr i8, ptr %339, i32 %383
  %385 = add nuw nsw i32 %338, 1
  %386 = icmp eq i32 %385, %329
  br i1 %386, label %387, label %337

387:                                              ; preds = %382, %335
  %388 = load ptr, ptr %7, align 4
  %389 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %388, i32 0, i32 2
  %390 = load ptr, ptr %389, align 4
  %391 = load ptr, ptr %2, align 4
  call void %390(ptr noundef %0, ptr noundef %391) #7
  %392 = icmp ne i16 %328, 0
  %393 = icmp ugt i32 %326, 67108863
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %395, label %409

395:                                              ; preds = %387
  %396 = load ptr, ptr %2, align 4
  %397 = getelementptr inbounds %struct.scmi_xfer, ptr %396, i32 0, i32 2
  %398 = load ptr, ptr %397, align 4
  %399 = load i32, ptr %105, align 8
  store i32 %399, ptr %398, align 4
  %400 = getelementptr inbounds %struct.scmi_msg_sensor_axis_description_get, ptr %398, i32 0, i32 1
  store i32 %330, ptr %400, align 4
  %401 = load ptr, ptr %7, align 4
  %402 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %401, i32 0, i32 3
  %403 = load ptr, ptr %402, align 4
  %404 = load ptr, ptr %2, align 4
  %405 = call i32 %403(ptr noundef %0, ptr noundef %404) #7
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %324, label %409

407:                                              ; preds = %303, %297, %295
  %408 = phi i32 [ -12, %295 ], [ %307, %303 ], [ -12, %297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %439

409:                                              ; preds = %395, %387, %333, %309
  %410 = phi i32 [ 0, %333 ], [ %322, %309 ], [ %405, %395 ], [ 0, %387 ]
  %411 = load ptr, ptr %7, align 4
  %412 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %411, i32 0, i32 5
  %413 = load ptr, ptr %412, align 4
  %414 = load ptr, ptr %2, align 4
  call void %413(ptr noundef %0, ptr noundef %414) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %415 = icmp eq i32 %410, 0
  br i1 %415, label %416, label %439

416:                                              ; preds = %409, %287, %271
  %417 = phi i32 [ %291, %409 ], [ 28, %287 ], [ 52, %271 ]
  %418 = getelementptr i8, ptr %102, i32 %417
  %419 = add nuw nsw i32 %101, 1
  %420 = icmp eq i32 %419, %92
  br i1 %420, label %421, label %100

421:                                              ; preds = %416, %98
  %422 = load ptr, ptr %7, align 4
  %423 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %422, i32 0, i32 2
  %424 = load ptr, ptr %423, align 4
  %425 = load ptr, ptr %4, align 4
  call void %424(ptr noundef %0, ptr noundef %425) #7
  %426 = icmp ne i16 %90, 0
  %427 = icmp ne i16 %91, 0
  %428 = select i1 %426, i1 %427, i1 false
  br i1 %428, label %429, label %439

429:                                              ; preds = %421
  %430 = load ptr, ptr %4, align 4
  %431 = getelementptr inbounds %struct.scmi_xfer, ptr %430, i32 0, i32 2
  %432 = load ptr, ptr %431, align 4
  store i32 %93, ptr %432, align 1
  %433 = load ptr, ptr %7, align 4
  %434 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %433, i32 0, i32 3
  %435 = load ptr, ptr %434, align 4
  %436 = load ptr, ptr %4, align 4
  %437 = call i32 %435(ptr noundef %0, ptr noundef %436) #7
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %88, label %439

439:                                              ; preds = %429, %421, %409, %407, %96, %74
  %440 = phi i32 [ 0, %96 ], [ %408, %407 ], [ %86, %74 ], [ %410, %409 ], [ 0, %421 ], [ %437, %429 ]
  %441 = load ptr, ptr %7, align 4
  %442 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %441, i32 0, i32 5
  %443 = load ptr, ptr %442, align 4
  %444 = load ptr, ptr %4, align 4
  call void %443(ptr noundef %0, ptr noundef %444) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %445 = icmp eq i32 %440, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %448 = load ptr, ptr %447, align 4
  %449 = call i32 %448(ptr noundef %0, ptr noundef nonnull %12) #7
  br label %455

450:                                              ; preds = %22
  %451 = load ptr, ptr %7, align 4
  %452 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %451, i32 0, i32 5
  %453 = load ptr, ptr %452, align 4
  %454 = load ptr, ptr %5, align 4
  call void %453(ptr noundef %0, ptr noundef %454) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %455

455:                                              ; preds = %450, %446, %439, %73, %61, %59, %21, %1
  %456 = phi i32 [ %449, %446 ], [ -12, %1 ], [ -12, %61 ], [ %440, %439 ], [ %19, %21 ], [ -12, %59 ], [ %71, %73 ], [ %29, %450 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %456
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_count_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.sensors_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_sensor_info_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.sensors_info, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.scmi_sensor_info, ptr %7, i32 %1
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_trip_point_config(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  store i32 %1, ptr %15, align 4
  %16 = zext i8 %2 to i32
  %17 = shl nuw nsw i32 %16, 4
  %18 = or i32 %17, 3
  %19 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %15, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = trunc i64 %3 to i32
  %21 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %15, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = lshr i64 %3, 32
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %15, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 %27(ptr noundef %0, ptr noundef %28) #7
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  call void %32(ptr noundef %0, ptr noundef %33) #7
  br label %34

34:                                               ; preds = %12, %4
  %35 = phi i32 [ %29, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_reading_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.sensors_info, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %4) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.scmi_xfer, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  store i32 %1, ptr %19, align 4
  %20 = getelementptr %struct.scmi_sensor_info, ptr %9, i32 %1, i32 4
  %21 = load i8, ptr %20, align 8, !range !10
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, ptr %19, i32 0, i32 1
  br i1 %22, label %39, label %24

24:                                               ; preds = %16
  store i32 1, ptr %23, align 4
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = call i32 %27(ptr noundef %0, ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.scmi_xfer, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.scmi_resp_sensor_reading_complete, ptr %34, i32 0, i32 1
  br label %50

39:                                               ; preds = %16
  store i32 0, ptr %23, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = call i32 %42(ptr noundef %0, ptr noundef %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.scmi_xfer, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi ptr [ %38, %37 ], [ %49, %46 ]
  %52 = load i64, ptr %51, align 1
  store i64 %52, ptr %2, align 8
  br label %53

53:                                               ; preds = %50, %39, %31, %24
  %54 = phi i32 [ %29, %24 ], [ %44, %39 ], [ -71, %31 ], [ 0, %50 ]
  %55 = load ptr, ptr %10, align 4
  %56 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %4, align 4
  call void %57(ptr noundef %0, ptr noundef %58) #7
  br label %59

59:                                               ; preds = %53, %3
  %60 = phi i32 [ %54, %53 ], [ %14, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_reading_get_timestamped(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef writeonly %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.sensors_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne i8 %2, 0
  %12 = icmp ne ptr %3, null
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %90

14:                                               ; preds = %4
  %15 = getelementptr %struct.scmi_sensor_info, ptr %10, i32 %1, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = zext i8 %2 to i32
  %19 = icmp ugt i8 %2, 1
  %20 = and i1 %19, %17
  br i1 %20, label %90, label %21

21:                                               ; preds = %14
  %22 = icmp ne i32 %16, 0
  %23 = icmp ult i32 %16, %18
  %24 = and i1 %22, %23
  br i1 %24, label %90, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  store i32 %1, ptr %35, align 4
  %36 = getelementptr %struct.scmi_sensor_info, ptr %10, i32 %1, i32 4
  %37 = load i8, ptr %36, align 8, !range !10
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, ptr %35, i32 0, i32 1
  br i1 %38, label %63, label %40

40:                                               ; preds = %32
  store i32 1, ptr %39, align 4
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = call i32 %43(ptr noundef %0, ptr noundef %44) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr inbounds %struct.scmi_xfer, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %84

53:                                               ; preds = %53, %47
  %54 = phi i32 [ %61, %53 ], [ 0, %47 ]
  %55 = getelementptr %struct.scmi_sensor_reading, ptr %3, i32 %54
  %56 = getelementptr %struct.scmi_resp_sensor_reading_complete_v3, ptr %50, i32 0, i32 1, i32 %54
  %57 = load i64, ptr %56, align 1
  store i64 %57, ptr %55, align 8
  %58 = getelementptr %struct.scmi_resp_sensor_reading_complete_v3, ptr %50, i32 0, i32 1, i32 %54, i32 2
  %59 = load i64, ptr %58, align 1
  %60 = getelementptr %struct.scmi_sensor_reading, ptr %3, i32 %54, i32 1
  store i64 %59, ptr %60, align 8
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp eq i32 %61, %18
  br i1 %62, label %84, label %53

63:                                               ; preds = %32
  store i32 0, ptr %39, align 4
  %64 = load ptr, ptr %26, align 4
  %65 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %5, align 4
  %68 = call i32 %66(ptr noundef %0, ptr noundef %67) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.scmi_xfer, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i32 [ 0, %70 ], [ %82, %74 ]
  %76 = getelementptr %struct.scmi_sensor_reading, ptr %3, i32 %75
  %77 = getelementptr %struct.scmi_sensor_reading_resp, ptr %73, i32 %75
  %78 = load i64, ptr %77, align 1
  store i64 %78, ptr %76, align 8
  %79 = getelementptr %struct.scmi_sensor_reading_resp, ptr %73, i32 %75, i32 2
  %80 = load i64, ptr %79, align 1
  %81 = getelementptr %struct.scmi_sensor_reading, ptr %3, i32 %75, i32 1
  store i64 %80, ptr %81, align 8
  %82 = add nuw nsw i32 %75, 1
  %83 = icmp eq i32 %82, %18
  br i1 %83, label %84, label %74

84:                                               ; preds = %74, %63, %53, %47, %40
  %85 = phi i32 [ %45, %40 ], [ %68, %63 ], [ -71, %47 ], [ 0, %74 ], [ 0, %53 ]
  %86 = load ptr, ptr %26, align 4
  %87 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %5, align 4
  call void %88(ptr noundef %0, ptr noundef %89) #7
  br label %90

90:                                               ; preds = %84, %25, %21, %14, %4
  %91 = phi i32 [ %85, %84 ], [ -22, %21 ], [ -22, %14 ], [ -22, %4 ], [ %30, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i8 noundef zeroext 9, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store i32 %1, ptr %14, align 1
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = call i32 %17(ptr noundef %0, ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr %23(ptr noundef %0) #7
  %25 = getelementptr inbounds %struct.sensors_info, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i64, ptr %29, align 1
  %31 = trunc i64 %30 to i32
  store i32 %31, ptr %2, align 4
  %32 = getelementptr %struct.scmi_sensor_info, ptr %26, i32 %1, i32 11
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %21, %11
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  call void %36(ptr noundef %0, ptr noundef %37) #7
  br label %38

38:                                               ; preds = %33, %3
  %39 = phi i32 [ %19, %33 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_config_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i8 noundef zeroext 10, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.scmi_msg_sensor_config_set, ptr %14, i32 0, i32 1
  store i32 %2, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = call i32 %18(ptr noundef %0, ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call ptr %24(ptr noundef %0) #7
  %26 = getelementptr inbounds %struct.sensors_info, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.scmi_sensor_info, ptr %27, i32 %1, i32 11
  store i32 %2, ptr %28, align 4
  br label %29

29:                                               ; preds = %22, %11
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  call void %32(ptr noundef %0, ptr noundef %33) #7
  br label %34

34:                                               ; preds = %29, %3
  %35 = phi i32 [ %20, %29 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_get_num_sources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.sensors_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_sensor_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  switch i8 %1, label %55 [
    i8 0, label %7
    i8 1, label %31
  ]

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr null, ptr %6, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %6) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = zext i1 %3 to i32
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.scmi_xfer, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scmi_msg_sensor_request_notify, ptr %18, i32 0, i32 1
  store i32 %15, ptr %19, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = call i32 %22(ptr noundef %0, ptr noundef %23) #7
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %6, align 4
  call void %27(ptr noundef %0, ptr noundef %28) #7
  br label %29

29:                                               ; preds = %14, %7
  %30 = phi i32 [ %24, %14 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %55

31:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i8 noundef zeroext 11, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = zext i1 %3 to i32
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scmi_msg_sensor_request_notify, ptr %42, i32 0, i32 1
  store i32 %39, ptr %43, align 4
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 %46(ptr noundef %0, ptr noundef %47) #7
  %49 = load ptr, ptr %32, align 4
  %50 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %5, align 4
  call void %51(ptr noundef %0, ptr noundef %52) #7
  br label %53

53:                                               ; preds = %38, %31
  %54 = phi i32 [ %48, %38 ], [ %36, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %55

55:                                               ; preds = %53, %29, %4
  %56 = phi i32 [ %54, %53 ], [ %30, %29 ], [ -22, %4 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_sensor_fill_custom_report(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) #2 {
  switch i8 %1, label %54 [
    i8 0, label %8
    i8 1, label %19
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %4, 12
  br i1 %9, label %10, label %54

10:                                               ; preds = %8
  store i64 %2, ptr %5, align 8
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.scmi_sensor_trip_notify_payld, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %5, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scmi_sensor_trip_notify_payld, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 8
  br label %52

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr %21(ptr noundef %0) #7
  %23 = getelementptr inbounds %struct.scmi_sensor_update_notify_payld, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %5, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sensors_info, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %19
  store i64 %2, ptr %5, align 8
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %5, i32 0, i32 1
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.sensors_info, ptr %22, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.scmi_sensor_info, ptr %33, i32 %24, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 %35
  %38 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %5, i32 0, i32 3
  store i32 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %39, %29
  %40 = phi i32 [ %47, %39 ], [ 0, %29 ]
  %41 = getelementptr %struct.scmi_sensor_update_report, ptr %5, i32 0, i32 4, i32 %40
  %42 = getelementptr %struct.scmi_sensor_update_notify_payld, ptr %3, i32 0, i32 2, i32 %40
  %43 = load i64, ptr %42, align 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr %struct.scmi_sensor_update_notify_payld, ptr %3, i32 0, i32 2, i32 %40, i32 2
  %45 = load i64, ptr %44, align 1
  %46 = getelementptr %struct.scmi_sensor_update_report, ptr %5, i32 0, i32 4, i32 %40, i32 1
  store i64 %45, ptr %46, align 8
  %47 = add nuw i32 %40, 1
  %48 = load i32, ptr %38, align 8
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %39, label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %25, align 4
  br label %52

52:                                               ; preds = %50, %10
  %53 = phi i32 [ %51, %50 ], [ %14, %10 ]
  store i32 %53, ptr %6, align 4
  br label %54

54:                                               ; preds = %52, %19, %8, %7
  %55 = phi ptr [ null, %7 ], [ null, %8 ], [ null, %19 ], [ %5, %52 ]
  ret ptr %55
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{i8 0, i8 2}
