; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_entity.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_entity.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.78, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%union.anon.78 = type { %struct.anon.80 }
%struct.anon.80 = type { i8, ptr, i8, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to initialize entity for entity %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create links for entity %u\0A\00", align 1
@uvc_subdev_ops = internal constant %struct.v4l2_subdev_ops zeroinitializer, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @uvc_mc_cleanup_entity(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_mc_register_entities(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.uvc_video_chain, ptr %0, i32 0, i32 2
  br label %3

3:                                                ; preds = %62, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %62 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %140, label %65

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %5, i32 14
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 32767
  %14 = icmp eq i16 %13, 257
  br i1 %14, label %42, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %5, i32 100
  tail call void @v4l2_subdev_init(ptr noundef %16, ptr noundef nonnull @uvc_subdev_ops) #4
  %17 = getelementptr i8, ptr %5, i32 216
  %18 = getelementptr i8, ptr %5, i32 16
  %19 = tail call i32 @strscpy(ptr noundef %17, ptr noundef %18, i32 noundef 32) #4
  %20 = load i16, ptr %11, align 2
  %21 = and i16 %20, 32767
  %22 = zext i16 %21 to i32
  switch i32 %22, label %27 [
    i32 4, label %28
    i32 5, label %23
    i32 6, label %23
    i32 1025, label %24
    i32 1027, label %24
    i32 1026, label %25
    i32 513, label %26
  ]

23:                                               ; preds = %15, %15
  br label %28

24:                                               ; preds = %15, %15
  br label %28

25:                                               ; preds = %15
  br label %28

26:                                               ; preds = %15
  br label %28

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %15
  %29 = phi i32 [ 131072, %27 ], [ 131073, %26 ], [ 196610, %25 ], [ 196611, %24 ], [ 16386, %23 ], [ 20481, %15 ]
  %30 = getelementptr i8, ptr %5, i32 124
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %5, i32 296
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = getelementptr i8, ptr %5, i32 304
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @media_entity_pads_init(ptr noundef %16, i16 noundef zeroext %33, ptr noundef %35) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %130, label %38

38:                                               ; preds = %28
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.uvc_device, ptr %39, i32 0, i32 11
  %41 = tail call i32 @v4l2_device_register_subdev(ptr noundef %40, ptr noundef %16) #4
  br label %62

42:                                               ; preds = %10
  %43 = getelementptr i8, ptr %5, i32 96
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %5, i32 296
  %48 = load i32, ptr %47, align 4
  %49 = trunc i32 %48 to i16
  %50 = getelementptr i8, ptr %5, i32 304
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %44, i16 noundef zeroext %49, ptr noundef %51) #4
  %53 = getelementptr i8, ptr %5, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load ptr, ptr %43, align 4
  %59 = getelementptr inbounds %struct.media_entity, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %46, %42, %38
  %63 = phi i32 [ %41, %38 ], [ %52, %57 ], [ %52, %46 ], [ 0, %42 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %130, label %3

65:                                               ; preds = %127, %7
  %66 = phi ptr [ %128, %127 ], [ %8, %7 ]
  %67 = getelementptr i8, ptr %66, i32 14
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, 32767
  %70 = icmp eq i16 %69, 257
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %66, i32 96
  %73 = load ptr, ptr %72, align 4
  br label %76

74:                                               ; preds = %65
  %75 = getelementptr i8, ptr %66, i32 100
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi ptr [ %75, %74 ], [ %73, %71 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %127, label %79

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %66, i32 296
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %127, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %66, i32 304
  %85 = getelementptr i8, ptr %66, i32 328
  br label %86

86:                                               ; preds = %123, %83
  %87 = phi i32 [ 0, %83 ], [ %124, %123 ]
  %88 = load ptr, ptr %84, align 4
  %89 = getelementptr %struct.media_pad, ptr %88, i32 %87, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %0, align 4
  %95 = load ptr, ptr %85, align 4
  %96 = getelementptr i8, ptr %95, i32 %87
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = tail call ptr @uvc_entity_by_id(ptr noundef %94, i32 noundef %98) #4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %130, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.uvc_entity, ptr %99, i32 0, i32 4
  %103 = load i16, ptr %102, align 2
  %104 = and i16 %103, 32767
  %105 = icmp eq i16 %104, 257
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.uvc_entity, ptr %99, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  br label %111

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.uvc_entity, ptr %99, i32 0, i32 8
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi ptr [ %110, %109 ], [ %108, %106 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.uvc_entity, ptr %99, i32 0, i32 9
  %116 = load i32, ptr %115, align 4
  %117 = trunc i32 %116 to i8
  %118 = add i8 %117, -1
  %119 = zext i8 %118 to i16
  %120 = trunc i32 %87 to i16
  %121 = tail call i32 @media_create_pad_link(ptr noundef nonnull %112, i16 noundef zeroext %119, ptr noundef nonnull %77, i16 noundef zeroext %120, i32 noundef 3) #4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %114, %111, %86
  %124 = add nuw i32 %87, 1
  %125 = load i32, ptr %80, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %86, label %127

127:                                              ; preds = %123, %79, %76
  %128 = load ptr, ptr %66, align 4
  %129 = icmp eq ptr %128, %2
  br i1 %129, label %140, label %65

130:                                              ; preds = %114, %93, %62, %28
  %131 = phi ptr [ %66, %93 ], [ %66, %114 ], [ %5, %28 ], [ %5, %62 ]
  %132 = phi ptr [ @.str.1, %93 ], [ @.str.1, %114 ], [ @.str, %28 ], [ @.str, %62 ]
  %133 = phi i32 [ %121, %114 ], [ -22, %93 ], [ %63, %62 ], [ %36, %28 ]
  %134 = load ptr, ptr %0, align 4
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.usb_device, ptr %135, i32 0, i32 15
  %137 = getelementptr i8, ptr %131, i32 12
  %138 = load i16, ptr %137, align 4
  %139 = zext i16 %138 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %136, ptr noundef nonnull %132, i32 noundef %139) #5
  br label %140

140:                                              ; preds = %130, %127, %7
  %141 = phi i32 [ 0, %7 ], [ %133, %130 ], [ 0, %127 ]
  ret i32 %141
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_entity_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
