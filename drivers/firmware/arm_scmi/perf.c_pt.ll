; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/perf.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/perf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_perf_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.scmi_msg_resp_perf_attributes = type { i16, i16, i32, i32, i32 }
%struct.scmi_perf_info = type { i32, i32, i8, i64, i32, ptr }
%struct.perf_dom_info = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, [16 x i8], [16 x %struct.scmi_opp], ptr }
%struct.scmi_opp = type { i32, i32, i32 }
%struct.scmi_msg_resp_perf_domain_attributes = type { i32, i32, i32, i32, [16 x i8] }
%struct.scmi_msg_perf_describe_levels = type { i32, i32 }
%struct.scmi_msg_resp_perf_describe_levels = type { i16, i16, [0 x %struct.anon.6] }
%struct.anon.6 = type { i32, i32, i16, i16 }
%struct.scmi_fc_info = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_perf_get_fc_info = type { i32, i32 }
%struct.scmi_msg_resp_perf_desc_fc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scmi_fc_db_info = type { i32, i64, i64, ptr }
%struct.scmi_perf_set_limits = type { i32, i32, i32 }
%struct.scmi_perf_get_limits = type { i32, i32 }
%struct.scmi_perf_set_level = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scmi_perf_notify_level_or_limits = type { i32, i32 }
%struct.scmi_perf_limits_report = type { i64, i32, i32, i32, i32 }
%struct.scmi_perf_limits_notify_payld = type { i32, i32, i32, i32 }
%struct.scmi_perf_level_report = type { i64, i32, i32, i32 }
%struct.scmi_perf_level_notify_payld = type { i32, i32, i32 }

@scmi_perf = internal constant %struct.scmi_protocol { i8 19, ptr null, ptr @scmi_perf_protocol_init, ptr null, ptr @perf_proto_ops, ptr @perf_protocol_events }, align 4
@perf_proto_ops = internal constant %struct.scmi_perf_proto_ops { ptr @scmi_perf_limits_set, ptr @scmi_perf_limits_get, ptr @scmi_perf_level_set, ptr @scmi_perf_level_get, ptr @scmi_dev_domain_id, ptr @scmi_dvfs_transition_latency_get, ptr @scmi_dvfs_device_opps_add, ptr @scmi_dvfs_freq_set, ptr @scmi_dvfs_freq_get, ptr @scmi_dvfs_est_power_get, ptr @scmi_fast_switch_possible, ptr @scmi_power_scale_mw_get }, align 4
@perf_protocol_events = internal constant %struct.scmi_protocol_events { i32 4096, ptr @perf_event_ops, ptr @perf_events, i32 2, i32 0 }, align 4
@.str = private unnamed_addr constant [30 x i8] c"No. of OPPs exceeded MAX_OPPS\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to add opp %luHz\0A\00", align 1
@perf_event_ops = internal constant %struct.scmi_event_ops { ptr @scmi_perf_get_num_sources, ptr @scmi_perf_set_notify_enabled, ptr @scmi_perf_fill_custom_report }, align 4
@perf_events = internal constant [2 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 16, i32 24 }, %struct.scmi_event { i8 1, i32 12, i32 24 }], align 4
@evt_2_cmd = internal unnamed_addr constant [2 x i32] [i32 9, i32 10], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_perf_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_perf_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_perf) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_perf_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_perf) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, ptr noundef nonnull %5) #10
  %10 = load ptr, ptr %0, align 4
  %11 = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 32, i32 noundef 3520) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %224, label %13

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %4) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, ptr noundef %20) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %22, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = load i16, ptr %22, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 2
  %35 = trunc i16 %30 to i8
  %36 = and i8 %35, 1
  store i8 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %22, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %22, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = shl nuw i64 %42, 32
  %44 = or i64 %43, %39
  %45 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 3
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %22, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 4
  store i32 %47, ptr %48, align 8
  br label %49

49:                                               ; preds = %28, %19
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %4, align 4
  call void %52(ptr noundef %0, ptr noundef %53) #10
  br label %54

