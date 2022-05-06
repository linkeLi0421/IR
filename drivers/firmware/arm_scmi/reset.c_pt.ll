; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/reset.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_reset_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.scmi_reset_info = type { i32, i32, ptr }
%struct.reset_dom_info = type { i8, i8, i32, [16 x i8] }
%struct.scmi_msg_resp_reset_domain_attributes = type { i32, i32, [16 x i8] }
%struct.scmi_msg_reset_domain_reset = type { i32, i32, i32 }
%struct.scmi_msg_reset_notify = type { i32, i32 }
%struct.scmi_reset_issued_report = type { i64, i32, i32, i32 }
%struct.scmi_reset_issued_notify_payld = type { i32, i32, i32 }

@scmi_reset = internal constant %struct.scmi_protocol { i8 22, ptr null, ptr @scmi_reset_protocol_init, ptr null, ptr @reset_proto_ops, ptr @reset_protocol_events }, align 4
@reset_proto_ops = internal constant %struct.scmi_reset_proto_ops { ptr @scmi_reset_num_domains_get, ptr @scmi_reset_name_get, ptr @scmi_reset_latency_get, ptr @scmi_reset_domain_reset, ptr @scmi_reset_domain_assert, ptr @scmi_reset_domain_deassert }, align 4
@reset_protocol_events = internal constant %struct.scmi_protocol_events { i32 4096, ptr @reset_event_ops, ptr @reset_events, i32 1, i32 0 }, align 4
@reset_event_ops = internal constant %struct.scmi_event_ops { ptr @scmi_reset_get_num_sources, ptr @scmi_reset_set_notify_enabled, ptr @scmi_reset_fill_custom_report }, align 4
@reset_events = internal constant [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_reset_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_reset_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_reset) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_reset_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_reset) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_protocol_init(ptr noundef %0) #2 {
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
  %10 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 12, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %106, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = call i32 %21(ptr noundef %0, ptr noundef %22) #7
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %3, align 4
  br i1 %24, label %26, label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.scmi_xfer, ptr %25, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 1
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.scmi_reset_info, ptr %10, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %18
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef %0, ptr noundef %25) #7
  br label %36

36:                                               ; preds = %32, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %37 = getelementptr inbounds %struct.scmi_reset_info, ptr %10, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 24) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %41, label %43, !prof !9

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.scmi_reset_info, ptr %10, i32 0, i32 2
  store ptr null, ptr %42, align 4
  br label %106

43:                                               ; preds = %36
  %44 = load ptr, ptr %0, align 4
  %45 = extractvalue { i32, i1 } %39, 0
  %46 = call noalias ptr @devm_kmalloc(ptr noundef %44, i32 noundef %45, i32 noundef 3520) #7
  %47 = getelementptr inbounds %struct.scmi_reset_info, ptr %10, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %43
  %50 = icmp eq i32 %38, 0
  br i1 %50, label %101, label %51

51:                                               ; preds = %99, %49
  %52 = phi i32 [ %96, %99 ], [ %38, %49 ]
  %53 = phi ptr [ %100, %99 ], [ %46, %49 ]
  %54 = phi i32 [ %97, %99 ], [ 0, %49 ]
  %55 = getelementptr %struct.reset_dom_info, ptr %53, i32 %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %0, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 24, ptr noundef nonnull %2) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %51
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.scmi_xfer, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  store i32 %54, ptr %64, align 1
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.scmi_xfer, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %0, ptr noundef %65) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %61
  %74 = load i32, ptr %67, align 4
  %75 = lshr i32 %74, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %55, align 4
  %77 = getelementptr %struct.reset_dom_info, ptr %53, i32 %54, i32 1
  %78 = lshr i32 %74, 30
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, ptr %77, align 1
  %81 = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, ptr %67, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.reset_dom_info, ptr %53, i32 %54, i32 2
  %84 = icmp eq i32 %82, -1
  %85 = select i1 %84, i32 0, i32 %82
  store i32 %85, ptr %83, align 4
  %86 = getelementptr %struct.reset_dom_info, ptr %53, i32 %54, i32 3
  %87 = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, ptr %67, i32 0, i32 2
  %88 = call i32 @strlcpy(ptr noundef %86, ptr noundef %87, i32 noundef 16) #7
  br label %89

