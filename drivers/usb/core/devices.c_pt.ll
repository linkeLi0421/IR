; ModuleID = '/llk/IR/drivers/usb/core/devices.c_pt.bc'
source_filename = "../drivers/usb/core/devices.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class_info = type { i32, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
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
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@usbfs_devices_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @usb_device_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@.str = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"5000\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"10000\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@format_topo = internal constant [85 x i8] c"\0AT:  Bus=%2.2d Lev=%2.2d Prnt=%2.2d Port=%2.2d Cnt=%2.2d Dev#=%3d Spd=%-4s MxCh=%2d\0A\00", align 1
@format_bandwidth = internal constant [50 x i8] c"B:  Alloc=%3d/%3d us (%2d%%), #Int=%3d, #Iso=%3d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(truncated)\0A\00", align 1
@format_device1 = internal constant [71 x i8] c"D:  Ver=%2x.%02x Cls=%02x(%-5s) Sub=%02x Prot=%02x MxPS=%2d #Cfgs=%3d\0A\00", align 1
@format_device2 = internal constant [42 x i8] c"P:  Vendor=%04x ProdID=%04x Rev=%2x.%02x\0A\00", align 1
@clas_info = internal unnamed_addr constant [22 x %struct.class_info] [%struct.class_info { i32 0, ptr @.str.7 }, %struct.class_info { i32 1, ptr @.str.8 }, %struct.class_info { i32 2, ptr @.str.9 }, %struct.class_info { i32 3, ptr @.str.10 }, %struct.class_info { i32 5, ptr @.str.11 }, %struct.class_info { i32 6, ptr @.str.12 }, %struct.class_info { i32 7, ptr @.str.13 }, %struct.class_info { i32 8, ptr @.str.14 }, %struct.class_info { i32 9, ptr @.str.15 }, %struct.class_info { i32 10, ptr @.str.16 }, %struct.class_info { i32 11, ptr @.str.17 }, %struct.class_info { i32 13, ptr @.str.18 }, %struct.class_info { i32 14, ptr @.str.19 }, %struct.class_info { i32 15, ptr @.str.20 }, %struct.class_info { i32 16, ptr @.str.21 }, %struct.class_info { i32 17, ptr @.str.22 }, %struct.class_info { i32 18, ptr @.str.23 }, %struct.class_info { i32 224, ptr @.str.24 }, %struct.class_info { i32 239, ptr @.str.25 }, %struct.class_info { i32 254, ptr @.str.26 }, %struct.class_info { i32 255, ptr @.str.27 }, %struct.class_info { i32 -1, ptr @.str.28 }], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c">ifc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"comm.\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"still\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stor.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"scard\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"c-sec\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"perhc\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"blbrd\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"bridg\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"wlcon\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"app.\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"vend.\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"unk.\00", align 1
@format_string_manufacturer = internal constant [25 x i8] c"S:  Manufacturer=%.100s\0A\00", align 1
@format_string_product = internal constant [20 x i8] c"S:  Product=%.100s\0A\00", align 1
@format_string_serialnumber = internal constant [25 x i8] c"S:  SerialNumber=%.100s\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1
@format_config = internal constant [45 x i8] c"C:%c #Ifs=%2d Cfg#=%2d Atr=%02x MxPwr=%3dmA\0A\00", align 1
@format_iad = internal constant [64 x i8] c"A:  FirstIf#=%2d IfCount=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x\0A\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@format_iface = internal constant [75 x i8] c"I:%c If#=%2d Alt=%2d #EPs=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x Driver=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1
@format_endpt = internal constant [51 x i8] c"E:  Ad=%02x(%c) Atr=%02x(%-4s) MxPS=%4d Ivl=%d%cs\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@switch.table.usb_device_dump = private unnamed_addr constant [7 x ptr] [ptr @.str.1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_device_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #1 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %9 = load i64, ptr %3, align 8
  store i64 %9, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #7
  store i32 0, ptr %8, align 4
  %14 = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %8) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %34, %13
  %17 = phi ptr [ %38, %34 ], [ %14, %13 ]
  %18 = phi i32 [ %35, %34 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 14
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.usb_bus, ptr %17, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15, i32 9
  call void @mutex_lock(ptr noundef %26) #7
  %27 = load ptr, ptr %24, align 4
  %28 = call fastcc i32 @usb_device_dump(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %27, ptr noundef nonnull %17, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %30) #7
  %31 = icmp slt i32 %28, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = add i32 %28, %18
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i32 [ %33, %32 ], [ %18, %16 ]
  %36 = load i32, ptr %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %8, align 4
  %38 = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %8) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16

