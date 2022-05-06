; ModuleID = '/llk/IR/drivers/usb/gadget/legacy/ether.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/ether.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_eem_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.f_ecm_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.f_gether_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }

@__param_str_idVendor = internal constant [9 x i8] c"idVendor\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global %struct.usb_composite_overwrite zeroinitializer, align 4
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr @__this_module, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.90 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype318 = internal constant [25 x i8] c"parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor319 = internal constant [28 x i8] c"parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [10 x i8] c"idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr @__this_module, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.90 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype320 = internal constant [26 x i8] c"parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct321 = internal constant [30 x i8] c"parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [10 x i8] c"bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr @__this_module, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.90 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype322 = internal constant [26 x i8] c"parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice323 = internal constant [40 x i8] c"parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [14 x i8] c"iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.90 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype324 = internal constant [29 x i8] c"parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber325 = internal constant [39 x i8] c"parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [14 x i8] c"iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.90 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype326 = internal constant [29 x i8] c"parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer327 = internal constant [43 x i8] c"parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [9 x i8] c"iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.90 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype328 = internal constant [24 x i8] c"parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct329 = internal constant [33 x i8] c"parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [6 x i8] c"qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global i32 5, align 4
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype330 = internal constant [20 x i8] c"parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult331 = internal constant [55 x i8] c"parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [9 x i8] c"dev_addr\00", align 1
@dev_addr = internal global ptr null, align 4
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.90 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype332 = internal constant [24 x i8] c"parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr333 = internal constant [38 x i8] c"parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [10 x i8] c"host_addr\00", align 1
@host_addr = internal global ptr null, align 4
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr @__this_module, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.90 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype334 = internal constant [25 x i8] c"parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr335 = internal constant [37 x i8] c"parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__param_str_use_eem = internal constant [8 x i8] c"use_eem\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_eem = internal global i8 0, align 1
@__param_use_eem = internal constant %struct.kernel_param { ptr @__param_str_use_eem, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @use_eem } }, section "__param", align 4
@__UNIQUE_ID_use_eemtype336 = internal constant [22 x i8] c"parmtype=use_eem:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_eem337 = internal constant [30 x i8] c"parm=use_eem:use CDC EEM mode\00", section ".modinfo", align 1
@__UNIQUE_ID_description338 = internal constant [34 x i8] c"description=RNDIS/Ethernet Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author339 = internal constant [40 x i8] c"author=David Brownell, Benedikt Spanger\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@eth_driver = internal global %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @eth_bind, ptr @eth_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, align 4
@.str = private unnamed_addr constant [8 x i8] c"g_ether\00", align 1
@device_desc = internal global %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 2, i8 0, i8 0, i8 0, i16 1317, i16 -23391, i16 0, i8 0, i8 0, i8 0, i8 1 }, align 1
@dev_strings = internal global [2 x ptr] [ptr @stringtab_dev, ptr null], align 4
@stringtab_dev = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, align 4
@strings_dev = internal global [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"RNDIS/Ethernet Gadget\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eem\00", align 1
@fi_eem = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"CDC Ethernet (EEM)\00", align 1
@eth_config_driver = internal global %struct.usb_configuration { ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ecm\00", align 1
@fi_ecm = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"CDC Ethernet (ECM)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"geth\00", align 1
@fi_geth = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"CDC Subset/SAFE\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\016using host ethernet address: %s\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\016using self ethernet address: %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rndis\00", align 1
@fi_rndis = internal unnamed_addr global ptr null, align 4
@otg_desc = internal global [2 x ptr] zeroinitializer, align 4
@rndis_config_driver = internal global %struct.usb_configuration { ptr @.str.14, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"%s, version: Memorial Day 2008\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Ethernet Gadget\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"RNDIS\00", align 1
@f_rndis = internal unnamed_addr global ptr null, align 4
@f_eem = internal unnamed_addr global ptr null, align 4
@f_ecm = internal unnamed_addr global ptr null, align 4
@f_geth = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_bcdDevice323, ptr @__UNIQUE_ID_bcdDevicetype322, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_dev_addr333, ptr @__UNIQUE_ID_dev_addrtype332, ptr @__UNIQUE_ID_host_addr335, ptr @__UNIQUE_ID_host_addrtype334, ptr @__UNIQUE_ID_iManufacturer327, ptr @__UNIQUE_ID_iManufacturertype326, ptr @__UNIQUE_ID_iProduct329, ptr @__UNIQUE_ID_iProducttype328, ptr @__UNIQUE_ID_iSerialNumber325, ptr @__UNIQUE_ID_iSerialNumbertype324, ptr @__UNIQUE_ID_idProduct321, ptr @__UNIQUE_ID_idProducttype320, ptr @__UNIQUE_ID_idVendor319, ptr @__UNIQUE_ID_idVendortype318, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_qmult331, ptr @__UNIQUE_ID_qmulttype330, ptr @__UNIQUE_ID_use_eem337, ptr @__UNIQUE_ID_use_eemtype336, ptr @__param_bcdDevice, ptr @__param_dev_addr, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qmult, ptr @__param_use_eem], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_composite_probe(ptr noundef nonnull @eth_driver) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_composite_unregister(ptr noundef nonnull @eth_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eth_bind(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = load i8, ptr @use_eem, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.3) #4
  store ptr %6, ptr @fi_eem, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %124

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.f_eem_opts, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr @.str.4, ptr @eth_config_driver, align 4
  store i16 7531, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 258, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  br label %34

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.5) #4
  store ptr %19, ptr @fi_ecm, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %124

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.f_ecm_opts, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr @.str.6, ptr @eth_config_driver, align 4
  br label %34

26:                                               ; preds = %13
  %27 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.7) #4
  store ptr %27, ptr @fi_geth, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = ptrtoint ptr %27 to i32
  br label %124

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.f_gether_opts, ptr %27, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr @.str.8, ptr @eth_config_driver, align 4
  store i16 1183, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 20570, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  br label %34

34:                                               ; preds = %31, %23, %10
  %35 = phi ptr [ %12, %10 ], [ %25, %23 ], [ %33, %31 ]
  %36 = phi ptr [ null, %10 ], [ null, %23 ], [ %27, %31 ]
  %37 = phi ptr [ null, %10 ], [ %19, %23 ], [ null, %31 ]
  %38 = phi ptr [ %6, %10 ], [ null, %23 ], [ null, %31 ]
  %39 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %35, i32 noundef %39) #4
  %40 = load ptr, ptr @host_addr, align 4
  %41 = tail call i32 @gether_set_host_addr(ptr noundef %35, ptr noundef %40) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load ptr, ptr @host_addr, align 4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %44) #5
  br label %46

