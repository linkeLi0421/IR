; ModuleID = '/llk/IR/drivers/usb/core/config.c_pt.bc'
source_filename = "../drivers/usb/core/config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_descriptor_header = type { i8, i8 }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_dev_cap_header = type { i8, i8, i8 }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }

@.str = private unnamed_addr constant [56 x i8] c"too many configurations: %d, using maximum allowed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no configurations\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unable to read config index %d descriptor/%s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"chopping to %d config(s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"config index %d descriptor too short (expected %i, got %i)\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to read config index %d descriptor/%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"unable to get BOS descriptor or descriptor too short\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"unable to get BOS descriptor set\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"descriptor type invalid, skip\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [66 x i8] c"invalid descriptor for config index %d: type = 0x%X, length = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"config %d has too many interfaces: %d, using maximum allowed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"config %d descriptor has %d excess byte%s, ignoring\0A\00", align 1
@.str.14 = private unnamed_addr constant [84 x i8] c"config %d has an invalid descriptor of length %d, skipping remainder of the config\0A\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"config %d has an invalid interface descriptor of length %d, skipping\0A\00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"config %d has more interface descriptors, than it declares in bNumInterfaces, ignoring interface number: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"config %d has an invalid interface number: %d but max is %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"config %d has an invalid interface association descriptor of length %d, skipping\0A\00", align 1
@.str.19 = private unnamed_addr constant [85 x i8] c"found more Interface Association Descriptors than allocated for in configuration %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"config %d contains an unexpected descriptor of type 0x%X, skipping\0A\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"config %d has %d interface%s, different from the descriptor's value: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"config %d has no interfaces?\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"config %d has no interface number %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [87 x i8] c"too many alternate settings for config %d interface %d: %d, using maximum allowed: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"config %d interface %d has no altsetting %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"Duplicate descriptor for config %d interface %d altsetting %d, skipping\0A\00", align 1
@.str.29 = private unnamed_addr constant [92 x i8] c"too many endpoints for config %d interface %d altsetting %d: %d, using maximum allowed: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [120 x i8] c"config %d interface %d altsetting %d has %d endpoint descriptor%s, different from the interface descriptor's value: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d has an invalid endpoint descriptor of length %d, skipping\0A\00", align 1
@.str.32 = private unnamed_addr constant [90 x i8] c"config %d interface %d altsetting %d has an invalid endpoint with address 0x%X, skipping\0A\00", align 1
@.str.33 = private unnamed_addr constant [91 x i8] c"config %d interface %d altsetting %d has a duplicate endpoint with address 0x%X, skipping\0A\00", align 1
@.str.34 = private unnamed_addr constant [90 x i8] c"config %d interface %d altsetting %d has an ignored endpoint with address 0x%X, skipping\0A\00", align 1
@.str.35 = private unnamed_addr constant [96 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has an invalid bInterval %d, changing to %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [83 x i8] c"config %d interface %d altsetting %d endpoint 0x%X is Bulk; changing to Interrupt\0A\00", align 1
@.str.37 = private unnamed_addr constant [81 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has invalid wMaxPacketSize 0\0A\00", align 1
@low_speed_maxpacket_maxes = internal unnamed_addr constant [4 x i16] [i16 8, i16 0, i16 0, i16 8], align 2
@full_speed_maxpacket_maxes = internal unnamed_addr constant [4 x i16] [i16 64, i16 1023, i16 64, i16 64], align 2
@high_speed_maxpacket_maxes = internal unnamed_addr constant [4 x i16] [i16 64, i16 1024, i16 1024, i16 1024], align 2
@super_speed_maxpacket_maxes = internal unnamed_addr constant [4 x i16] [i16 512, i16 1024, i16 1024, i16 1024], align 2
@.str.38 = private unnamed_addr constant [92 x i8] c"config %d interface %d altsetting %d endpoint 0x%X has invalid maxpacket %d, setting to %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [82 x i8] c"config %d interface %d altsetting %d bulk endpoint 0x%X has invalid maxpacket %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [104 x i8] c"No SuperSpeed endpoint companion for config %d  interface %d altsetting %d ep %d: using minimum values\0A\00", align 1
@.str.41 = private unnamed_addr constant [101 x i8] c"Control endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.42 = private unnamed_addr constant [91 x i8] c"Endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to 15\0A\00", align 1
@.str.43 = private unnamed_addr constant [99 x i8] c"%s endpoint with bmAttributes = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.46 = private unnamed_addr constant [106 x i8] c"Bulk endpoint with more than 65536 streams in config %d interface %d altsetting %d ep %d: setting to max\0A\00", align 1
@.str.47 = private unnamed_addr constant [90 x i8] c"Isoc endpoint has Mult of %d in config %d interface %d altsetting %d ep %d: setting to 3\0A\00", align 1
@.str.48 = private unnamed_addr constant [103 x i8] c"%s endpoint with wBytesPerInterval of %d in config %d interface %d altsetting %d ep %d: setting to %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.51 = private unnamed_addr constant [95 x i8] c"Invalid SuperSpeedPlus isoc endpoint companionfor config %d interface %d altsetting %d ep %d.\0A\00", align 1
@bos_desc_len = internal unnamed_addr constant <{ [12 x i8], [244 x i8] }> <{ [12 x i8] c"\00\0B\07\0A\14\00\00\00\00\00\14\03", [244 x i8] zeroinitializer }>, align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_release_interface_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %14, %7 ]
  %9 = getelementptr [0 x %struct.usb_host_interface], ptr %6, i32 0, i32 %8
  %10 = getelementptr inbounds %struct.usb_host_interface, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.usb_host_interface, ptr %9, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = add nuw i32 %8, 1
  %15 = load i32, ptr %2, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %7, label %17

17:                                               ; preds = %7, %1
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_destroy_configuration(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %22, %13 ], [ %7, %9 ]
  %15 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %16 = getelementptr ptr, ptr %14, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #9
  %18 = add nuw nsw i32 %15, 1
  %19 = load i8, ptr %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %18, %20
  %22 = load ptr, ptr %6, align 8
  br i1 %21, label %13, label %23

23:                                               ; preds = %13, %9
  %24 = phi ptr [ %7, %9 ], [ %22, %13 ]
  tail call void @kfree(ptr noundef %24) #9
  store ptr null, ptr %6, align 8
  br label %25

25:                                               ; preds = %23, %5
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %71, %25
  %30 = phi i32 [ %72, %71 ], [ 0, %25 ]
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr %struct.usb_host_config, ptr %31, i32 %30, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #9
  %34 = getelementptr %struct.usb_host_config, ptr %31, i32 %30, i32 0, i32 3
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %66, %29
  %38 = phi i32 [ %67, %66 ], [ 0, %29 ]
  %39 = getelementptr %struct.usb_host_config, ptr %31, i32 %30, i32 4, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.usb_interface_cache, ptr %40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #9, !srcloc !10
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %66, label %49, !prof !11

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 3) #9
  br label %66

50:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %51 = load i32, ptr %40, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = getelementptr %struct.usb_interface_cache, ptr %40, i32 1
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ 0, %53 ], [ %62, %55 ]
  %57 = getelementptr [0 x %struct.usb_host_interface], ptr %54, i32 0, i32 %56
  %58 = getelementptr inbounds %struct.usb_host_interface, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %59) #9
  %60 = getelementptr inbounds %struct.usb_host_interface, ptr %57, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %61) #9
  %62 = add nuw i32 %56, 1
  %63 = load i32, ptr %40, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %55, label %65

65:                                               ; preds = %55, %50
  tail call void @kfree(ptr noundef nonnull %40) #9
  br label %66

66:                                               ; preds = %65, %49, %47, %37
  %67 = add nuw nsw i32 %38, 1
  %68 = load i8, ptr %34, align 4
  %69 = zext i8 %68 to i32
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %37, label %71

71:                                               ; preds = %66, %29
  %72 = add nuw nsw i32 %30, 1
  %73 = load i8, ptr %26, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %29, label %76

