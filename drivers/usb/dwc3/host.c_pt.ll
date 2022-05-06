; ModuleID = '/llk/IR/drivers/usb/dwc3/host.c_pt.bc'
source_filename = "../drivers/usb/dwc3/host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.71 }
%union.anon.71 = type { %union.anon.72 }
%union.anon.72 = type { [1 x i64] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't allocate xHCI device\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"couldn't add resources to xHCI device\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"usb3-lpm-capable\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"usb2-lpm-disable\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"quirk-broken-port-ped\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to add properties to xHCI\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to register xHCI device\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_host_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x %struct.property_entry], align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %5, ptr noundef nonnull @.str.8) #5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1
  store i32 %6, ptr %9, align 4
  %10 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 1
  store i32 %6, ptr %10, align 4
  %11 = tail call ptr @irq_get_irq_data(i32 noundef %6) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 15
  %18 = or i32 %17, 1024
  br label %19

19:                                               ; preds = %13, %8
  %20 = phi i32 [ %18, %13 ], [ 1024, %8 ]
  %21 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 3
  store i32 %20, ptr %21, align 4
  br label %78

22:                                               ; preds = %1
  %23 = icmp eq i32 %6, -517
  br i1 %23, label %140, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %5, ptr noundef nonnull @.str.9) #5
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1
  store i32 %25, ptr %28, align 4
  %29 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 1
  store i32 %25, ptr %29, align 4
  %30 = tail call ptr @irq_get_irq_data(i32 noundef %25) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 15
  %37 = or i32 %36, 1024
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i32 [ %37, %32 ], [ 1024, %27 ]
  %40 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 3
  store i32 %39, ptr %40, align 4
  br label %78

41:                                               ; preds = %24
  %42 = icmp eq i32 %25, -517
  br i1 %42, label %140, label %43

43:                                               ; preds = %41
  %44 = tail call i32 @platform_get_irq(ptr noundef %5, i32 noundef 0) #5
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 25
  %51 = load ptr, ptr %50, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi ptr [ %51, %49 ], [ null, %46 ]
  %54 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1
  store i32 %44, ptr %54, align 4
  %55 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 1
  store i32 %44, ptr %55, align 4
  %56 = tail call ptr @irq_get_irq_data(i32 noundef %44) #5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.irq_data, ptr %56, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 15
  %63 = or i32 %62, 1024
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi i32 [ %63, %58 ], [ 1024, %52 ]
  %66 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 3
  store i32 %65, ptr %66, align 4
  %67 = icmp eq ptr %53, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 25
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.device_node, ptr %70, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  br label %78

75:                                               ; preds = %43
  %76 = icmp eq i32 %44, 0
  %77 = select i1 %76, i32 -22, i32 %44
  br label %140

78:                                               ; preds = %72, %68, %64, %38, %19
  %79 = phi ptr [ @.str.9, %38 ], [ @.str.8, %19 ], [ %74, %72 ], [ @.str.10, %68 ], [ null, %64 ]
  %80 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 15, i32 1, i32 2
  store ptr %79, ptr %80, align 4
  %81 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -2) #5
  %82 = icmp eq ptr %81, null
  %83 = load ptr, ptr %3, align 4
  br i1 %82, label %84, label %85

84:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.1) #6
  br label %140

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  %87 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3, i32 1
  store ptr %83, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 14
  store ptr %81, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 15
  %90 = tail call i32 @platform_device_add_resources(ptr noundef nonnull %81, ptr noundef %89, i32 noundef 2) #5
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.2) #6
  br label %138

94:                                               ; preds = %85
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i32 96, i1 false)
  %95 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %96 = load i48, ptr %95, align 4
  %97 = and i48 %96, 65536
  %98 = icmp eq i48 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %2, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %100, i8 0, i64 15, i1 false)
  store ptr @.str.3, ptr %2, align 8
  %101 = getelementptr inbounds i8, ptr %2, i32 8
  store i8 1, ptr %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i32 [ 1, %99 ], [ 0, %94 ]
  %104 = and i48 %96, 131072
  %105 = icmp eq i48 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = add nuw nsw i32 %103, 1
  %108 = getelementptr [4 x %struct.property_entry], ptr %2, i32 0, i32 %103
  store ptr @.str.4, ptr %108, align 8
  %109 = getelementptr inbounds i8, ptr %108, i32 4
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds i8, ptr %108, i32 8
  store i8 1, ptr %110, align 8
  %111 = getelementptr inbounds i8, ptr %108, i32 9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %111, i8 0, i32 15, i1 false)
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i32 [ %107, %106 ], [ %103, %102 ]
  %114 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 21811
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %119, 1429417995
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = getelementptr [4 x %struct.property_entry], ptr %2, i32 0, i32 %113
  store ptr @.str.5, ptr %122, align 8
  %123 = getelementptr inbounds i8, ptr %122, i32 4
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds i8, ptr %122, i32 8
  store i8 1, ptr %124, align 8
  %125 = getelementptr inbounds i8, ptr %122, i32 9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %125, i8 0, i32 15, i1 false)
  br label %128

126:                                              ; preds = %117, %112
  %127 = icmp eq i32 %113, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %126, %121
  %129 = call i32 @device_create_managed_software_node(ptr noundef %86, ptr noundef nonnull %2, ptr noundef null) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.6) #6
  br label %138

133:                                              ; preds = %128, %126
  %134 = call i32 @platform_device_add(ptr noundef nonnull %81) #5
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.7) #6
  br label %138

138:                                              ; preds = %136, %131, %92
  %139 = phi i32 [ %90, %92 ], [ %129, %131 ], [ %134, %136 ]
  call void @platform_device_put(ptr noundef nonnull %81) #5
  br label %140

140:                                              ; preds = %138, %133, %84, %75, %41, %22
  %141 = phi i32 [ %139, %138 ], [ -12, %84 ], [ 0, %133 ], [ -517, %41 ], [ -517, %22 ], [ %77, %75 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #5
  ret i32 %141
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_host_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
