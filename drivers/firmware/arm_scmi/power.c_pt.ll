; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/power.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_power_proto_ops = type { ptr, ptr, ptr, ptr }
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
%struct.scmi_power_info = type { i32, i32, i64, i32, ptr }
%struct.scmi_msg_resp_power_attributes = type { i16, i16, i32, i32, i32 }
%struct.power_dom_info = type { i8, i8, i8, [16 x i8] }
%struct.scmi_msg_resp_power_domain_attributes = type { i32, [16 x i8] }
%struct.scmi_power_set_state = type { i32, i32, i32 }
%struct.scmi_power_state_notify = type { i32, i32 }
%struct.scmi_power_state_changed_report = type { i64, i32, i32, i32 }
%struct.scmi_power_state_notify_payld = type { i32, i32, i32 }

@scmi_power = internal constant %struct.scmi_protocol { i8 17, ptr null, ptr @scmi_power_protocol_init, ptr null, ptr @power_proto_ops, ptr @power_protocol_events }, align 4
@power_proto_ops = internal constant %struct.scmi_power_proto_ops { ptr @scmi_power_num_domains_get, ptr @scmi_power_name_get, ptr @scmi_power_state_set, ptr @scmi_power_state_get }, align 4
@power_protocol_events = internal constant %struct.scmi_protocol_events { i32 4096, ptr @power_event_ops, ptr @power_events, i32 1, i32 0 }, align 4
@power_event_ops = internal constant %struct.scmi_event_ops { ptr @scmi_power_get_num_sources, ptr @scmi_power_set_notify_enabled, ptr @scmi_power_fill_custom_report }, align 4
@power_events = internal constant [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_power_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_power_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_power) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_power_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_power) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_protocol_init(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, ptr noundef nonnull %4) #7
  %9 = load ptr, ptr %0, align 4
  %10 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 24, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %117, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %3) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %0, ptr noundef %19) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %18
  %28 = load i16, ptr %21, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %21, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %21, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or i64 %37, %33
  %39 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 2
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %21, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 3
  store i32 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %27, %18
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %3, align 4
  call void %46(ptr noundef %0, ptr noundef %47) #7
  br label %48

48:                                               ; preds = %43, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %49 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 19) #7
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %53, label %55, !prof !9

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 4
  store ptr null, ptr %54, align 4
  br label %117

55:                                               ; preds = %48
  %56 = load ptr, ptr %0, align 4
  %57 = extractvalue { i32, i1 } %51, 0
  %58 = call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef %57, i32 noundef 3520) #7
  %59 = getelementptr inbounds %struct.scmi_power_info, ptr %10, i32 0, i32 4
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %117, label %61

61:                                               ; preds = %55
  %62 = icmp eq i32 %50, 0
  br i1 %62, label %112, label %63

63:                                               ; preds = %110, %61
  %64 = phi i32 [ %107, %110 ], [ %50, %61 ]
  %65 = phi ptr [ %111, %110 ], [ %58, %61 ]
  %66 = phi i32 [ %108, %110 ], [ 0, %61 ]
  %67 = getelementptr %struct.power_dom_info, ptr %65, i32 %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %2) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %63
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.scmi_xfer, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  store i32 %66, ptr %76, align 1
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds %struct.scmi_xfer, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %0, ptr noundef %77) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %73
  %86 = load i32, ptr %79, align 4
  %87 = getelementptr %struct.power_dom_info, ptr %65, i32 %66, i32 2
  %88 = lshr i32 %86, 31
  %89 = trunc i32 %88 to i8
  store i8 %89, ptr %87, align 1
  %90 = getelementptr %struct.power_dom_info, ptr %65, i32 %66, i32 1
  %91 = lshr i32 %86, 30
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, ptr %90, align 1
  %94 = lshr i32 %86, 29
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, ptr %67, align 1
  %97 = getelementptr %struct.power_dom_info, ptr %65, i32 %66, i32 3
  %98 = getelementptr inbounds %struct.scmi_msg_resp_power_domain_attributes, ptr %79, i32 0, i32 1
  %99 = call i32 @strlcpy(ptr noundef %97, ptr noundef %98, i32 noundef 16) #7
  br label %100

100:                                              ; preds = %85, %73
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %2, align 4
  call void %103(ptr noundef %0, ptr noundef %104) #7
  %105 = load i32, ptr %49, align 4
  br label %106

106:                                              ; preds = %100, %63
  %107 = phi i32 [ %64, %63 ], [ %105, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %108 = add nuw nsw i32 %66, 1
  %109 = icmp slt i32 %108, %107
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load ptr, ptr %59, align 4
  br label %63

112:                                              ; preds = %106, %61
  %113 = load i32, ptr %4, align 4
  store i32 %113, ptr %10, align 8
  %114 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 %115(ptr noundef %0, ptr noundef nonnull %10) #7
  br label %117

117:                                              ; preds = %112, %55, %53, %1
  %118 = phi i32 [ %116, %112 ], [ -12, %1 ], [ -12, %55 ], [ -12, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %118
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_num_domains_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.scmi_power_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_power_name_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.scmi_power_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.power_dom_info, ptr %7, i32 %1, i32 3
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_state_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.scmi_power_set_state, ptr %14, i32 0, i32 1
  store i32 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scmi_power_set_state, ptr %14, i32 0, i32 2
  store i32 %2, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = call i32 %19(ptr noundef %0, ptr noundef %20) #7
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  call void %24(ptr noundef %0, ptr noundef %25) #7
  br label %26

26:                                               ; preds = %11, %3
  %27 = phi i32 [ %21, %11 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_state_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

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
  %21 = load ptr, ptr %4, align 4
  br i1 %20, label %22, label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.scmi_xfer, ptr %21, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 1
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %22, %11
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  call void %29(ptr noundef %0, ptr noundef %21) #7
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i32 [ %19, %26 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_get_num_sources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scmi_power_info, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_power_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  store i32 %2, ptr %15, align 4
  %16 = zext i1 %3 to i32
  %17 = getelementptr inbounds %struct.scmi_power_state_notify, ptr %15, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = call i32 %20(ptr noundef %0, ptr noundef %21) #7
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %5, align 4
  call void %25(ptr noundef %0, ptr noundef %26) #7
  br label %27

27:                                               ; preds = %12, %4
  %28 = phi i32 [ %22, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %28
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @scmi_power_fill_custom_report(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef writeonly %5, ptr nocapture noundef writeonly %6) #6 {
  %8 = icmp ne i8 %1, 0
  %9 = icmp ne i32 %4, 12
  %10 = or i1 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  store i64 %2, ptr %5, align 8
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.scmi_power_state_notify_payld, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %5, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_power_state_notify_payld, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %5, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  store i32 %15, ptr %6, align 4
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi ptr [ %5, %11 ], [ null, %7 ]
  ret ptr %21
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