76:                                               ; preds = %71, %25
  %77 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %77) #9
  store ptr null, ptr %2, align 8
  br label %78

78:                                               ; preds = %76, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_configuration(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ugt i8 %6, 8
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef 8) #10
  store i8 8, ptr %5, align 1
  br label %13

10:                                               ; preds = %1
  %11 = icmp eq i8 %6, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  br label %878

13:                                               ; preds = %10, %9
  %14 = phi i32 [ 8, %9 ], [ %7, %10 ]
  %15 = mul nuw nsw i32 %14, 344
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #11
  %17 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %878, label %19

19:                                               ; preds = %13
  %20 = shl nuw nsw i32 %14, 2
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #11
  %22 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 23
  store ptr %21, ptr %22, align 8
  %23 = icmp eq ptr %21, null
  br i1 %23, label %878, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 9) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %878, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %14, 0
  br i1 %29, label %874, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.usb_config_descriptor, ptr %26, i32 0, i32 2
  %32 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %33 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 4
  br label %34

34:                                               ; preds = %871, %30
  %35 = phi i32 [ 0, %30 ], [ %872, %871 ]
  %36 = trunc i32 %35 to i8
  %37 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext %36, ptr noundef nonnull %26, i32 noundef 9) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %35, ptr noundef nonnull @.str.3, i32 noundef %37) #10
  %40 = icmp eq i32 %37, -32
  br i1 %40, label %41, label %874

41:                                               ; preds = %39
  %42 = trunc i32 %35 to i8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %35) #10
  store i8 %42, ptr %5, align 1
  br label %874

43:                                               ; preds = %34
  %44 = icmp ult i32 %37, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef 9, i32 noundef %37) #10
  br label %874

46:                                               ; preds = %43
  %47 = load i16, ptr %31, align 2
  %48 = tail call i16 @llvm.umax.i16(i16 %47, i16 9)
  %49 = zext i16 %48 to i32
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %49, i32 noundef 3264) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %874, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %32, align 8
  %54 = and i32 %53, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @msleep(i32 noundef 200) #9
  br label %57

57:                                               ; preds = %56, %52
  %58 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext %36, ptr noundef nonnull %50, i32 noundef %49) #9
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %35, ptr noundef nonnull @.str.7) #10
  tail call void @kfree(ptr noundef nonnull %50) #9
  br label %874

61:                                               ; preds = %57
  %62 = icmp ult i32 %58, %49
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef %49, i32 noundef %58) #10
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %58, %63 ], [ %49, %61 ]
  %66 = load ptr, ptr %22, align 8
  %67 = getelementptr ptr, ptr %66, i32 %35
  store ptr %50, ptr %67, align 4
  %68 = load ptr, ptr %17, align 8
  %69 = getelementptr %struct.usb_host_config, ptr %68, i32 %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #9, !annotation !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #9, !annotation !13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(9) %69, ptr noundef nonnull align 64 dereferenceable(9) %50, i32 9, i1 false) #9
  %70 = getelementptr inbounds %struct.usb_config_descriptor, ptr %69, i32 0, i32 3
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i32
  store i8 0, ptr %70, align 4
  %73 = getelementptr inbounds %struct.usb_config_descriptor, ptr %69, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 2
  %76 = load i8, ptr %69, align 4
  %77 = zext i8 %76 to i32
  br i1 %75, label %78, label %82

78:                                               ; preds = %64
  %79 = icmp ult i8 %76, 9
  %80 = icmp ult i32 %65, %77
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %64
  %83 = zext i8 %76 to i32
  %84 = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %35, i32 noundef %84, i32 noundef %83) #10
  br label %868

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.usb_config_descriptor, ptr %69, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %50, i32 %77
  %90 = sub nsw i32 %65, %77
  %91 = icmp ugt i8 %71, 32
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %88, i32 noundef %72, i32 noundef 32) #10
  br label %93

93:                                               ; preds = %92, %85
  %94 = phi i32 [ 32, %92 ], [ %72, %85 ]
  %95 = icmp sgt i32 %90, 0
  br i1 %95, label %96, label %173

96:                                               ; preds = %93
  %97 = add nsw i32 %72, -1
  br label %98

98:                                               ; preds = %165, %96
  %99 = phi i32 [ 0, %96 ], [ %167, %165 ]
  %100 = phi i32 [ %90, %96 ], [ %171, %165 ]
  %101 = phi ptr [ %89, %96 ], [ %170, %165 ]
  %102 = phi i32 [ 0, %96 ], [ %166, %165 ]
  %103 = icmp eq i32 %100, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %88, i32 noundef 1, ptr noundef nonnull @.str.26) #10
  br label %173

105:                                              ; preds = %98
  %106 = load i8, ptr %101, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ult i32 %100, %107
  %109 = icmp ult i8 %106, 2
  %110 = or i1 %109, %108
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = zext i8 %106 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %88, i32 noundef %112) #10
  br label %173

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.usb_descriptor_header, ptr %101, i32 0, i32 1
  %115 = load i8, ptr %114, align 1
  switch i8 %115, label %165 [
    i8 4, label %116
    i8 11, label %154
    i8 1, label %163
    i8 2, label %163
  ]

116:                                              ; preds = %113
  %117 = icmp ult i8 %106, 9
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef %88, i32 noundef %107) #10
  br label %165

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %101, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, ptr %32, align 8
  %124 = and i32 %123, 32
  %125 = icmp eq i32 %124, 0
  %126 = icmp slt i32 %102, %72
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef %88, i32 noundef %122) #10
  br label %165

129:                                              ; preds = %119
  %130 = icmp ult i8 %121, %71
  br i1 %130, label %132, label %131

131:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef %88, i32 noundef %122, i32 noundef %97) #10
  br label %132

132:                                              ; preds = %131, %129
  %133 = icmp sgt i32 %102, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %139, %132
  %135 = phi i32 [ %140, %139 ], [ 0, %132 ]
  %136 = getelementptr [32 x i8], ptr %2, i32 0, i32 %135
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, %121
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = add nuw nsw i32 %135, 1
  %141 = icmp eq i32 %140, %102
  br i1 %141, label %148, label %134

142:                                              ; preds = %134
  %143 = getelementptr [32 x i8], ptr %3, i32 0, i32 %135
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, -1
  br i1 %145, label %165, label %146

146:                                              ; preds = %142
  %147 = add nuw i8 %144, 1
  store i8 %147, ptr %143, align 1
  br label %165

148:                                              ; preds = %139
  %149 = icmp slt i32 %102, 32
  br i1 %149, label %150, label %165

150:                                              ; preds = %148, %132
  %151 = getelementptr [32 x i8], ptr %2, i32 0, i32 %102
  store i8 %121, ptr %151, align 1
  %152 = getelementptr [32 x i8], ptr %3, i32 0, i32 %102
  store i8 1, ptr %152, align 1
  %153 = add nsw i32 %102, 1
  br label %165

154:                                              ; preds = %113
  %155 = icmp ult i8 %106, 8
  br i1 %155, label %156, label %157

156:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef %88, i32 noundef %107) #10
  br label %165

157:                                              ; preds = %154
  %158 = icmp eq i32 %99, 16
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef %88) #10
  br label %165

160:                                              ; preds = %157
  %161 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 2, i32 %99
  store ptr %101, ptr %161, align 4
  %162 = add i32 %99, 1
  br label %165

163:                                              ; preds = %113, %113
  %164 = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %88, i32 noundef %164) #10
  br label %165

165:                                              ; preds = %163, %160, %159, %156, %150, %148, %146, %142, %128, %118, %113
  %166 = phi i32 [ %102, %113 ], [ %102, %163 ], [ %102, %156 ], [ %102, %159 ], [ %102, %160 ], [ %102, %118 ], [ %102, %142 ], [ %102, %146 ], [ %153, %150 ], [ %102, %148 ], [ %102, %128 ]
  %167 = phi i32 [ %99, %113 ], [ %99, %163 ], [ %99, %156 ], [ 16, %159 ], [ %162, %160 ], [ %99, %118 ], [ %99, %142 ], [ %99, %146 ], [ %99, %150 ], [ %99, %148 ], [ %99, %128 ]
  %168 = load i8, ptr %101, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr i8, ptr %101, i32 %169
  %171 = sub i32 %100, %169
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %98, label %173