40:                                               ; preds = %34, %23, %13
  %41 = phi i32 [ 0, %13 ], [ %28, %23 ], [ %35, %34 ]
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #7
  br label %42

42:                                               ; preds = %40, %11, %4
  %43 = phi i32 [ -22, %4 ], [ 0, %11 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_device_dump(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #1 {
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp sgt i32 %6, 6
  %13 = or i1 %12, %11
  br i1 %13, label %457, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @__get_free_pages(i32 noundef 3072, i32 noundef 1) #7
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %457, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8
  %24 = icmp eq i32 %23, -1
  %25 = select i1 %24, i32 0, i32 %23
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ 0, %18 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 7
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds [7 x ptr], ptr @switch.table.usb_device_dump, i32 0, i32 %29
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi ptr [ %33, %31 ], [ @.str.5, %26 ]
  %36 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 35
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %16, ptr noundef nonnull @format_topo, i32 noundef %37, i32 noundef %6, i32 noundef %27, i32 noundef %7, i32 noundef %8, i32 noundef %38, ptr noundef nonnull %35, i32 noundef %40)
  %42 = getelementptr i8, ptr %16, i32 %41
  %43 = icmp eq i32 %6, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %34
  %45 = load i32, ptr %28, align 4
  %46 = icmp eq i32 %45, 3
  %47 = icmp ugt i32 %45, 4
  %48 = or i1 %46, %47
  %49 = select i1 %48, i32 800, i32 900
  %50 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, 100
  %53 = lshr exact i32 %49, 1
  %54 = add i32 %53, %52
  %55 = sdiv i32 %54, %49
  %56 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %42, ptr noundef nonnull @format_bandwidth, i32 noundef %51, i32 noundef %49, i32 noundef %55, i32 noundef %57, i32 noundef %59)
  %61 = getelementptr i8, ptr %42, i32 %60
  br label %62

62:                                               ; preds = %44, %34
  %63 = phi ptr [ %61, %44 ], [ %42, %34 ]
  %64 = getelementptr i8, ptr %16, i32 7936
  %65 = icmp ugt ptr %63, %64
  br i1 %65, label %378, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 9
  %68 = load i16, ptr %67, align 1
  %69 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 2
  %70 = load i16, ptr %69, align 1
  %71 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  br label %74

74:                                               ; preds = %74, %66
  %75 = phi i32 [ 0, %66 ], [ %81, %74 ]
  %76 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  %79 = icmp eq i32 %77, %73
  %80 = or i1 %78, %79
  %81 = add nuw nsw i32 %75, 1
  br i1 %80, label %82, label %74

82:                                               ; preds = %74
  %83 = zext i16 %70 to i32
  %84 = lshr i32 %83, 8
  %85 = and i32 %83, 255
  %86 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %75, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 4
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 5
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 6
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 13
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %63, ptr noundef nonnull @format_device1, i32 noundef %84, i32 noundef %85, i32 noundef %73, ptr noundef %87, i32 noundef %90, i32 noundef %93, i32 noundef %96, i32 noundef %99) #7
  %101 = getelementptr i8, ptr %63, i32 %100
  %102 = icmp ugt ptr %101, %64
  br i1 %102, label %115, label %103