54:                                               ; preds = %49, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %55 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 236) #10
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %59, label %61, !prof !9

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 5
  store ptr null, ptr %60, align 4
  br label %224

61:                                               ; preds = %54
  %62 = load ptr, ptr %0, align 4
  %63 = extractvalue { i32, i1 } %57, 0
  %64 = call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %63, i32 noundef 3520) #10
  %65 = getelementptr inbounds %struct.scmi_perf_info, ptr %11, i32 0, i32 5
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %224, label %67

67:                                               ; preds = %61
  %68 = icmp eq i32 %56, 0
  br i1 %68, label %219, label %69

69:                                               ; preds = %217, %67
  %70 = phi ptr [ %218, %217 ], [ %64, %67 ]
  %71 = phi i32 [ %214, %217 ], [ 0, %67 ]
  %72 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 32, ptr noundef nonnull %3) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %69
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.scmi_xfer, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  store i32 %71, ptr %81, align 1
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.scmi_xfer, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %0, ptr noundef %82) #10
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %78
  %91 = load i32, ptr %84, align 4
  %92 = lshr i32 %91, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr %72, align 4
  %94 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 1
  %95 = lshr i32 %91, 30
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, ptr %94, align 1
  %98 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 2
  %99 = lshr i32 %91, 29
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, ptr %98, align 2
  %102 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 3
  %103 = lshr i32 %91, 28
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, ptr %102, align 1
  %106 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 4
  %107 = lshr i32 %91, 27
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, ptr %106, align 4
  %110 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %84, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 6
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %84, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 7
  store i32 %114, ptr %115, align 4
  %116 = icmp eq i32 %111, 0
  %117 = icmp eq i32 %114, 0
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %90
  %120 = mul i32 %111, 1000
  %121 = udiv i32 %120, %114
  br label %122

122:                                              ; preds = %119, %90
  %123 = phi i32 [ %121, %119 ], [ 1000, %90 ]
  %124 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 8
  store i32 %123, ptr %124, align 4
  %125 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 9
  %126 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %84, i32 0, i32 4
  %127 = call i32 @strlcpy(ptr noundef %125, ptr noundef %126, i32 noundef 16) #10
  br label %128

128:                                              ; preds = %122, %78
  %129 = load ptr, ptr %6, align 4
  %130 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %129, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %3, align 4
  call void %131(ptr noundef %0, ptr noundef %132) #10
  br label %133

133:                                              ; preds = %128, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %134 = load ptr, ptr %6, align 4
  %135 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 %136(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %2) #10
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %198

139:                                              ; preds = %133
  %140 = load ptr, ptr %2, align 4
  %141 = getelementptr inbounds %struct.scmi_xfer, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.scmi_xfer, ptr %140, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.scmi_msg_perf_describe_levels, ptr %142, i32 0, i32 1
  %146 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, ptr %144, i32 0, i32 1
  br label %147

147:                                              ; preds = %182, %139
  %148 = phi i32 [ 0, %139 ], [ %159, %182 ]
  store i32 %71, ptr %142, align 4
  store i32 %148, ptr %145, align 4
  %149 = load ptr, ptr %6, align 4
  %150 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr %2, align 4
  %153 = call i32 %151(ptr noundef %0, ptr noundef %152) #10
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %147
  %156 = load i16, ptr %144, align 4
  %157 = load i16, ptr %146, align 2
  %158 = zext i16 %156 to i32
  %159 = add i32 %148, %158
  %160 = icmp ugt i32 %159, 16
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str) #11
  br label %190

163:                                              ; preds = %155
  %164 = icmp eq i16 %156, 0
  br i1 %164, label %182, label %165

165:                                              ; preds = %163
  %166 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 10, i32 %148
  br label %167