173:                                              ; preds = %165, %111, %104, %93
  %174 = phi i32 [ %102, %111 ], [ %102, %104 ], [ 0, %93 ], [ %166, %165 ]
  %175 = phi ptr [ %101, %111 ], [ %101, %104 ], [ %89, %93 ], [ %170, %165 ]
  %176 = ptrtoint ptr %175 to i32
  %177 = ptrtoint ptr %89 to i32
  %178 = sub i32 %176, %177
  %179 = ptrtoint ptr %50 to i32
  %180 = sub i32 %176, %179
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds %struct.usb_config_descriptor, ptr %69, i32 0, i32 2
  store i16 %181, ptr %182, align 2
  %183 = icmp eq i32 %174, %94
  br i1 %183, label %187, label %184

184:                                              ; preds = %173
  %185 = icmp eq i32 %174, 1
  %186 = select i1 %185, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %88, i32 noundef %174, ptr noundef nonnull %186, i32 noundef %72) #10
  br label %190

187:                                              ; preds = %173
  %188 = icmp eq i32 %94, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %88) #10
  br label %190

190:                                              ; preds = %189, %187, %184
  %191 = trunc i32 %174 to i8
  store i8 %191, ptr %70, align 4
  %192 = icmp sgt i32 %174, 0
  br i1 %192, label %193, label %229

193:                                              ; preds = %205, %190
  %194 = phi i32 [ %206, %205 ], [ 0, %190 ]
  br label %198

195:                                              ; preds = %198
  %196 = add nuw nsw i32 %199, 1
  %197 = icmp eq i32 %196, %174
  br i1 %197, label %204, label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %196, %195 ], [ 0, %193 ]
  %200 = getelementptr [32 x i8], ptr %2, i32 0, i32 %199
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %194, %202
  br i1 %203, label %205, label %195

204:                                              ; preds = %195
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %88, i32 noundef %194) #10
  br label %205

205:                                              ; preds = %204, %198
  %206 = add nuw nsw i32 %194, 1
  %207 = icmp eq i32 %206, %174
  br i1 %207, label %208, label %193

208:                                              ; preds = %225, %205
  %209 = phi i32 [ %227, %225 ], [ 0, %205 ]
  %210 = getelementptr [32 x i8], ptr %3, i32 0, i32 %209
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp ugt i8 %211, -128
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = getelementptr [32 x i8], ptr %2, i32 0, i32 %209
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %88, i32 noundef %217, i32 noundef %212, i32 noundef 128) #10
  store i8 -128, ptr %210, align 1
  br label %218

218:                                              ; preds = %214, %208
  %219 = phi i32 [ 128, %214 ], [ %212, %208 ]
  %220 = mul nuw nsw i32 %219, 28
  %221 = add nuw nsw i32 %220, 8
  %222 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %221, i32 noundef 3520) #11
  %223 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 4, i32 %209
  store ptr %222, ptr %223, align 4
  %224 = icmp eq ptr %222, null
  br i1 %224, label %868, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.usb_interface_cache, ptr %222, i32 0, i32 1
  store volatile i32 1, ptr %226, align 4
  %227 = add nuw nsw i32 %209, 1
  %228 = icmp eq i32 %227, %174
  br i1 %228, label %229, label %208

229:                                              ; preds = %225, %190
  %230 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 5
  store ptr %89, ptr %230, align 4
  %231 = icmp sgt i32 %178, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %238, %229
  %233 = phi ptr [ %241, %238 ], [ %89, %229 ]
  %234 = phi i32 [ %242, %238 ], [ %178, %229 ]
  %235 = getelementptr inbounds %struct.usb_descriptor_header, ptr %233, i32 0, i32 1
  %236 = load i8, ptr %235, align 1
  %237 = icmp eq i8 %236, 4
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load i8, ptr %233, align 1
  %240 = zext i8 %239 to i32
  %241 = getelementptr i8, ptr %233, i32 %240
  %242 = sub nsw i32 %234, %240
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %232, label %244

244:                                              ; preds = %238, %232
  %245 = phi ptr [ %233, %232 ], [ %241, %238 ]
  %246 = ptrtoint ptr %245 to i32
  br label %247

247:                                              ; preds = %244, %229
  %248 = phi i32 [ %246, %244 ], [ %177, %229 ]
  %249 = sub i32 %248, %177
  %250 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 6
  store i32 %249, ptr %250, align 4
  %251 = sub i32 %178, %249
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = getelementptr i8, ptr %89, i32 %249
  br label %256

255:                                              ; preds = %833, %247
  br i1 %192, label %837, label %871

256:                                              ; preds = %833, %253
  %257 = phi i32 [ %251, %253 ], [ %835, %833 ]
  %258 = phi ptr [ %254, %253 ], [ %834, %833 ]
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = getelementptr i8, ptr %258, i32 %260
  %262 = sub nsw i32 %257, %260
  %263 = icmp ult i8 %259, 9
  br i1 %263, label %810, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %258, i32 0, i32 2
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, ptr %70, align 4
  %269 = zext i8 %268 to i32
  %270 = icmp eq i8 %268, 0
  br i1 %270, label %810, label %271

271:                                              ; preds = %276, %264
  %272 = phi i32 [ %277, %276 ], [ 0, %264 ]
  %273 = getelementptr i8, ptr %2, i32 %272
  %274 = load i8, ptr %273, align 1
  %275 = icmp eq i8 %274, %266
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = add nuw nsw i32 %272, 1
  %278 = icmp eq i32 %277, %269
  br i1 %278, label %810, label %271

279:                                              ; preds = %271
  %280 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 4, i32 %272
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %810, label %283

283:                                              ; preds = %279
  %284 = load i32, ptr %281, align 4
  %285 = getelementptr i8, ptr %3, i32 %272
  %286 = load i8, ptr %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp ult i32 %284, %287
  br i1 %288, label %289, label %810

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %258, i32 0, i32 3
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = getelementptr inbounds %struct.usb_interface_cache, ptr %281, i32 0, i32 2
  %294 = icmp eq i32 %284, 0
  br i1 %294, label %310, label %295

295:                                              ; preds = %289
  %296 = mul i32 %284, 28
  %297 = add i32 %296, 8
  %298 = getelementptr i8, ptr %281, i32 %297
  br label %299

299:                                              ; preds = %306, %295
  %300 = phi i32 [ %307, %306 ], [ 0, %295 ]
  %301 = phi ptr [ %308, %306 ], [ %293, %295 ]
  %302 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %301, i32 0, i32 3
  %303 = load i8, ptr %302, align 1
  %304 = icmp eq i8 %303, %291
  br i1 %304, label %305, label %306

305:                                              ; preds = %299
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %88, i32 noundef %267, i32 noundef %292) #10
  br label %810

306:                                              ; preds = %299
  %307 = add nuw i32 %300, 1
  %308 = getelementptr %struct.usb_host_interface, ptr %301, i32 1
  %309 = icmp eq i32 %307, %284
  br i1 %309, label %310, label %299

310:                                              ; preds = %306, %289
  %311 = phi ptr [ %293, %289 ], [ %298, %306 ]
  %312 = add i32 %284, 1
  store i32 %312, ptr %281, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(9) %311, ptr noundef align 1 dereferenceable(9) %258, i32 9, i1 false) #9
  %313 = getelementptr inbounds %struct.usb_host_interface, ptr %311, i32 0, i32 2
  store ptr %261, ptr %313, align 4
  %314 = icmp sgt i32 %262, 0
  br i1 %314, label %315, label %328