46:                                               ; preds = %43, %34
  %47 = load ptr, ptr @dev_addr, align 4
  %48 = tail call i32 @gether_set_dev_addr(ptr noundef %35, ptr noundef %47) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr @dev_addr, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %51) #5
  br label %53

53:                                               ; preds = %50, %46
  %54 = load ptr, ptr %0, align 4
  tail call void @gether_set_gadget(ptr noundef %35, ptr noundef %54) #4
  %55 = tail call i32 @gether_register_netdev(ptr noundef %35) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %109

57:                                               ; preds = %53
  %58 = load i8, ptr @use_eem, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.f_eem_opts, ptr %38, i32 0, i32 2
  br label %71

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 17
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 512
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.f_ecm_opts, ptr %37, i32 0, i32 2
  br label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.f_gether_opts, ptr %36, i32 0, i32 2
  br label %71

71:                                               ; preds = %69, %67, %60
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ], [ %61, %60 ]
  store i8 1, ptr %72, align 4
  %73 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.11) #4
  store ptr %73, ptr @fi_rndis, align 4
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = ptrtoint ptr %73 to i32
  br label %109

77:                                               ; preds = %71
  tail call void @rndis_borrow_net(ptr noundef %73, ptr noundef %35) #4
  store i16 1317, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 -23390, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  store i8 2, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 13), align 1
  %78 = tail call i32 @usb_string_ids_tab(ptr noundef %0, ptr noundef nonnull @strings_dev) #4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr @strings_dev, align 4
  store i8 %81, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %82 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %82, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %83 = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 17
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = load ptr, ptr @otg_desc, align 4
  %88 = icmp ne ptr %87, null
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %2) #4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @usb_otg_descriptor_init(ptr noundef %2, ptr noundef nonnull %91) #4
  store ptr %91, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %95

95:                                               ; preds = %93, %80
  %96 = tail call i32 @usb_add_config(ptr noundef %0, ptr noundef nonnull @rndis_config_driver, ptr noundef nonnull @rndis_do_config) #4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @usb_add_config(ptr noundef %0, ptr noundef nonnull @eth_config_driver, ptr noundef nonnull @eth_do_config) #4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  tail call void @usb_composite_overwrite_options(ptr noundef %0, ptr noundef nonnull @coverwrite) #4
  %102 = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #5
  br label %124