167:                                              ; preds = %167, %165
  %168 = phi ptr [ %180, %167 ], [ %166, %165 ]
  %169 = phi i32 [ %179, %167 ], [ 0, %165 ]
  %170 = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %144, i32 0, i32 2, i32 %169
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %168, align 4
  %172 = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %144, i32 0, i32 2, i32 %169, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.scmi_opp, ptr %168, i32 0, i32 1
  store i32 %173, ptr %174, align 4
  %175 = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %144, i32 0, i32 2, i32 %169, i32 2
  %176 = load i16, ptr %175, align 4
  %177 = zext i16 %176 to i32
  %178 = getelementptr inbounds %struct.scmi_opp, ptr %168, i32 0, i32 2
  store i32 %177, ptr %178, align 4
  %179 = add nuw nsw i32 %169, 1
  %180 = getelementptr %struct.scmi_opp, ptr %168, i32 1
  %181 = icmp eq i32 %179, %158
  br i1 %181, label %182, label %167

182:                                              ; preds = %167, %163
  %183 = load ptr, ptr %6, align 4
  %184 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 4
  %186 = load ptr, ptr %2, align 4
  call void %185(ptr noundef %0, ptr noundef %186) #10
  %187 = icmp ne i16 %156, 0
  %188 = icmp ne i16 %157, 0
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %147, label %190

190:                                              ; preds = %182, %161, %147
  %191 = phi i32 [ %148, %161 ], [ %148, %147 ], [ %159, %182 ]
  %192 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 5
  store i32 %191, ptr %192, align 4
  %193 = load ptr, ptr %6, align 4
  %194 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %193, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %2, align 4
  call void %195(ptr noundef %0, ptr noundef %196) #10
  %197 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 10
  call void @sort(ptr noundef %197, i32 noundef %191, i32 noundef 12, ptr noundef nonnull @opp_cmp_func, ptr noundef null) #10
  br label %198

198:                                              ; preds = %190, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %199 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 4
  %200 = load i8, ptr %199, align 4, !range !10
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr %0, align 4
  %204 = call noalias ptr @devm_kmalloc(ptr noundef %203, i32 noundef 24, i32 noundef 3520) #10
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %202
  %207 = getelementptr %struct.perf_dom_info, ptr %70, i32 %71, i32 11
  %208 = getelementptr inbounds %struct.scmi_fc_info, ptr %204, i32 0, i32 4
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %0, i32 noundef %71, i32 noundef 7, ptr noundef nonnull %204, ptr noundef %208) #10
  %209 = getelementptr inbounds %struct.scmi_fc_info, ptr %204, i32 0, i32 2
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %0, i32 noundef %71, i32 noundef 8, ptr noundef %209, ptr noundef null) #10
  %210 = getelementptr inbounds %struct.scmi_fc_info, ptr %204, i32 0, i32 1
  %211 = getelementptr inbounds %struct.scmi_fc_info, ptr %204, i32 0, i32 5
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %0, i32 noundef %71, i32 noundef 5, ptr noundef %210, ptr noundef %211) #10
  %212 = getelementptr inbounds %struct.scmi_fc_info, ptr %204, i32 0, i32 3
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %0, i32 noundef %71, i32 noundef 6, ptr noundef %212, ptr noundef null) #10
  store ptr %204, ptr %207, align 4
  br label %213

213:                                              ; preds = %206, %202, %198
  %214 = add nuw nsw i32 %71, 1
  %215 = load i32, ptr %55, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load ptr, ptr %65, align 4
  br label %69

219:                                              ; preds = %213, %67
  %220 = load i32, ptr %5, align 4
  store i32 %220, ptr %11, align 8
  %221 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 %222(ptr noundef %0, ptr noundef nonnull %11) #10
  br label %224