315:                                              ; preds = %322, %310
  %316 = phi ptr [ %325, %322 ], [ %261, %310 ]
  %317 = phi i32 [ %326, %322 ], [ %262, %310 ]
  %318 = getelementptr inbounds %struct.usb_descriptor_header, ptr %316, i32 0, i32 1
  %319 = load i8, ptr %318, align 1
  %320 = and i8 %319, -2
  %321 = icmp eq i8 %320, 4
  br i1 %321, label %328, label %322

322:                                              ; preds = %315
  %323 = load i8, ptr %316, align 1
  %324 = zext i8 %323 to i32
  %325 = getelementptr i8, ptr %316, i32 %324
  %326 = sub nsw i32 %317, %324
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %315, label %328

328:                                              ; preds = %322, %315, %310
  %329 = phi ptr [ %261, %310 ], [ %325, %322 ], [ %316, %315 ]
  %330 = ptrtoint ptr %329 to i32
  %331 = ptrtoint ptr %261 to i32
  %332 = sub i32 %330, %331
  %333 = getelementptr inbounds %struct.usb_host_interface, ptr %311, i32 0, i32 1
  store i32 %332, ptr %333, align 4
  %334 = getelementptr i8, ptr %261, i32 %332
  %335 = sub i32 %262, %332
  %336 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %311, i32 0, i32 4
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i32
  store i8 0, ptr %336, align 4
  %339 = icmp ugt i8 %337, 30
  br i1 %339, label %340, label %341

340:                                              ; preds = %328
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %338, i32 noundef 30) #10
  br label %343

341:                                              ; preds = %328
  %342 = icmp eq i8 %337, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %341, %340
  %344 = phi i32 [ 30, %340 ], [ %338, %341 ]
  %345 = mul nuw nsw i32 %344, 56
  %346 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %345, i32 noundef 3520) #11
  %347 = getelementptr inbounds %struct.usb_host_interface, ptr %311, i32 0, i32 3
  store ptr %346, ptr %347, align 4
  %348 = icmp eq ptr %346, null
  br i1 %348, label %868, label %349

349:                                              ; preds = %343, %341
  %350 = phi i32 [ %344, %343 ], [ 0, %341 ]
  %351 = icmp sgt i32 %335, 0
  br i1 %351, label %352, label %799

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.usb_host_interface, ptr %311, i32 0, i32 3
  %354 = icmp eq i8 %291, 0
  br label %355

355:                                              ; preds = %794, %352
  %356 = phi ptr [ %334, %352 ], [ %796, %794 ]
  %357 = phi i32 [ %335, %352 ], [ %797, %794 ]
  %358 = phi i32 [ 0, %352 ], [ %795, %794 ]
  %359 = getelementptr inbounds %struct.usb_descriptor_header, ptr %356, i32 0, i32 1
  %360 = load i8, ptr %359, align 1
  %361 = icmp eq i8 %360, 4
  br i1 %361, label %799, label %362

362:                                              ; preds = %355
  %363 = load i8, ptr %356, align 1
  %364 = zext i8 %363 to i32
  %365 = getelementptr i8, ptr %356, i32 %364
  %366 = sub nsw i32 %357, %364
  %367 = icmp ugt i8 %363, 8
  br i1 %367, label %371, label %368

368:                                              ; preds = %362
  %369 = icmp ugt i8 %363, 6
  br i1 %369, label %371, label %370

370:                                              ; preds = %368
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.31, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %364) #10
  br label %770

371:                                              ; preds = %368, %362
  %372 = phi i32 [ 9, %362 ], [ 7, %368 ]
  %373 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %356, i32 0, i32 2
  %374 = load i8, ptr %373, align 1
  %375 = zext i8 %374 to i32
  %376 = and i32 %375, 127
  %377 = add nsw i32 %376, -16
  %378 = icmp ult i32 %377, -15
  br i1 %378, label %379, label %380

379:                                              ; preds = %371
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %375) #10
  br label %770

380:                                              ; preds = %371
  %381 = load i8, ptr %336, align 4
  %382 = zext i8 %381 to i32
  %383 = icmp sgt i32 %350, %382
  br i1 %383, label %384, label %770

384:                                              ; preds = %380
  %385 = load i8, ptr %70, align 4
  %386 = zext i8 %385 to i32
  %387 = icmp eq i8 %385, 0
  br i1 %387, label %447, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %356, i32 0, i32 3
  br label %390

390:                                              ; preds = %440, %388
  %391 = phi i1 [ true, %388 ], [ %442, %440 ]
  %392 = phi i32 [ 0, %388 ], [ %441, %440 ]
  %393 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 4, i32 %392
  %394 = load ptr, ptr %393, align 4
  %395 = load i32, ptr %394, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %440, label %397

397:                                              ; preds = %437, %390
  %398 = phi i32 [ %438, %437 ], [ 0, %390 ]
  %399 = getelementptr %struct.usb_interface_cache, ptr %394, i32 0, i32 2, i32 %398
  %400 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %399, i32 0, i32 2
  %401 = load i8, ptr %400, align 2
  %402 = icmp eq i8 %401, %266
  br i1 %402, label %403, label %407

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %399, i32 0, i32 3
  %405 = load i8, ptr %404, align 1
  %406 = icmp eq i8 %405, %291
  br i1 %406, label %407, label %437

407:                                              ; preds = %403, %397
  %408 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %399, i32 0, i32 4
  %409 = load i8, ptr %408, align 4
  %410 = zext i8 %409 to i32
  %411 = icmp eq i8 %409, 0
  br i1 %411, label %437, label %412

412:                                              ; preds = %407
  %413 = getelementptr %struct.usb_interface_cache, ptr %394, i32 0, i32 2, i32 %398, i32 3
  %414 = load ptr, ptr %413, align 4
  br label %415

415:                                              ; preds = %434, %412
  %416 = phi i32 [ 0, %412 ], [ %435, %434 ]
  %417 = getelementptr %struct.usb_host_endpoint, ptr %414, i32 %416
  %418 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %417, i32 0, i32 2
  %419 = load i8, ptr %418, align 1
  %420 = icmp eq i8 %419, %374
  br i1 %420, label %444, label %421

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %417, i32 0, i32 3
  %423 = load i8, ptr %422, align 1
  %424 = and i8 %423, 3
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %430, label %426

426:                                              ; preds = %421
  %427 = load i8, ptr %389, align 1
  %428 = and i8 %427, 3
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %426, %421
  %431 = xor i8 %419, %374
  %432 = and i8 %431, 15
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %444, label %434

434:                                              ; preds = %430, %426
  %435 = add nuw nsw i32 %416, 1
  %436 = icmp eq i32 %435, %410
  br i1 %436, label %437, label %415

437:                                              ; preds = %434, %407, %403
  %438 = add nuw i32 %398, 1
  %439 = icmp eq i32 %438, %395
  br i1 %439, label %440, label %397

440:                                              ; preds = %437, %390
  %441 = add nuw nsw i32 %392, 1
  %442 = icmp ult i32 %441, %386
  %443 = icmp eq i32 %441, %386
  br i1 %443, label %444, label %390

444:                                              ; preds = %440, %430, %415
  %445 = phi i1 [ %391, %415 ], [ %391, %430 ], [ %442, %440 ]
  br i1 %445, label %446, label %447

446:                                              ; preds = %444
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %375) #10
  br label %770

447:                                              ; preds = %444, %384
  %448 = load i32, ptr %32, align 8
  %449 = and i32 %448, 32768
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %447
  %452 = tail call zeroext i1 @usb_endpoint_is_ignored(ptr noundef %0, ptr noundef %311, ptr noundef %356) #9
  br i1 %452, label %456, label %453

453:                                              ; preds = %451
  %454 = load i8, ptr %336, align 4
  %455 = zext i8 %454 to i32
  br label %459

456:                                              ; preds = %451
  %457 = load i8, ptr %373, align 1
  %458 = zext i8 %457 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %458) #10
  br label %770