103:                                              ; preds = %82
  %104 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 7
  %105 = load i16, ptr %104, align 1
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 8
  %108 = load i16, ptr %107, align 1
  %109 = zext i16 %108 to i32
  %110 = zext i16 %68 to i32
  %111 = lshr i32 %110, 8
  %112 = and i32 %110, 255
  %113 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %101, ptr noundef nonnull @format_device2, i32 noundef %106, i32 noundef %109, i32 noundef %111, i32 noundef %112) #7
  %114 = getelementptr i8, ptr %101, i32 %113
  br label %115

115:                                              ; preds = %103, %82
  %116 = phi ptr [ %114, %103 ], [ %101, %82 ]
  %117 = icmp ugt ptr %116, %64
  br i1 %117, label %378, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 32
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %116, ptr noundef nonnull @format_string_manufacturer, ptr noundef nonnull %120) #7
  %124 = getelementptr i8, ptr %116, i32 %123
  br label %125

125:                                              ; preds = %122, %118
  %126 = phi ptr [ %124, %122 ], [ %116, %118 ]
  %127 = icmp ugt ptr %126, %64
  br i1 %127, label %145, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 31
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %126, ptr noundef nonnull @format_string_product, ptr noundef nonnull %130) #7
  %134 = getelementptr i8, ptr %126, i32 %133
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi ptr [ %134, %132 ], [ %126, %128 ]
  %137 = icmp ugt ptr %136, %64
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 33
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %136, ptr noundef nonnull @format_string_serialnumber, ptr noundef nonnull %140) #7
  %144 = getelementptr i8, ptr %136, i32 %143
  br label %145

145:                                              ; preds = %142, %138, %135, %125
  %146 = phi ptr [ %126, %125 ], [ %136, %135 ], [ %144, %142 ], [ %136, %138 ]
  %147 = load i8, ptr %97, align 1
  %148 = icmp eq i8 %147, 0
  %149 = icmp ugt ptr %146, %64
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %378, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 19
  %153 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 20
  br label %154

154:                                              ; preds = %370, %151
  %155 = phi i32 [ 0, %151 ], [ %372, %370 ]
  %156 = phi ptr [ %146, %151 ], [ %371, %370 ]
  %157 = load i32, ptr %28, align 4
  %158 = load ptr, ptr %152, align 8
  %159 = getelementptr %struct.usb_host_config, ptr %158, i32 %155
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(19) %156, ptr noundef nonnull align 1 dereferenceable(19) @.str.29, i32 19, i1 false) #7
  %162 = getelementptr i8, ptr %156, i32 18
  br label %370

163:                                              ; preds = %154
  %164 = load ptr, ptr %153, align 4
  %165 = icmp eq ptr %159, %164
  %166 = icmp sgt i32 %157, 4
  %167 = select i1 %166, i32 8, i32 2
  %168 = select i1 %165, i32 42, i32 32
  %169 = getelementptr inbounds %struct.usb_config_descriptor, ptr %159, i32 0, i32 3
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds %struct.usb_config_descriptor, ptr %159, i32 0, i32 4
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = getelementptr inbounds %struct.usb_config_descriptor, ptr %159, i32 0, i32 6
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds %struct.usb_config_descriptor, ptr %159, i32 0, i32 7
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = mul nuw nsw i32 %167, %180
  %182 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %156, ptr noundef nonnull @format_config, i32 noundef %168, i32 noundef %171, i32 noundef %174, i32 noundef %177, i32 noundef %181) #7
  %183 = getelementptr i8, ptr %156, i32 %182
  br label %184

184:                                              ; preds = %221, %163
  %185 = phi i32 [ 0, %163 ], [ %223, %221 ]
  %186 = phi ptr [ %183, %163 ], [ %222, %221 ]
  %187 = getelementptr %struct.usb_host_config, ptr %158, i32 %155, i32 2, i32 %185
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %225, label %190