89:                                               ; preds = %73, %61
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %2, align 4
  call void %92(ptr noundef %0, ptr noundef %93) #7
  %94 = load i32, ptr %37, align 4
  br label %95

95:                                               ; preds = %89, %51
  %96 = phi i32 [ %52, %51 ], [ %94, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %97 = add nuw nsw i32 %54, 1
  %98 = icmp slt i32 %97, %96
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load ptr, ptr %47, align 4
  br label %51

101:                                              ; preds = %95, %49
  %102 = load i32, ptr %4, align 4
  store i32 %102, ptr %10, align 4
  %103 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 %104(ptr noundef %0, ptr noundef nonnull %10) #7
  br label %106

106:                                              ; preds = %101, %43, %41, %1
  %107 = phi i32 [ %105, %101 ], [ -12, %1 ], [ -12, %43 ], [ -12, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %107
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
define internal i32 @scmi_reset_num_domains_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.scmi_reset_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_reset_name_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.scmi_reset_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.reset_dom_info, ptr %7, i32 %1, i32 3
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_latency_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr %4(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.scmi_reset_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.reset_dom_info, ptr %7, i32 %1, i32 2
  %9 = load i32, ptr %8, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_reset(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.scmi_reset_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.reset_dom_info, ptr %8, i32 %1
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = icmp eq i8 %10, 0
  %19 = select i1 %18, i32 1, i32 5
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 1
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = load i8, ptr %9, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %11, align 4
  br i1 %26, label %33, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 %30(ptr noundef %0, ptr noundef %31) #7
  br label %38

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = call i32 %35(ptr noundef %0, ptr noundef %36) #7
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %32, %28 ], [ %37, %33 ]
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %3, align 4
  call void %42(ptr noundef %0, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %38, %2
  %45 = phi i32 [ %39, %38 ], [ %15, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_assert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.scmi_reset_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.reset_dom_info, ptr %8, i32 %1
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = icmp eq i8 %10, 0
  %19 = select i1 %18, i32 2, i32 6
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 1
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = load i8, ptr %9, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %11, align 4
  br i1 %26, label %33, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 %30(ptr noundef %0, ptr noundef %31) #7
  br label %38

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = call i32 %35(ptr noundef %0, ptr noundef %36) #7
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %32, %28 ], [ %37, %33 ]
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %3, align 4
  call void %42(ptr noundef %0, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %38, %2
  %45 = phi i32 [ %39, %38 ], [ %15, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_deassert(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.scmi_reset_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.reset_dom_info, ptr %8, i32 %1
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %3) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = icmp eq i8 %10, 0
  %19 = select i1 %18, i32 0, i32 4
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 1
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %22, i32 0, i32 2
  store i32 0, ptr %24, align 4
  %25 = load i8, ptr %9, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %11, align 4
  br i1 %26, label %33, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 %30(ptr noundef %0, ptr noundef %31) #7
  br label %38

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = call i32 %35(ptr noundef %0, ptr noundef %36) #7
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i32 [ %32, %28 ], [ %37, %33 ]
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %3, align 4
  call void %42(ptr noundef %0, ptr noundef %43) #7
  br label %44

44:                                               ; preds = %38, %2
  %45 = phi i32 [ %39, %38 ], [ %15, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_get_num_sources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr %3(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scmi_reset_info, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = zext i1 %3 to i32
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.scmi_xfer, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_msg_reset_notify, ptr %16, i32 0, i32 1
  store i32 %13, ptr %17, align 4
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
define internal ptr @scmi_reset_fill_custom_report(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef writeonly %5, ptr nocapture noundef writeonly %6) #6 {
  %8 = icmp ne i8 %1, 0
  %9 = icmp ne i32 %4, 12
  %10 = or i1 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  store i64 %2, ptr %5, align 8
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.scmi_reset_issued_notify_payld, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %5, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_reset_issued_notify_payld, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %5, i32 0, i32 3
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
!10 = !{i8 0, i8 2}