459:                                              ; preds = %453, %447
  %460 = phi i32 [ %455, %453 ], [ %382, %447 ]
  %461 = phi i8 [ %454, %453 ], [ %381, %447 ]
  %462 = load ptr, ptr %353, align 4
  %463 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460
  %464 = add i8 %461, 1
  store i8 %464, ptr %336, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %463, ptr noundef align 1 %356, i32 %372, i1 false) #9
  %465 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 4
  store volatile ptr %465, ptr %465, align 4
  %466 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 4, i32 1
  store ptr %465, ptr %466, align 4
  %467 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %356, i32 0, i32 3
  %468 = load i8, ptr %467, align 1
  %469 = trunc i8 %468 to i2
  switch i2 %469, label %507 [
    i2 -1, label %470
    i2 1, label %503
  ]

470:                                              ; preds = %459
  %471 = load i32, ptr %33, align 4
  switch i32 %471, label %507 [
    i32 6, label %472
    i32 5, label %472
    i32 3, label %472
  ]

472:                                              ; preds = %470, %470, %470
  %473 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %356, i32 0, i32 5
  %474 = load i8, ptr %473, align 1
  %475 = zext i8 %474 to i32
  %476 = shl nuw nsw i32 %475, 3
  %477 = icmp eq i8 %474, 0
  %478 = tail call i32 @llvm.ctlz.i32(i32 %476, i1 false) #9, !range !14
  %479 = sub nuw nsw i32 32, %478
  %480 = select i1 %477, i32 0, i32 %479
  %481 = icmp eq i32 %480, 0
  %482 = select i1 %481, i32 7, i32 %480
  %483 = load i32, ptr %32, align 8
  %484 = and i32 %483, 2048
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %472
  %487 = tail call i32 @llvm.ctlz.i32(i32 %475, i1 false) #9, !range !14
  %488 = sub nuw nsw i32 35, %487
  %489 = tail call i32 @llvm.umin.i32(i32 %488, i32 16) #9
  %490 = select i1 %477, i32 3, i32 %489
  br label %491

491:                                              ; preds = %486, %472
  %492 = phi i32 [ %482, %472 ], [ %490, %486 ]
  %493 = phi i32 [ 16, %472 ], [ %490, %486 ]
  %494 = phi i32 [ 1, %472 ], [ %490, %486 ]
  %495 = and i32 %483, 128
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %507, label %497

497:                                              ; preds = %491
  %498 = tail call i32 @llvm.ctlz.i32(i32 %475, i1 false) #9, !range !14
  %499 = sub nuw nsw i32 32, %498
  %500 = select i1 %477, i32 0, i32 %499
  %501 = tail call i32 @llvm.smax.i32(i32 %500, i32 %494) #9
  %502 = tail call i32 @llvm.smin.i32(i32 %501, i32 %493) #9
  br label %507

503:                                              ; preds = %459
  %504 = load i32, ptr %33, align 4
  %505 = icmp eq i32 %504, 3
  %506 = select i1 %505, i32 7, i32 4
  br label %507

507:                                              ; preds = %503, %497, %491, %470, %459
  %508 = phi i32 [ %492, %491 ], [ %502, %497 ], [ 10, %470 ], [ %506, %503 ], [ %372, %459 ]
  %509 = phi i32 [ %493, %491 ], [ %502, %497 ], [ 255, %470 ], [ 16, %503 ], [ 255, %459 ]
  %510 = phi i32 [ %494, %491 ], [ %502, %497 ], [ 1, %470 ], [ 1, %503 ], [ 0, %459 ]
  %511 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %356, i32 0, i32 5
  %512 = load i8, ptr %511, align 1
  %513 = zext i8 %512 to i32
  %514 = icmp ugt i32 %510, %513
  %515 = icmp ult i32 %509, %513
  %516 = select i1 %514, i1 true, i1 %515
  br i1 %516, label %517, label %522

517:                                              ; preds = %507
  %518 = load i8, ptr %373, align 1
  %519 = zext i8 %518 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.35, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %519, i32 noundef %513, i32 noundef %508) #10
  %520 = trunc i32 %508 to i8
  %521 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 5
  store i8 %520, ptr %521, align 2
  br label %522

522:                                              ; preds = %517, %507
  %523 = load i32, ptr %33, align 4
  %524 = icmp eq i32 %523, 1
  br i1 %524, label %525, label %539

525:                                              ; preds = %522
  %526 = load i8, ptr %467, align 1
  %527 = and i8 %526, 3
  %528 = icmp eq i8 %527, 2
  br i1 %528, label %529, label %539

529:                                              ; preds = %525
  %530 = load i8, ptr %373, align 1
  %531 = zext i8 %530 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.36, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %531) #10
  %532 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 3
  store i8 3, ptr %532, align 1
  %533 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 5
  store i8 1, ptr %533, align 2
  %534 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 4
  %535 = load i16, ptr %534, align 1
  %536 = and i16 %535, 2047
  %537 = icmp ugt i16 %536, 8
  br i1 %537, label %538, label %539

538:                                              ; preds = %529
  store i16 8, ptr %534, align 4
  br label %539

539:                                              ; preds = %538, %529, %525, %522
  %540 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 4
  %541 = load i16, ptr %540, align 4
  %542 = zext i16 %541 to i32
  %543 = icmp eq i16 %541, 0
  br i1 %543, label %544, label %552

544:                                              ; preds = %539
  %545 = load i8, ptr %467, align 1
  %546 = and i8 %545, 3
  %547 = icmp eq i8 %546, 1
  %548 = and i1 %354, %547
  br i1 %548, label %552, label %549

549:                                              ; preds = %544
  %550 = load i8, ptr %373, align 1
  %551 = zext i8 %550 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %551) #10
  br label %552

552:                                              ; preds = %549, %544, %539
  %553 = load i32, ptr %33, align 4
  switch i32 %553, label %561 [
    i32 1, label %565
    i32 2, label %554
    i32 3, label %555
    i32 5, label %564
    i32 6, label %564
  ]

554:                                              ; preds = %552
  br label %565

555:                                              ; preds = %552
  %556 = load i8, ptr %467, align 1
  %557 = trunc i8 %556 to i2
  switch i2 %557, label %561 [
    i2 -1, label %558
    i2 1, label %558
  ]

558:                                              ; preds = %555, %555
  %559 = and i16 %541, 6144
  %560 = and i32 %542, 59391
  br label %561

561:                                              ; preds = %558, %555, %552
  %562 = phi i32 [ %542, %552 ], [ %560, %558 ], [ %542, %555 ]
  %563 = phi i16 [ 0, %552 ], [ %559, %558 ], [ 0, %555 ]
  br label %565

564:                                              ; preds = %552, %552
  br label %565

565:                                              ; preds = %564, %561, %554, %552
  %566 = phi ptr [ @high_speed_maxpacket_maxes, %561 ], [ @super_speed_maxpacket_maxes, %564 ], [ @full_speed_maxpacket_maxes, %554 ], [ @low_speed_maxpacket_maxes, %552 ]
  %567 = phi i32 [ %562, %561 ], [ %542, %564 ], [ %542, %554 ], [ %542, %552 ]
  %568 = phi i16 [ %563, %561 ], [ 0, %564 ], [ 0, %554 ], [ 0, %552 ]
  %569 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 3
  %570 = load i8, ptr %569, align 1
  %571 = and i8 %570, 3
  %572 = zext i8 %571 to i32
  %573 = getelementptr i16, ptr %566, i32 %572
  %574 = load i16, ptr %573, align 2
  %575 = zext i16 %574 to i32
  %576 = icmp ugt i32 %567, %575
  br i1 %576, label %577, label %582

577:                                              ; preds = %565
  %578 = load i8, ptr %373, align 1
  %579 = zext i8 %578 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.38, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %579, i32 noundef %567, i32 noundef %575) #10
  %580 = or i16 %574, %568
  store i16 %580, ptr %540, align 4
  %581 = load i32, ptr %33, align 4
  br label %582