190:                                              ; preds = %184
  %191 = icmp ugt ptr %186, %64
  br i1 %191, label %221, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 2
  %194 = load i8, ptr %193, align 1
  %195 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 4
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  br label %200

200:                                              ; preds = %200, %192
  %201 = phi i32 [ 0, %192 ], [ %207, %200 ]
  %202 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %201
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, -1
  %205 = icmp eq i32 %203, %199
  %206 = or i1 %204, %205
  %207 = add nuw nsw i32 %201, 1
  br i1 %206, label %208, label %200

208:                                              ; preds = %200
  %209 = zext i8 %194 to i32
  %210 = zext i8 %196 to i32
  %211 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %201, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 5
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %188, i32 0, i32 6
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %186, ptr noundef nonnull @format_iad, i32 noundef %209, i32 noundef %210, i32 noundef %199, ptr noundef %212, i32 noundef %215, i32 noundef %218) #7
  %220 = getelementptr i8, ptr %186, i32 %219
  br label %221

221:                                              ; preds = %208, %190
  %222 = phi ptr [ %220, %208 ], [ %186, %190 ]
  %223 = add nuw nsw i32 %185, 1
  %224 = icmp eq i32 %223, 16
  br i1 %224, label %225, label %184

225:                                              ; preds = %221, %184
  %226 = phi ptr [ %186, %184 ], [ %222, %221 ]
  %227 = load i8, ptr %169, align 4
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %370, label %229

229:                                              ; preds = %225
  %230 = icmp eq i32 %157, 3
  br label %231

231:                                              ; preds = %364, %229
  %232 = phi i8 [ %227, %229 ], [ %365, %364 ]
  %233 = phi i32 [ 0, %229 ], [ %367, %364 ]
  %234 = phi ptr [ %226, %229 ], [ %366, %364 ]
  %235 = getelementptr %struct.usb_host_config, ptr %158, i32 %155, i32 4, i32 %233
  %236 = load ptr, ptr %235, align 4
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %364, label %239

239:                                              ; preds = %231
  %240 = getelementptr %struct.usb_host_config, ptr %158, i32 %155, i32 3, i32 %233
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  %243 = getelementptr inbounds %struct.usb_interface, ptr %241, i32 0, i32 7, i32 6
  %244 = getelementptr inbounds %struct.usb_interface, ptr %241, i32 0, i32 1
  br label %245

245:                                              ; preds = %357, %239
  %246 = phi i32 [ 0, %239 ], [ %359, %357 ]
  %247 = phi ptr [ %234, %239 ], [ %358, %357 ]
  %248 = icmp ugt ptr %247, %64
  br i1 %248, label %370, label %249

249:                                              ; preds = %245
  %250 = getelementptr %struct.usb_interface_cache, ptr %236, i32 0, i32 2, i32 %246
  br i1 %242, label %261, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %243, align 8
  %253 = icmp eq ptr %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %252, align 4
  br label %256

256:                                              ; preds = %254, %251
  %257 = phi ptr [ %255, %254 ], [ @.str.31, %251 ]
  %258 = load ptr, ptr %244, align 4
  %259 = icmp eq ptr %250, %258
  %260 = select i1 %259, i32 42, i32 32
  br label %261

261:                                              ; preds = %256, %249
  %262 = phi ptr [ %257, %256 ], [ @.str.30, %249 ]
  %263 = phi i32 [ %260, %256 ], [ 32, %249 ]
  %264 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 2
  %265 = load i8, ptr %264, align 1
  %266 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 3
  %267 = load i8, ptr %266, align 1
  %268 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 4
  %269 = load i8, ptr %268, align 1
  %270 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 5
  %271 = load i8, ptr %270, align 1
  %272 = zext i8 %271 to i32
  br label %273