224:                                              ; preds = %219, %61, %59, %1
  %225 = phi i32 [ %223, %219 ], [ -12, %1 ], [ -12, %61 ], [ -12, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @opp_cmp_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scmi_perf_domain_desc_fc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #2 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %92, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %0, i8 noundef zeroext 11, i32 noundef 8, i32 noundef 44, ptr noundef nonnull %6) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %8
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.scmi_xfer, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scmi_perf_get_fc_info, ptr %18, i32 0, i32 1
  store i32 %2, ptr %19, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = call i32 %22(ptr noundef %0, ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %87

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 255
  %34 = add i32 %2, -7
  %35 = icmp ult i32 %34, 2
  %36 = icmp eq i32 %33, 4
  %37 = and i1 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = add i32 %2, -5
  %40 = icmp ult i32 %39, 2
  %41 = icmp eq i32 %33, 8
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %38, %26
  %44 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %0, align 4
  %47 = call ptr @devm_ioremap(ptr noundef %46, i32 noundef %45, i32 noundef %33) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %87, label %49

49:                                               ; preds = %43
  store ptr %47, ptr %3, align 4
  %50 = icmp eq ptr %4, null
  %51 = and i32 %30, 1
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %0, align 4
  %56 = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 32, i32 noundef 3520) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %54
  %59 = lshr i32 %30, 1
  %60 = and i32 %59, 3
  %61 = shl nuw nsw i32 1, %60
  %62 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %0, align 4
  %65 = call ptr @devm_ioremap(ptr noundef %64, i32 noundef %63, i32 noundef %61) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %87, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %56, i32 0, i32 3
  store ptr %65, ptr %68, align 8
  store i32 %61, ptr %56, align 8
  %69 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %56, i32 0, i32 1
  %73 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = or i64 %76, %71
  store i64 %77, ptr %72, align 8
  %78 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 9
  %79 = load i32, ptr %78, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %56, i32 0, i32 2
  %82 = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %29, i32 0, i32 10
  %83 = load i32, ptr %82, align 4
  %84 = zext i32 %83 to i64
  %85 = shl nuw i64 %84, 32
  %86 = or i64 %85, %80
  store i64 %86, ptr %81, align 8
  store ptr %56, ptr %4, align 4
  br label %87

87:                                               ; preds = %67, %58, %54, %49, %43, %38, %15
  %88 = load ptr, ptr %9, align 4
  %89 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %6, align 4
  call void %90(ptr noundef %0, ptr noundef %91) #10
  br label %92

92:                                               ; preds = %87, %8, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_limits_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.scmi_perf_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.perf_dom_info, ptr %10, i32 %1, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.scmi_fc_info, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %2) #10, !srcloc !12
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.scmi_fc_info, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %3) #10, !srcloc !12
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.scmi_fc_info, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call fastcc void @scmi_perf_fc_ring_db(ptr noundef %25)
  br label %50

26:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %5) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.scmi_xfer, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.scmi_perf_set_limits, ptr %36, i32 0, i32 1
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scmi_perf_set_limits, ptr %36, i32 0, i32 2
  store i32 %3, ptr %38, align 4
  %39 = load ptr, ptr %27, align 4
  %40 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = call i32 %41(ptr noundef %0, ptr noundef %42) #10
  %44 = load ptr, ptr %27, align 4
  %45 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %5, align 4
  call void %46(ptr noundef %0, ptr noundef %47) #10
  br label %48

