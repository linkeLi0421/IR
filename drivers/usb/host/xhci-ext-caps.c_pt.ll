; ModuleID = '/llk/IR/drivers/usb/host/xhci-ext-caps.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-ext-caps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_ext_cap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_ext_cap_init\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_ext_cap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.66 }
%union.anon.66 = type { %union.anon.67 }
%union.anon.67 = type { [1 x i64] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.61, i32 }
%union.anon.61 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_xhci_ext_cap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_ext_cap_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_ext_cap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_ext_cap_init to i32), ptr @__kstrtab_xhci_ext_cap_init, ptr @__kstrtabns_xhci_ext_cap_init }, section "___ksymtab_gpl+xhci_ext_cap_init", align 4
@.str = private unnamed_addr constant [18 x i8] c"intel_xhci_usb_sw\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't allocate %s platform device\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"couldn't add resources to intel_xhci_usb_sw pdev\0A\00", align 1
@role_switch_props = internal constant [2 x %struct.property_entry] [%struct.property_entry { ptr @.str.6, i32 0, i8 1, i32 0, %union.anon.66 zeroinitializer }, %struct.property_entry zeroinitializer], align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to register device properties\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"couldn't register intel_xhci_usb_sw pdev\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"couldn't add unregister action for intel_xhci_usb_sw pdev\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"sw_switch_disable\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_xhci_ext_cap_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_ext_cap_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = icmp eq i32 %6, -1
  %8 = lshr i32 %6, 14
  %9 = and i32 %8, 262140
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %7, i1 true, i1 %10
  br i1 %11, label %104, label %12

12:                                               ; preds = %19, %1
  %13 = phi i32 [ %22, %19 ], [ %9, %1 ]
  %14 = getelementptr i8, ptr %4, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %104, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = lshr i32 %15, 8
  %21 = and i32 %20, 255
  %22 = shl nuw nsw i32 %21, 2
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %104, label %12

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %26 = getelementptr inbounds i8, ptr %2, i32 16
  %27 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %28 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 2
  %29 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  br label %30

30:                                               ; preds = %102, %24
  %31 = phi i32 [ %13, %24 ], [ %90, %102 ]
  %32 = getelementptr i8, ptr %4, i32 %31
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 192
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  %37 = load i64, ptr %25, align 8
  %38 = and i64 %37, 2147483648
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8
  %42 = load ptr, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %26, i8 0, i32 16, i1 false) #5
  %43 = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -1) #5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8
  %47 = load ptr, ptr %46, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #6
  br label %74

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %41, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %31
  store i32 %51, ptr %2, align 4
  %52 = add i32 %51, 1023
  store i32 %52, ptr %27, align 4
  store ptr @.str, ptr %28, align 4
  store i32 512, ptr %29, align 4
  %53 = call i32 @platform_device_add_resources(ptr noundef nonnull %43, ptr noundef nonnull %2, i32 noundef 1) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2) #6
  call void @platform_device_put(ptr noundef nonnull %43) #5
  br label %74

56:                                               ; preds = %48
  %57 = getelementptr i8, ptr %42, i32 -102
  %58 = load i16, ptr %57, align 2
  %59 = icmp eq i16 %58, 8885
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %62 = call i32 @device_create_managed_software_node(ptr noundef %61, ptr noundef nonnull @role_switch_props, ptr noundef null) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.3) #6
  call void @platform_device_put(ptr noundef nonnull %43) #5
  br label %74

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 1
  store ptr %42, ptr %66, align 4
  %67 = call i32 @platform_device_add(ptr noundef nonnull %43) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4) #6
  call void @platform_device_put(ptr noundef nonnull %43) #5
  br label %74

70:                                               ; preds = %65
  %71 = call i32 @devm_add_action(ptr noundef %42, ptr noundef nonnull @xhci_intel_unregister_pdev, ptr noundef nonnull %43) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  call void @platform_device_unregister(ptr noundef nonnull %43) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.5) #6
  br label %74

74:                                               ; preds = %73, %69, %64, %55, %45
  %75 = phi i32 [ -12, %45 ], [ %71, %73 ], [ %67, %69 ], [ %62, %64 ], [ %53, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  br label %104

76:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  br label %77

77:                                               ; preds = %76, %36, %30
  %78 = and i32 %31, -17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %82 = icmp eq i32 %81, -1
  %83 = lshr i32 %81, 14
  %84 = and i32 %83, 262140
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %82, i1 true, i1 %85
  br i1 %86, label %104, label %87

87:                                               ; preds = %80, %77
  %88 = phi i32 [ %84, %80 ], [ %31, %77 ]
  br label %89

89:                                               ; preds = %96, %87
  %90 = phi i32 [ %100, %96 ], [ %88, %87 ]
  %91 = getelementptr i8, ptr %4, i32 %90
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = icmp eq i32 %90, %31
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = lshr i32 %92, 8
  %98 = and i32 %97, 255
  %99 = shl nuw nsw i32 %98, 2
  %100 = add i32 %99, %31
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %104, label %89

102:                                              ; preds = %94
  %103 = icmp eq i32 %90, 0
  br i1 %103, label %104, label %30

104:                                              ; preds = %102, %96, %89, %80, %74, %19, %12, %1
  %105 = phi i32 [ %75, %74 ], [ 0, %1 ], [ 0, %96 ], [ 0, %89 ], [ 0, %102 ], [ 0, %80 ], [ 0, %19 ], [ 0, %12 ]
  ret i32 %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_intel_unregister_pdev(ptr noundef %0) #0 {
  tail call void @platform_device_unregister(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

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
!8 = !{i64 3858737}
!9 = !{i64 2153490451}
!10 = !{i64 2153490796}
!11 = !{i64 2153504759}