273:                                              ; preds = %273, %261
  %274 = phi i32 [ 0, %261 ], [ %280, %273 ]
  %275 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %274
  %276 = load i32, ptr %275, align 4
  %277 = icmp eq i32 %276, -1
  %278 = icmp eq i32 %276, %272
  %279 = or i1 %277, %278
  %280 = add nuw nsw i32 %274, 1
  br i1 %279, label %281, label %273

281:                                              ; preds = %273
  %282 = zext i8 %265 to i32
  %283 = zext i8 %267 to i32
  %284 = zext i8 %269 to i32
  %285 = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %274, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 6
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  %290 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %250, i32 0, i32 7
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %247, ptr noundef nonnull @format_iface, i32 noundef %263, i32 noundef %282, i32 noundef %283, i32 noundef %284, i32 noundef %272, ptr noundef %286, i32 noundef %289, i32 noundef %292, ptr noundef %262) #7
  %294 = getelementptr i8, ptr %247, i32 %293
  %295 = getelementptr %struct.usb_interface_cache, ptr %236, i32 0, i32 2, i32 %246, i32 0, i32 4
  %296 = load i8, ptr %295, align 4
  %297 = icmp eq i8 %296, 0
  %298 = icmp ugt ptr %294, %64
  %299 = or i1 %297, %298
  br i1 %299, label %357, label %300

300:                                              ; preds = %281
  %301 = getelementptr %struct.usb_interface_cache, ptr %236, i32 0, i32 2, i32 %246, i32 3
  br label %302

302:                                              ; preds = %328, %300
  %303 = phi i32 [ 0, %300 ], [ %351, %328 ]
  %304 = phi ptr [ %294, %300 ], [ %350, %328 ]
  %305 = load ptr, ptr %301, align 4
  %306 = getelementptr %struct.usb_host_endpoint, ptr %305, i32 %303
  %307 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %306, i32 0, i32 2
  %308 = load i8, ptr %307, align 1
  %309 = icmp sgt i8 %308, -1
  %310 = select i1 %309, i8 79, i8 73
  br i1 %230, label %311, label %318

311:                                              ; preds = %302
  %312 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %306, i32 0, i32 4
  %313 = load i16, ptr %312, align 1
  %314 = lshr i16 %313, 11
  %315 = and i16 %314, 3
  %316 = add nuw nsw i16 %315, 1
  %317 = zext i16 %316 to i32
  br label %318

318:                                              ; preds = %311, %302
  %319 = phi i32 [ %317, %311 ], [ 1, %302 ]
  %320 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %306, i32 0, i32 3
  %321 = load i8, ptr %320, align 1
  %322 = and i8 %321, 3
  %323 = zext i8 %322 to i32
  switch i32 %323, label %327 [
    i32 0, label %328
    i32 1, label %324
    i32 2, label %325
    i32 3, label %326
  ]

324:                                              ; preds = %318
  br label %328

325:                                              ; preds = %318
  br label %328

326:                                              ; preds = %318
  br label %328

327:                                              ; preds = %318
  unreachable