48:                                               ; preds = %33, %26
  %49 = phi i32 [ %43, %33 ], [ %31, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %50

50:                                               ; preds = %48, %18
  %51 = phi i32 [ 0, %18 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_limits_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.scmi_perf_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.perf_dom_info, ptr %10, i32 %1, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.scmi_fc_info, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  store i32 %19, ptr %2, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.scmi_fc_info, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  store i32 %24, ptr %3, align 4
  br label %55

25:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 %29(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %5) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  store i32 %1, ptr %35, align 1
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = call i32 %38(ptr noundef %0, ptr noundef %39) #10
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr %5, align 4
  br i1 %41, label %43, label %49

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.scmi_xfer, ptr %42, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %2, align 4
  %47 = getelementptr inbounds %struct.scmi_perf_get_limits, ptr %45, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %3, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  call void %52(ptr noundef %0, ptr noundef %42) #10
  br label %53

53:                                               ; preds = %49, %25
  %54 = phi i32 [ %40, %49 ], [ %30, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %55

55:                                               ; preds = %53, %18
  %56 = phi i32 [ 0, %18 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_level_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.scmi_perf_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.perf_dom_info, ptr %10, i32 %1, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %2) #10, !srcloc !12
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.scmi_fc_info, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call fastcc void @scmi_perf_fc_ring_db(ptr noundef %20)
  br label %46

21:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %0, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = zext i1 %3 to i8
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.scmi_xfer, ptr %30, i32 0, i32 1, i32 5
  store i8 %29, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scmi_xfer, ptr %30, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  store i32 %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scmi_perf_set_level, ptr %33, i32 0, i32 1
  store i32 %2, ptr %34, align 4
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = call i32 %37(ptr noundef %0, ptr noundef %38) #10
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %5, align 4
  call void %42(ptr noundef %0, ptr noundef %43) #10
  br label %44

44:                                               ; preds = %28, %21
  %45 = phi i32 [ %39, %28 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %46

46:                                               ; preds = %44, %17
  %47 = phi i32 [ 0, %17 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_level_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.scmi_perf_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.perf_dom_info, ptr %10, i32 %1, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.scmi_fc_info, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  store i32 %19, ptr %2, align 4
  br label %50

20:                                               ; preds = %14, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %21 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %5) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = zext i1 %3 to i8
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.scmi_xfer, ptr %29, i32 0, i32 1, i32 5
  store i8 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.scmi_xfer, ptr %29, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %1, ptr %32, align 1
  %33 = load ptr, ptr %21, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = call i32 %35(ptr noundef %0, ptr noundef %36) #10
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %5, align 4
  br i1 %38, label %40, label %44

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.scmi_xfer, ptr %39, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %42, align 1
  store i32 %43, ptr %2, align 4
  br label %44

44:                                               ; preds = %40, %27
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  call void %47(ptr noundef %0, ptr noundef %39) #10
  br label %48

48:                                               ; preds = %44, %20
  %49 = phi i32 [ %37, %44 ], [ %25, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %50

50:                                               ; preds = %48, %18
  %51 = phi i32 [ 0, %18 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dev_domain_id(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #10
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = select i1 %6, i32 %8, i32 -22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_transition_latency_get(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #10, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #10
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = select i1 %10, i32 %12, i32 -22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.scmi_perf_info, ptr %6, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.perf_dom_info, ptr %17, i32 %13, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = getelementptr %struct.perf_dom_info, ptr %17, i32 %13, i32 10, i32 %20, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, 1000
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %23, %15 ], [ %13, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_device_opps_add(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #10, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #10
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = select i1 %10, i32 %12, i32 -22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.scmi_perf_info, ptr %6, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.perf_dom_info, ptr %17, i32 %13, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.perf_dom_info, ptr %17, i32 %13, i32 10
  %23 = getelementptr %struct.perf_dom_info, ptr %17, i32 %13, i32 8
  br label %24

24:                                               ; preds = %43, %21
  %25 = phi ptr [ %22, %21 ], [ %45, %43 ]
  %26 = phi i32 [ 0, %21 ], [ %44, %43 ]
  %27 = load i32, ptr %25, align 4
  %28 = load i32, ptr %23, align 4
  %29 = mul i32 %28, %27
  %30 = call i32 @dev_pm_opp_add(ptr noundef %1, i32 noundef %29, i32 noundef 0) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %29) #11
  %33 = icmp sgt i32 %26, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %38, %34 ], [ %25, %32 ]
  %36 = phi i32 [ %37, %34 ], [ %26, %32 ]
  %37 = add nsw i32 %36, -1
  %38 = getelementptr %struct.scmi_opp, ptr %35, i32 -1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %23, align 4
  %41 = mul i32 %40, %39
  call void @dev_pm_opp_remove(ptr noundef %1, i32 noundef %41) #10
  %42 = icmp ugt i32 %36, 1
  br i1 %42, label %34, label %48

43:                                               ; preds = %24
  %44 = add nuw i32 %26, 1
  %45 = getelementptr %struct.scmi_opp, ptr %25, i32 1
  %46 = load i32, ptr %18, align 4
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %24, label %48

48:                                               ; preds = %43, %34, %32, %15, %2
  %49 = phi i32 [ %13, %2 ], [ %30, %32 ], [ 0, %15 ], [ %30, %34 ], [ 0, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_freq_set(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.scmi_perf_info, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.perf_dom_info, ptr %9, i32 %1, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %2, %11
  %13 = tail call i32 @scmi_perf_level_set(ptr noundef %0, i32 noundef %1, i32 noundef %12, i1 noundef zeroext %3)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_freq_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.scmi_perf_info, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = tail call ptr %11(ptr noundef %0) #10
  %13 = getelementptr inbounds %struct.scmi_perf_info, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.perf_dom_info, ptr %14, i32 %1, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.scmi_fc_info, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  br label %56

24:                                               ; preds = %18, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %5) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %61

32:                                               ; preds = %24
  %33 = zext i1 %3 to i8
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.scmi_xfer, ptr %34, i32 0, i32 1, i32 5
  store i8 %33, ptr %35, align 4
  %36 = getelementptr inbounds %struct.scmi_xfer, ptr %34, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  store i32 %1, ptr %37, align 1
  %38 = load ptr, ptr %25, align 4
  %39 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %5, align 4
  %42 = call i32 %40(ptr noundef %0, ptr noundef %41) #10
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %5, align 4
  br i1 %43, label %45, label %52

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.scmi_xfer, ptr %44, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 1
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %0, ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %56

52:                                               ; preds = %32
  %53 = load ptr, ptr %25, align 4
  %54 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %0, ptr noundef %44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %61

56:                                               ; preds = %45, %22
  %57 = phi i32 [ %23, %22 ], [ %48, %45 ]
  %58 = getelementptr %struct.perf_dom_info, ptr %10, i32 %1, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %59, %57
  store i32 %60, ptr %2, align 4
  br label %61

61:                                               ; preds = %56, %52, %31
  %62 = phi i32 [ 0, %56 ], [ %42, %52 ], [ %29, %31 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_est_power_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.scmi_perf_info, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.perf_dom_info, ptr %9, i32 %1
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %4
  %13 = getelementptr %struct.perf_dom_info, ptr %9, i32 %1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.perf_dom_info, ptr %9, i32 %1, i32 10
  %18 = getelementptr %struct.perf_dom_info, ptr %9, i32 %1, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %30, %16
  %22 = phi ptr [ %17, %16 ], [ %32, %30 ]
  %23 = phi i32 [ 0, %16 ], [ %31, %30 ]
  %24 = load i32, ptr %22, align 4
  %25 = mul i32 %19, %24
  %26 = icmp ult i32 %25, %20
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  store i32 %25, ptr %2, align 4
  %28 = getelementptr inbounds %struct.scmi_opp, ptr %22, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %3, align 4
  br label %34

30:                                               ; preds = %21
  %31 = add nuw i32 %23, 1
  %32 = getelementptr %struct.scmi_opp, ptr %22, i32 1
  %33 = icmp eq i32 %31, %14
  br i1 %33, label %34, label %21

34:                                               ; preds = %30, %27, %12, %4
  %35 = phi i32 [ -5, %4 ], [ 0, %27 ], [ -22, %12 ], [ -22, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @scmi_fast_switch_possible(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.scmi_perf_info, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %3) #10
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = select i1 %12, i32 %14, i32 -22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %16 = getelementptr %struct.perf_dom_info, ptr %8, i32 %15, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %17, align 4
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi i1 [ false, %2 ], [ %21, %19 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @scmi_power_scale_mw_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.scmi_perf_info, ptr %4, i32 0, i32 2
  %6 = load i8, ptr %5, align 8, !range !10
  %7 = icmp ne i8 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scmi_perf_fc_ring_db(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 8
  switch i32 %8, label %60 [
    i32 1, label %9
    i32 2, label %26
    i32 4, label %43
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %15 = load i64, ptr %10, align 8
  %16 = trunc i64 %15 to i8
  %17 = and i8 %14, %16
  %18 = load ptr, ptr %4, align 8
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi ptr [ %18, %13 ], [ %5, %9 ]
  %21 = phi i8 [ %17, %13 ], [ 0, %9 ]
  %22 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i8
  %25 = or i8 %21, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %25) #10, !srcloc !18
  br label %85

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #10, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %32 = load i64, ptr %27, align 8
  %33 = trunc i64 %32 to i16
  %34 = and i16 %31, %33
  %35 = load ptr, ptr %4, align 8
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi ptr [ %35, %30 ], [ %5, %26 ]
  %38 = phi i16 [ %34, %30 ], [ 0, %26 ]
  %39 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = or i16 %38, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %42) #10, !srcloc !22
  br label %85

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %49 = load i64, ptr %44, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %48, %50
  %52 = load ptr, ptr %4, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi ptr [ %52, %47 ], [ %5, %43 ]
  %55 = phi i32 [ %51, %47 ], [ 0, %43 ]
  %56 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = or i32 %55, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %59) #10, !srcloc !12
  br label %85

60:                                               ; preds = %7
  %61 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %5, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %68 = zext i32 %67 to i64
  %69 = zext i32 %66 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %68
  %72 = load i64, ptr %61, align 8
  %73 = and i64 %71, %72
  %74 = load ptr, ptr %4, align 8
  br label %75

75:                                               ; preds = %64, %60
  %76 = phi ptr [ %74, %64 ], [ %5, %60 ]
  %77 = phi i64 [ %73, %64 ], [ 0, %60 ]
  %78 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %0, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = or i64 %79, %77
  %81 = lshr i64 %80, 32
  %82 = trunc i64 %81 to i32
  %83 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #10, !srcloc !12
  %84 = trunc i64 %80 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %84) #10, !srcloc !12
  br label %85

85:                                               ; preds = %75, %53, %36, %19, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_get_num_sources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scmi_perf_info, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_perf_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  %6 = icmp ugt i8 %1, 1
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = zext i8 %1 to i32
  %9 = getelementptr [2 x i32], ptr @evt_2_cmd, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = trunc i32 %10 to i8
  %16 = call i32 %14(ptr noundef %0, i8 noundef zeroext %15, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %7
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  store i32 %2, ptr %21, align 4
  %22 = zext i1 %3 to i32
  %23 = getelementptr inbounds %struct.scmi_perf_notify_level_or_limits, ptr %21, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = call i32 %26(ptr noundef %0, ptr noundef %27) #10
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %5, align 4
  call void %31(ptr noundef %0, ptr noundef %32) #10
  br label %33

33:                                               ; preds = %18, %7
  %34 = phi i32 [ %28, %18 ], [ %16, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i32 [ %34, %33 ], [ -22, %4 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @scmi_perf_fill_custom_report(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) #9 {
  switch i8 %1, label %35 [
    i8 0, label %8
    i8 1, label %22
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %4, 16
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  store i64 %2, ptr %5, align 8
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %5, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %5, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  br label %33

22:                                               ; preds = %7
  %23 = icmp eq i32 %4, 12
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  store i64 %2, ptr %5, align 8
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %5, i32 0, i32 1
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.scmi_perf_level_notify_payld, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %5, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.scmi_perf_level_notify_payld, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %5, i32 0, i32 3
  store i32 %31, ptr %32, align 8
  br label %33

33:                                               ; preds = %24, %10
  %34 = phi i32 [ %28, %24 ], [ %14, %10 ]
  store i32 %34, ptr %6, align 4
  br label %35

35:                                               ; preds = %33, %22, %8, %7
  %36 = phi ptr [ null, %7 ], [ null, %8 ], [ null, %22 ], [ %5, %33 ]
  ret ptr %36
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2150336069}
!12 = !{i64 2802466}
!13 = !{i64 2802884}
!14 = !{i64 2150334847}
!15 = !{i64 2802664}
!16 = !{i64 2150333901}
!17 = !{i64 2150335199}
!18 = !{i64 2802269}
!19 = !{i64 2802046}
!20 = !{i64 2150334374}
!21 = !{i64 2150335596}
!22 = !{i64 2801846}