582:                                              ; preds = %577, %565
  %583 = phi i32 [ %581, %577 ], [ %553, %565 ]
  %584 = phi i32 [ %575, %577 ], [ %567, %565 ]
  %585 = icmp eq i32 %583, 3
  br i1 %585, label %586, label %596

586:                                              ; preds = %582
  %587 = load i8, ptr %467, align 1
  %588 = and i8 %587, 3
  %589 = icmp eq i8 %588, 2
  %590 = icmp ne i32 %584, 512
  %591 = select i1 %589, i1 %590, i1 false
  br i1 %591, label %592, label %747

592:                                              ; preds = %586
  %593 = load i8, ptr %373, align 1
  %594 = zext i8 %593 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %594, i32 noundef %584) #10
  %595 = load i32, ptr %33, align 4
  br label %596

596:                                              ; preds = %592, %582
  %597 = phi i32 [ %583, %582 ], [ %595, %592 ]
  %598 = icmp ugt i32 %597, 4
  br i1 %598, label %599, label %747

599:                                              ; preds = %596
  %600 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 1
  %601 = load i8, ptr %600, align 1
  %602 = icmp ne i8 %601, 48
  %603 = icmp slt i32 %366, 6
  %604 = or i1 %603, %602
  br i1 %604, label %605, label %616

605:                                              ; preds = %599
  %606 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %607 = load i8, ptr %606, align 2
  %608 = zext i8 %607 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.40, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %608) #10
  %609 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1
  store i8 6, ptr %609, align 1
  %610 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1, i32 1
  store i8 48, ptr %610, align 1
  %611 = load i8, ptr %569, align 1
  %612 = trunc i8 %611 to i2
  switch i2 %612, label %747 [
    i2 1, label %613
    i2 -1, label %613
  ]

613:                                              ; preds = %605, %605
  %614 = load i16, ptr %540, align 4
  %615 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1, i32 4
  store i16 %614, ptr %615, align 1
  br label %747

616:                                              ; preds = %599
  %617 = load i8, ptr %365, align 1
  %618 = zext i8 %617 to i32
  %619 = getelementptr i8, ptr %365, i32 %618
  %620 = sub nsw i32 %366, %618
  %621 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %621, ptr noundef align 1 dereferenceable(6) %365, i32 6, i1 false) #9
  %622 = load i8, ptr %569, align 1
  %623 = and i8 %622, 3
  %624 = icmp eq i8 %623, 0
  %625 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 2
  %626 = load i8, ptr %625, align 1
  br i1 %624, label %627, label %629

627:                                              ; preds = %616
  %628 = icmp eq i8 %626, 0
  br i1 %628, label %641, label %631

629:                                              ; preds = %616
  %630 = icmp ugt i8 %626, 15
  br i1 %630, label %631, label %641

631:                                              ; preds = %629, %627
  %632 = phi ptr [ @.str.41, %627 ], [ @.str.42, %629 ]
  %633 = phi i8 [ 0, %627 ], [ 15, %629 ]
  %634 = zext i8 %626 to i32
  %635 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %636 = load i8, ptr %635, align 2
  %637 = zext i8 %636 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull %632, i32 noundef %634, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %637) #10
  %638 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1, i32 2
  store i8 %633, ptr %638, align 1
  %639 = load i8, ptr %569, align 1
  %640 = and i8 %639, 3
  br label %641

641:                                              ; preds = %631, %629, %627
  %642 = phi i8 [ %640, %631 ], [ %623, %629 ], [ 0, %627 ]
  %643 = phi i8 [ %639, %631 ], [ %622, %629 ], [ %622, %627 ]
  %644 = icmp eq i8 %642, 0
  %645 = trunc i8 %643 to i2
  switch i2 %645, label %677 [
    i2 -1, label %649
    i2 0, label %649
    i2 -2, label %659
    i2 1, label %646
  ]

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 3
  %648 = load i8, ptr %647, align 1
  br label %669

649:                                              ; preds = %641, %641
  %650 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 3
  %651 = load i8, ptr %650, align 1
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %682, label %653

653:                                              ; preds = %649
  %654 = select i1 %644, ptr @.str.44, ptr @.str.45
  %655 = zext i8 %651 to i32
  %656 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %657 = load i8, ptr %656, align 2
  %658 = zext i8 %657 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull %654, i32 noundef %655, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %658) #10
  br label %678

659:                                              ; preds = %641
  %660 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 3
  %661 = load i8, ptr %660, align 1
  %662 = icmp ugt i8 %661, 16
  br i1 %662, label %663, label %667

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %665 = load i8, ptr %664, align 2
  %666 = zext i8 %665 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.46, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %666) #10
  br label %678

667:                                              ; preds = %659
  %668 = icmp eq i8 %642, 1
  br i1 %668, label %669, label %682

669:                                              ; preds = %667, %646
  %670 = phi i8 [ %648, %646 ], [ %661, %667 ]
  %671 = and i8 %670, -125
  %672 = icmp eq i8 %671, 3
  br i1 %672, label %673, label %682

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %675 = load i8, ptr %674, align 2
  %676 = zext i8 %675 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.47, i32 noundef 4, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %676) #10
  br label %678

677:                                              ; preds = %641
  unreachable

678:                                              ; preds = %673, %663, %653
  %679 = phi i8 [ 16, %663 ], [ 2, %673 ], [ 0, %653 ]
  %680 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1, i32 3
  store i8 %679, ptr %680, align 1
  %681 = load i8, ptr %569, align 1
  br label %682

682:                                              ; preds = %678, %669, %667, %649
  %683 = phi i8 [ %681, %678 ], [ %643, %669 ], [ %643, %667 ], [ %643, %649 ]
  %684 = and i8 %683, 3
  %685 = icmp eq i8 %684, 1
  br i1 %685, label %686, label %700

686:                                              ; preds = %682
  %687 = load i8, ptr %625, align 1
  %688 = zext i8 %687 to i32
  %689 = add nuw nsw i32 %688, 1
  %690 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 3
  %691 = load i8, ptr %690, align 1
  %692 = and i8 %691, 3
  %693 = add nuw nsw i8 %692, 1
  %694 = zext i8 %693 to i32
  %695 = mul nuw nsw i32 %689, %694
  %696 = load i16, ptr %540, align 1
  %697 = and i16 %696, 2047
  %698 = zext i16 %697 to i32
  %699 = mul nuw nsw i32 %695, %698
  br label %710

700:                                              ; preds = %682
  %701 = icmp eq i8 %684, 3
  br i1 %701, label %702, label %724

702:                                              ; preds = %700
  %703 = load i16, ptr %540, align 1
  %704 = and i16 %703, 2047
  %705 = zext i16 %704 to i32
  %706 = load i8, ptr %625, align 1
  %707 = zext i8 %706 to i32
  %708 = add nuw nsw i32 %707, 1
  %709 = mul nuw nsw i32 %708, %705
  br label %710

710:                                              ; preds = %702, %686
  %711 = phi i32 [ %699, %686 ], [ %709, %702 ]
  %712 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 4
  %713 = load i16, ptr %712, align 1
  %714 = zext i16 %713 to i32
  %715 = icmp ult i32 %711, %714
  br i1 %715, label %716, label %724

716:                                              ; preds = %710
  %717 = select i1 %685, ptr @.str.49, ptr @.str.50
  %718 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %719 = load i8, ptr %718, align 2
  %720 = zext i8 %719 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.48, ptr noundef nonnull %717, i32 noundef %714, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %720, i32 noundef %711) #10
  %721 = trunc i32 %711 to i16
  %722 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 1, i32 4
  store i16 %721, ptr %722, align 1
  %723 = load i8, ptr %569, align 1
  br label %724

