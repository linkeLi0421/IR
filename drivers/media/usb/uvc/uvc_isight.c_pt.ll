; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_isight.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_isight.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.86, %struct.anon.87, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.88, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.71 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.68], %struct.media_entity_enum, i32 }
%struct.anon.68 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.86 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.87 = type { [256 x i8], i32, i32, i32, i32 }
%struct.anon.88 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.67, i32 }
%union.anon.67 = type { i32 }

@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"USB isochronous frame lost (%d)\0A\00", align 1
@isight_decode.hdr = internal constant [12 x i8] c"\11\223D\DE\AD\BE\EF\DE\AD\FA\CE", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"iSight header found\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Dropping packet (out of sync)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Frame complete (overflow)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_video_decode_isight(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %118

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.uvc_streaming, ptr %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %10, i32 0, i32 18
  %13 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  br label %14

14:                                               ; preds = %113, %8
  %15 = phi i32 [ 0, %8 ], [ %115, %113 ]
  %16 = phi ptr [ %1, %8 ], [ %114, %113 ]
  %17 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %15
  %18 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %15, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32, ptr @uvc_dbg_param, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %11, align 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %28, ptr noundef nonnull @.str.1, i32 noundef %19) #6
  br label %29

29:                                               ; preds = %25, %21, %14
  %30 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %15, i32 2
  br label %31

31:                                               ; preds = %111, %29
  %32 = phi ptr [ %16, %29 ], [ %112, %111 ]
  %33 = load ptr, ptr %13, align 4
  %34 = load i32, ptr %17, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = load i32, ptr %30, align 4
  %37 = icmp eq ptr %32, null
  br i1 %37, label %113, label %38

38:                                               ; preds = %31
  %39 = icmp ugt i32 %36, 13
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %35, i32 2
  %42 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %41, ptr noundef nonnull dereferenceable(12) @isight_decode.hdr, i32 12) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = icmp ugt i32 %36, 14
  br i1 %45, label %46, label %58

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %35, i32 3
  %48 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %47, ptr noundef nonnull dereferenceable(12) @isight_decode.hdr, i32 12) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %40
  %51 = load i32, ptr @uvc_dbg_param, align 4
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %11, align 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %57, ptr noundef nonnull @.str.2) #6
  br label %58

58:                                               ; preds = %54, %50, %46, %44, %38
  %59 = phi i1 [ true, %46 ], [ true, %44 ], [ false, %54 ], [ false, %50 ], [ true, %38 ]
  %60 = getelementptr inbounds %struct.uvc_buffer, ptr %32, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  br i1 %59, label %64, label %72

64:                                               ; preds = %63
  %65 = load i32, ptr @uvc_dbg_param, align 4
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %104, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %11, align 8
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %71, ptr noundef nonnull @.str.3) #6
  br label %104

72:                                               ; preds = %63
  store i32 2, ptr %60, align 8
  br label %74

73:                                               ; preds = %58
  br i1 %59, label %79, label %74

74:                                               ; preds = %73, %72
  %75 = getelementptr inbounds %struct.uvc_buffer, ptr %32, i32 0, i32 6
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  store i32 4, ptr %60, align 8
  br label %104

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.uvc_buffer, ptr %32, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.uvc_buffer, ptr %32, i32 0, i32 6
  %83 = load i32, ptr %82, align 8
  %84 = sub i32 %81, %83
  %85 = getelementptr inbounds %struct.uvc_buffer, ptr %32, i32 0, i32 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr i8, ptr %86, i32 %83
  %88 = tail call i32 @llvm.umin.i32(i32 %84, i32 %36) #7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %35, i32 %88, i1 false) #7
  %89 = load i32, ptr %82, align 8
  %90 = add i32 %89, %88
  store i32 %90, ptr %82, align 8
  %91 = icmp ult i32 %84, %36
  br i1 %91, label %95, label %92

92:                                               ; preds = %79
  %93 = load i32, ptr %80, align 4
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %92, %79
  %96 = load i32, ptr @uvc_dbg_param, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %11, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.usb_device, ptr %101, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %102, ptr noundef nonnull @.str.4) #6
  br label %103

103:                                              ; preds = %99, %95
  store i32 4, ptr %60, align 8
  br label %104

104:                                              ; preds = %103, %92, %78, %74, %68, %64
  %105 = phi i1 [ false, %64 ], [ false, %68 ], [ false, %74 ], [ true, %78 ], [ false, %92 ], [ false, %103 ]
  %106 = load i32, ptr %60, align 8
  %107 = and i32 %106, -2
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = tail call ptr @uvc_queue_next_buffer(ptr noundef %12, ptr noundef nonnull %32) #7
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi ptr [ %110, %109 ], [ %32, %104 ]
  br i1 %105, label %31, label %113

113:                                              ; preds = %111, %31
  %114 = phi ptr [ %112, %111 ], [ null, %31 ]
  %115 = add nuw nsw i32 %15, 1
  %116 = load i32, ptr %5, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %14, label %118

118:                                              ; preds = %113, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { cold nounwind }
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