328:                                              ; preds = %326, %325, %324, %318
  %329 = phi i8 [ %310, %326 ], [ %310, %325 ], [ %310, %324 ], [ 66, %318 ]
  %330 = phi ptr [ @.str.35, %326 ], [ @.str.34, %325 ], [ @.str.33, %324 ], [ @.str.32, %318 ]
  %331 = tail call i32 @usb_decode_interval(ptr noundef %306, i32 noundef %157) #7
  %332 = freeze i32 %331
  %333 = udiv i32 %332, 1000
  %334 = mul i32 %333, 1000
  %335 = sub i32 %332, %334
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %336, i32 109, i32 117
  %338 = select i1 %336, i32 %333, i32 %331
  %339 = load i8, ptr %307, align 1
  %340 = zext i8 %339 to i32
  %341 = zext i8 %329 to i32
  %342 = load i8, ptr %320, align 1
  %343 = zext i8 %342 to i32
  %344 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %306, i32 0, i32 4
  %345 = load i16, ptr %344, align 1
  %346 = and i16 %345, 2047
  %347 = zext i16 %346 to i32
  %348 = mul nuw nsw i32 %319, %347
  %349 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %304, ptr noundef nonnull @format_endpt, i32 noundef %340, i32 noundef %341, i32 noundef %343, ptr noundef nonnull %330, i32 noundef %348, i32 noundef %338, i32 noundef %337) #7
  %350 = getelementptr i8, ptr %304, i32 %349
  %351 = add nuw nsw i32 %303, 1
  %352 = load i8, ptr %295, align 4
  %353 = zext i8 %352 to i32
  %354 = icmp uge i32 %351, %353
  %355 = icmp ugt ptr %350, %64
  %356 = select i1 %354, i1 true, i1 %355
  br i1 %356, label %357, label %302

357:                                              ; preds = %328, %281
  %358 = phi ptr [ %294, %281 ], [ %350, %328 ]
  %359 = add nuw i32 %246, 1
  %360 = load i32, ptr %236, align 4
  %361 = icmp ult i32 %359, %360
  br i1 %361, label %245, label %362

362:                                              ; preds = %357
  %363 = load i8, ptr %169, align 4
  br label %364

364:                                              ; preds = %362, %231
  %365 = phi i8 [ %232, %231 ], [ %363, %362 ]
  %366 = phi ptr [ %234, %231 ], [ %358, %362 ]
  %367 = add nuw nsw i32 %233, 1
  %368 = zext i8 %365 to i32
  %369 = icmp ult i32 %367, %368
  br i1 %369, label %231, label %370

370:                                              ; preds = %364, %245, %225, %161
  %371 = phi ptr [ %162, %161 ], [ %226, %225 ], [ %247, %245 ], [ %366, %364 ]
  %372 = add nuw nsw i32 %155, 1
  %373 = load i8, ptr %97, align 1
  %374 = zext i8 %373 to i32
  %375 = icmp uge i32 %372, %374
  %376 = icmp ugt ptr %371, %64
  %377 = select i1 %375, i1 true, i1 %376
  br i1 %377, label %378, label %154

378:                                              ; preds = %370, %145, %115, %62
  %379 = phi ptr [ %63, %62 ], [ %116, %115 ], [ %146, %145 ], [ %371, %370 ]
  %380 = icmp ugt ptr %379, %64
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %379, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i32 13, i1 false)
  %382 = getelementptr i8, ptr %379, i32 12
  br label %383

383:                                              ; preds = %381, %378
  %384 = phi ptr [ %382, %381 ], [ %379, %378 ]
  %385 = ptrtoint ptr %384 to i32
  %386 = sub i32 %385, %15
  %387 = zext i32 %386 to i64
  %388 = load i64, ptr %2, align 8
  %389 = icmp slt i64 %388, %387
  br i1 %389, label %390, label %426

390:                                              ; preds = %383
  %391 = trunc i64 %388 to i32
  %392 = sub i32 %386, %391
  %393 = load i32, ptr %1, align 4
  %394 = tail call i32 @llvm.umin.i32(i32 %392, i32 %393)
  %395 = load ptr, ptr %0, align 4
  %396 = getelementptr i8, ptr %16, i32 %391
  %397 = icmp slt i32 %394, 0
  %398 = load i1, ptr @check_copy_size.__already_done, align 1
  %399 = xor i1 %398, true
  %400 = select i1 %397, i1 %399, i1 false
  br i1 %400, label %401, label %402, !prof !8

401:                                              ; preds = %390
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %402

402:                                              ; preds = %401, %390
  br i1 %397, label %417, label %403, !prof !8