724:                                              ; preds = %716, %710, %700
  %725 = phi i8 [ %683, %700 ], [ %723, %716 ], [ %683, %710 ]
  %726 = and i8 %725, 3
  %727 = icmp eq i8 %726, 1
  br i1 %727, label %728, label %745

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %365, i32 0, i32 3
  %730 = load i8, ptr %729, align 1
  %731 = icmp sgt i8 %730, -1
  br i1 %731, label %745, label %732

732:                                              ; preds = %728
  %733 = getelementptr inbounds %struct.usb_ssp_isoc_ep_comp_descriptor, ptr %619, i32 0, i32 1
  %734 = load i8, ptr %733, align 1
  %735 = icmp ne i8 %734, 49
  %736 = icmp slt i32 %620, 8
  %737 = or i1 %736, %735
  br i1 %737, label %738, label %742

738:                                              ; preds = %732
  %739 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %463, i32 0, i32 2
  %740 = load i8, ptr %739, align 2
  %741 = zext i8 %740 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.51, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %741) #10
  br label %745

742:                                              ; preds = %732
  %743 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 2
  %744 = load i64, ptr %619, align 1
  store i64 %744, ptr %743, align 1
  br label %745

745:                                              ; preds = %742, %738, %728, %724
  %746 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 7
  store ptr %365, ptr %746, align 4
  br label %750

747:                                              ; preds = %613, %605, %596, %586
  %748 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 7
  store ptr %365, ptr %748, align 4
  %749 = icmp sgt i32 %366, 0
  br i1 %749, label %750, label %764

750:                                              ; preds = %747, %745
  br label %751

751:                                              ; preds = %758, %750
  %752 = phi ptr [ %761, %758 ], [ %365, %750 ]
  %753 = phi i32 [ %762, %758 ], [ %366, %750 ]
  %754 = getelementptr inbounds %struct.usb_descriptor_header, ptr %752, i32 0, i32 1
  %755 = load i8, ptr %754, align 1
  %756 = and i8 %755, -2
  %757 = icmp eq i8 %756, 4
  br i1 %757, label %764, label %758

758:                                              ; preds = %751
  %759 = load i8, ptr %752, align 1
  %760 = zext i8 %759 to i32
  %761 = getelementptr i8, ptr %752, i32 %760
  %762 = sub nsw i32 %753, %760
  %763 = icmp sgt i32 %762, 0
  br i1 %763, label %751, label %764

764:                                              ; preds = %758, %751, %747
  %765 = phi ptr [ %365, %747 ], [ %752, %751 ], [ %761, %758 ]
  %766 = ptrtoint ptr %765 to i32
  %767 = ptrtoint ptr %365 to i32
  %768 = sub i32 %766, %767
  %769 = getelementptr %struct.usb_host_endpoint, ptr %462, i32 %460, i32 8
  store i32 %768, ptr %769, align 4
  br label %790

770:                                              ; preds = %456, %446, %380, %379, %370
  %771 = icmp sgt i32 %366, 0
  br i1 %771, label %772, label %785

772:                                              ; preds = %779, %770
  %773 = phi ptr [ %782, %779 ], [ %365, %770 ]
  %774 = phi i32 [ %783, %779 ], [ %366, %770 ]
  %775 = getelementptr inbounds %struct.usb_descriptor_header, ptr %773, i32 0, i32 1
  %776 = load i8, ptr %775, align 1
  %777 = and i8 %776, -2
  %778 = icmp eq i8 %777, 4
  br i1 %778, label %785, label %779

779:                                              ; preds = %772
  %780 = load i8, ptr %773, align 1
  %781 = zext i8 %780 to i32
  %782 = getelementptr i8, ptr %773, i32 %781
  %783 = sub nsw i32 %774, %781
  %784 = icmp sgt i32 %783, 0
  br i1 %784, label %772, label %785

785:                                              ; preds = %779, %772, %770
  %786 = phi ptr [ %365, %770 ], [ %773, %772 ], [ %782, %779 ]
  %787 = ptrtoint ptr %786 to i32
  %788 = ptrtoint ptr %365 to i32
  %789 = sub i32 %787, %788
  br label %790

790:                                              ; preds = %785, %764
  %791 = phi i32 [ %789, %785 ], [ %768, %764 ]
  %792 = add i32 %791, %364
  %793 = icmp slt i32 %792, 0
  br i1 %793, label %868, label %794

794:                                              ; preds = %790
  %795 = add i32 %358, 1
  %796 = getelementptr i8, ptr %356, i32 %792
  %797 = sub i32 %357, %792
  %798 = icmp sgt i32 %797, 0
  br i1 %798, label %355, label %799

799:                                              ; preds = %794, %355, %349
  %800 = phi i32 [ 0, %349 ], [ %358, %355 ], [ %795, %794 ]
  %801 = phi ptr [ %334, %349 ], [ %356, %355 ], [ %796, %794 ]
  %802 = icmp eq i32 %800, %338
  br i1 %802, label %806, label %803

803:                                              ; preds = %799
  %804 = icmp eq i32 %800, 1
  %805 = select i1 %804, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef %88, i32 noundef %267, i32 noundef %292, i32 noundef %800, ptr noundef nonnull %805, i32 noundef %338) #10
  br label %806

806:                                              ; preds = %803, %799
  %807 = ptrtoint ptr %801 to i32
  %808 = ptrtoint ptr %258 to i32
  %809 = sub i32 %807, %808
  br label %830

810:                                              ; preds = %305, %283, %279, %276, %264, %256
  %811 = icmp sgt i32 %262, 0
  br i1 %811, label %812, label %824

812:                                              ; preds = %818, %810
  %813 = phi ptr [ %821, %818 ], [ %261, %810 ]
  %814 = phi i32 [ %822, %818 ], [ %262, %810 ]
  %815 = getelementptr inbounds %struct.usb_descriptor_header, ptr %813, i32 0, i32 1
  %816 = load i8, ptr %815, align 1
  %817 = icmp eq i8 %816, 4
  br i1 %817, label %824, label %818

818:                                              ; preds = %812
  %819 = load i8, ptr %813, align 1
  %820 = zext i8 %819 to i32
  %821 = getelementptr i8, ptr %813, i32 %820
  %822 = sub nsw i32 %814, %820
  %823 = icmp sgt i32 %822, 0
  br i1 %823, label %812, label %824

824:                                              ; preds = %818, %812, %810
  %825 = phi ptr [ %261, %810 ], [ %821, %818 ], [ %813, %812 ]
  %826 = ptrtoint ptr %825 to i32
  %827 = ptrtoint ptr %261 to i32
  %828 = sub i32 %260, %827
  %829 = add i32 %828, %826
  br label %830

830:                                              ; preds = %824, %806
  %831 = phi i32 [ %829, %824 ], [ %809, %806 ]
  %832 = icmp slt i32 %831, 0
  br i1 %832, label %868, label %833

833:                                              ; preds = %830
  %834 = getelementptr i8, ptr %258, i32 %831
  %835 = sub i32 %257, %831
  %836 = icmp sgt i32 %835, 0
  br i1 %836, label %256, label %255

837:                                              ; preds = %865, %255
  %838 = phi i32 [ %866, %865 ], [ 0, %255 ]
  %839 = getelementptr %struct.usb_host_config, ptr %68, i32 %35, i32 4, i32 %838
  %840 = load ptr, ptr %839, align 4
  %841 = load i32, ptr %840, align 4
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %865, label %843

843:                                              ; preds = %837
  %844 = getelementptr [32 x i8], ptr %2, i32 0, i32 %838
  br label %845

845:                                              ; preds = %861, %843
  %846 = phi i32 [ %841, %843 ], [ %862, %861 ]
  %847 = phi i32 [ 0, %843 ], [ %863, %861 ]
  br label %851

848:                                              ; preds = %851
  %849 = add nuw i32 %852, 1
  %850 = icmp eq i32 %849, %846
  br i1 %850, label %857, label %851