103:                                              ; preds = %98, %95
  %104 = phi i32 [ %96, %95 ], [ %99, %98 ]
  %105 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %105) #4
  store ptr null, ptr @otg_desc, align 4
  br label %106

106:                                              ; preds = %103, %90, %77
  %107 = phi i32 [ %78, %77 ], [ %104, %103 ], [ -12, %90 ]
  %108 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %108) #4
  br label %109

109:                                              ; preds = %106, %75, %53
  %110 = phi i32 [ %55, %53 ], [ %76, %75 ], [ %107, %106 ]
  %111 = load i8, ptr @use_eem, align 1, !range !8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr @fi_eem, align 4
  tail call void @usb_put_function_instance(ptr noundef %114) #4
  br label %124

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 17
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 512
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %121) #4
  br label %124

122:                                              ; preds = %115
  %123 = load ptr, ptr @fi_geth, align 4
  tail call void @usb_put_function_instance(ptr noundef %123) #4
  br label %124

124:                                              ; preds = %122, %120, %113, %101, %29, %21, %8
  %125 = phi i32 [ %9, %8 ], [ 0, %101 ], [ %22, %21 ], [ %30, %29 ], [ %110, %120 ], [ %110, %122 ], [ %110, %113 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eth_unbind(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %2) #4
  %3 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %3) #4
  %4 = load i8, ptr @use_eem, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @f_ecm, ptr @f_geth
  %13 = select i1 %11, ptr @fi_ecm, ptr @fi_geth
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi ptr [ @f_eem, %1 ], [ %12, %6 ]
  %16 = phi ptr [ @fi_eem, %1 ], [ %13, %6 ]
  %17 = load ptr, ptr %15, align 4
  tail call void @usb_put_function(ptr noundef %17) #4
  %18 = load ptr, ptr %16, align 4
  tail call void @usb_put_function_instance(ptr noundef %18) #4
  %19 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %19) #4
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_borrow_net(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_do_config(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 2
  store ptr @otg_desc, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 2
  %13 = or i8 %12, 32
  store i8 %13, ptr %11, align 2
  br label %14

14:                                               ; preds = %9, %1
  %15 = load ptr, ptr @fi_rndis, align 4
  %16 = tail call ptr @usb_get_function(ptr noundef %15) #4
  store ptr %16, ptr @f_rndis, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %16 to i32
  br label %25

20:                                               ; preds = %14
  %21 = tail call i32 @usb_add_function(ptr noundef %0, ptr noundef %16) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %24) #4
  br label %25

25:                                               ; preds = %23, %20, %18
  %26 = phi i32 [ %19, %18 ], [ %21, %23 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eth_do_config(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 2
  store ptr @otg_desc, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 2
  %13 = or i8 %12, 32
  store i8 %13, ptr %11, align 2
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i8, ptr @use_eem, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @fi_eem, align 4
  %19 = tail call ptr @usb_get_function(ptr noundef %18) #4
  store ptr %19, ptr @f_eem, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  br label %56

23:                                               ; preds = %17
  %24 = tail call i32 @usb_add_function(ptr noundef %0, ptr noundef %19) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load ptr, ptr @f_eem, align 4
  tail call void @usb_put_function(ptr noundef %27) #4
  br label %56

28:                                               ; preds = %14
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load ptr, ptr @fi_ecm, align 4
  %36 = tail call ptr @usb_get_function(ptr noundef %35) #4
  store ptr %36, ptr @f_ecm, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %36 to i32
  br label %56

40:                                               ; preds = %34
  %41 = tail call i32 @usb_add_function(ptr noundef %0, ptr noundef %36) #4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %44) #4
  br label %56

45:                                               ; preds = %28
  %46 = load ptr, ptr @fi_geth, align 4
  %47 = tail call ptr @usb_get_function(ptr noundef %46) #4
  store ptr %47, ptr @f_geth, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %47 to i32
  br label %56

51:                                               ; preds = %45
  %52 = tail call i32 @usb_add_function(ptr noundef %0, ptr noundef %47) #4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load ptr, ptr @f_geth, align 4
  tail call void @usb_put_function(ptr noundef %55) #4
  br label %56

56:                                               ; preds = %54, %51, %49, %43, %40, %38, %26, %23, %21
  %57 = phi i32 [ %22, %21 ], [ %39, %38 ], [ %50, %49 ], [ %24, %26 ], [ %24, %23 ], [ %41, %43 ], [ %41, %40 ], [ %52, %54 ], [ %52, %51 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