403:                                              ; preds = %402
  %404 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %395, i32 %394, i32 -1090519040) #8, !srcloc !9
  %405 = extractvalue { i32, i32 } %404, 0
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = tail call ptr @llvm.thread.pointer() #7
  %409 = getelementptr inbounds %struct.thread_info, ptr %408, i32 0, i32 3
  %410 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %409) #9, !srcloc !10
  %411 = and i32 %410, -13
  %412 = or i32 %411, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %412) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  %413 = tail call i32 @arm_copy_to_user(ptr noundef %395, ptr noundef %396, i32 noundef %394) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %410) #7, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !12
  br label %414

414:                                              ; preds = %407, %403
  %415 = phi i32 [ %413, %407 ], [ %394, %403 ]
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %414, %402
  tail call void @free_pages(i32 noundef %15, i32 noundef 1) #7
  br label %457

418:                                              ; preds = %414
  %419 = load i32, ptr %1, align 4
  %420 = sub i32 %419, %394
  store i32 %420, ptr %1, align 4
  %421 = zext i32 %394 to i64
  %422 = load i64, ptr %3, align 8
  %423 = add i64 %422, %421
  store i64 %423, ptr %3, align 8
  %424 = load ptr, ptr %0, align 4
  %425 = getelementptr i8, ptr %424, i32 %394
  store ptr %425, ptr %0, align 4
  br label %428

426:                                              ; preds = %383
  %427 = sub i64 %388, %387
  br label %428

428:                                              ; preds = %426, %418
  %429 = phi i64 [ %427, %426 ], [ 0, %418 ]
  %430 = phi i32 [ 0, %426 ], [ %394, %418 ]
  store i64 %429, ptr %2, align 8
  tail call void @free_pages(i32 noundef %15, i32 noundef 1) #7
  %431 = tail call ptr @usb_hub_find_child(ptr noundef %4, i32 noundef 1) #7
  %432 = load i32, ptr %39, align 4
  %433 = icmp slt i32 %432, 1
  br i1 %433, label %457, label %434

434:                                              ; preds = %428
  %435 = add i32 %6, 1
  br label %436

436:                                              ; preds = %450, %434
  %437 = phi ptr [ %431, %434 ], [ %454, %450 ]
  %438 = phi i32 [ %430, %434 ], [ %452, %450 ]
  %439 = phi i32 [ 0, %434 ], [ %451, %450 ]
  %440 = phi i32 [ 1, %434 ], [ %453, %450 ]
  %441 = icmp eq ptr %437, null
  br i1 %441, label %450, label %442

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.usb_device, ptr %437, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %443) #7
  %444 = add i32 %440, -1
  %445 = add i32 %439, 1
  %446 = tail call fastcc i32 @usb_device_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %437, ptr noundef %5, i32 noundef %435, i32 noundef %444, i32 noundef %445)
  tail call void @mutex_unlock(ptr noundef %443) #7
  %447 = icmp eq i32 %446, -14
  br i1 %447, label %457, label %448

448:                                              ; preds = %442
  %449 = add i32 %446, %438
  br label %450

450:                                              ; preds = %448, %436
  %451 = phi i32 [ %445, %448 ], [ %439, %436 ]
  %452 = phi i32 [ %449, %448 ], [ %438, %436 ]
  %453 = add i32 %440, 1
  %454 = tail call ptr @usb_hub_find_child(ptr noundef %4, i32 noundef %453) #7
  %455 = load i32, ptr %39, align 4
  %456 = icmp sgt i32 %453, %455
  br i1 %456, label %457, label %436

457:                                              ; preds = %450, %442, %428, %417, %14, %9
  %458 = phi i32 [ -14, %417 ], [ 0, %9 ], [ -12, %14 ], [ %430, %428 ], [ %438, %442 ], [ %452, %450 ]
  ret i32 %458
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_decode_interval(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!9 = !{i64 2150976245, i64 2150976270}
!10 = !{i64 3471779}
!11 = !{i64 3471976}
!12 = !{i64 2150957255}