851:                                              ; preds = %848, %845
  %852 = phi i32 [ 0, %845 ], [ %849, %848 ]
  %853 = getelementptr %struct.usb_interface_cache, ptr %840, i32 0, i32 2, i32 %852, i32 0, i32 3
  %854 = load i8, ptr %853, align 1
  %855 = zext i8 %854 to i32
  %856 = icmp eq i32 %847, %855
  br i1 %856, label %861, label %848

857:                                              ; preds = %848
  %858 = load i8, ptr %844, align 1
  %859 = zext i8 %858 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %88, i32 noundef %859, i32 noundef %847) #10
  %860 = load i32, ptr %840, align 4
  br label %861

861:                                              ; preds = %857, %851
  %862 = phi i32 [ %860, %857 ], [ %846, %851 ]
  %863 = add nuw i32 %847, 1
  %864 = icmp ult i32 %863, %862
  br i1 %864, label %845, label %865

865:                                              ; preds = %861, %837
  %866 = add nuw nsw i32 %838, 1
  %867 = icmp eq i32 %866, %174
  br i1 %867, label %871, label %837

868:                                              ; preds = %830, %790, %343, %218, %82
  %869 = phi i32 [ -22, %82 ], [ %792, %790 ], [ -12, %343 ], [ %831, %830 ], [ -12, %218 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  %870 = add nuw i32 %35, 1
  br label %874

871:                                              ; preds = %865, %255
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  %872 = add nuw nsw i32 %35, 1
  %873 = icmp eq i32 %872, %14
  br i1 %873, label %874, label %34

874:                                              ; preds = %871, %868, %60, %46, %45, %41, %39, %28
  %875 = phi i32 [ %35, %39 ], [ %35, %41 ], [ %35, %45 ], [ %35, %60 ], [ %870, %868 ], [ 0, %28 ], [ %14, %871 ], [ %35, %46 ]
  %876 = phi i32 [ %37, %39 ], [ -32, %41 ], [ -22, %45 ], [ %58, %60 ], [ %869, %868 ], [ 0, %28 ], [ 0, %871 ], [ -12, %46 ]
  tail call void @kfree(ptr noundef nonnull %26) #9
  %877 = trunc i32 %875 to i8
  store i8 %877, ptr %5, align 1
  br label %878

878:                                              ; preds = %874, %24, %19, %13, %12
  %879 = phi i32 [ -22, %12 ], [ %876, %874 ], [ -12, %13 ], [ -12, %19 ], [ -12, %24 ]
  ret i32 %879
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_release_bos_descriptor(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %6) #9
  %7 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %7) #9
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_bos_descriptor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 5) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %121, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 5) #9
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp ult i8 %10, 5
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #10
  %14 = icmp sgt i32 %7, -1
  %15 = select i1 %14, i32 -42, i32 %7
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %121

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %4, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %4, i32 0, i32 3
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  tail call void @kfree(ptr noundef nonnull %4) #9
  %23 = icmp ult i32 %19, %11
  br i1 %23, label %121, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 24) #12
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %121, label %29

29:                                               ; preds = %24
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %114, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %27, align 4
  store ptr %30, ptr %33, align 4
  %34 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull %30, i32 noundef %19) #9
  %35 = icmp slt i32 %34, %19
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #10
  %37 = icmp sgt i32 %34, -1
  %38 = select i1 %37, i32 -42, i32 %34
  br label %114

39:                                               ; preds = %32
  %40 = getelementptr i8, ptr %30, i32 %11
  %41 = icmp eq i8 %21, 0
  br i1 %41, label %105, label %42

42:                                               ; preds = %39
  %43 = sub nsw i32 %19, %11
  br label %44

44:                                               ; preds = %95, %42
  %45 = phi i32 [ %98, %95 ], [ 0, %42 ]
  %46 = phi i32 [ %97, %95 ], [ %43, %42 ]
  %47 = phi ptr [ %96, %95 ], [ %40, %42 ]
  %48 = icmp ult i32 %46, 3
  br i1 %48, label %100, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr %47, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %100, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.usb_dev_cap_header, ptr %47, i32 0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr [256 x i8], ptr @bos_desc_len, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = icmp ne i8 %58, 0
  %60 = icmp ult i8 %50, %58
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %100, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.usb_dev_cap_header, ptr %47, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 16
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.10) #10
  br label %95

67:                                               ; preds = %62
  switch i8 %55, label %92 [
    i8 11, label %87
    i8 2, label %68
    i8 3, label %71
    i8 10, label %74
    i8 4, label %84
  ]

68:                                               ; preds = %67
  %69 = load ptr, ptr %27, align 4
  %70 = getelementptr inbounds %struct.usb_host_bos, ptr %69, i32 0, i32 1
  br label %90

71:                                               ; preds = %67
  %72 = load ptr, ptr %27, align 4
  %73 = getelementptr inbounds %struct.usb_host_bos, ptr %72, i32 0, i32 2
  br label %90

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %47, i32 0, i32 4
  %76 = load i32, ptr %75, align 1
  %77 = shl i32 %76, 2
  %78 = and i32 %77, 124
  %79 = add nuw nsw i32 %78, 16
  %80 = icmp ugt i32 %79, %51
  br i1 %80, label %92, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr %27, align 4
  %83 = getelementptr inbounds %struct.usb_host_bos, ptr %82, i32 0, i32 3
  br label %90

84:                                               ; preds = %67
  %85 = load ptr, ptr %27, align 4
  %86 = getelementptr inbounds %struct.usb_host_bos, ptr %85, i32 0, i32 4
  br label %90

87:                                               ; preds = %67
  %88 = load ptr, ptr %27, align 4
  %89 = getelementptr inbounds %struct.usb_host_bos, ptr %88, i32 0, i32 5
  br label %90

90:                                               ; preds = %87, %84, %81, %71, %68
  %91 = phi ptr [ %83, %81 ], [ %89, %87 ], [ %86, %84 ], [ %73, %71 ], [ %70, %68 ]
  store ptr %47, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %74, %67
  %93 = sub i32 %46, %51
  %94 = getelementptr i8, ptr %47, i32 %51
  br label %95

95:                                               ; preds = %92, %66
  %96 = phi ptr [ %47, %66 ], [ %94, %92 ]
  %97 = phi i32 [ %46, %66 ], [ %93, %92 ]
  %98 = add nuw nsw i32 %45, 1
  %99 = icmp eq i32 %98, %22
  br i1 %99, label %105, label %44

100:                                              ; preds = %53, %49, %44
  %101 = trunc i32 %45 to i8
  %102 = load ptr, ptr %27, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %103, i32 0, i32 3
  store i8 %101, ptr %104, align 1
  br label %105

105:                                              ; preds = %100, %95, %39
  %106 = phi ptr [ %40, %39 ], [ %47, %100 ], [ %96, %95 ]
  %107 = ptrtoint ptr %106 to i32
  %108 = ptrtoint ptr %30 to i32
  %109 = sub i32 %107, %108
  %110 = trunc i32 %109 to i16
  %111 = load ptr, ptr %27, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %112, i32 0, i32 2
  store i16 %110, ptr %113, align 1
  br label %121

114:                                              ; preds = %36, %29
  %115 = phi i32 [ %38, %36 ], [ -12, %29 ]
  %116 = load ptr, ptr %27, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %116, align 4
  tail call void @kfree(ptr noundef %119) #9
  %120 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %120) #9
  store ptr null, ptr %27, align 4
  br label %121

121:                                              ; preds = %118, %114, %105, %24, %16, %13, %1
  %122 = phi i32 [ %15, %13 ], [ 0, %105 ], [ -12, %1 ], [ -22, %16 ], [ -12, %24 ], [ %115, %114 ], [ %115, %118 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_endpoint_is_ignored(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2148232010}
!9 = !{i64 628171, i64 2148118142, i64 2148118168, i64 2148118215, i64 2148118237, i64 2148118265, i64 2148118285}
!10 = !{i64 2148134169, i64 2148134201, i64 2148134230, i64 2148134264, i64 2148134295, i64 2148134318}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149425359}
!13 = !{!"auto-init"}
!14 = !{i32 0, i32 33}
