; ModuleID = '/llk/IR/drivers/firmware/efi/sysfb_efi.c_pt.bc'
source_filename = "../drivers/firmware/efi/sysfb_efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efifb_dmi_info = type { ptr, i32, i32, i32, i32, i32 }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.of_pci_range_parser = type { ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.of_pci_range = type { %union.anon.71, i64, i64, i32 }
%union.anon.71 = type { i64 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"i17\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"i20\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"imac7\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i24\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"imac8\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"imac10\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"imac11\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mini\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"mini31\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mini41\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"macbook\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"macbook51\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"macbook61\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"macbook71\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"mba\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mba3\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"mbp\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mbp2\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"mbp22\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mbp3\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mbp4\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"mbp51\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"mbp52\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"mbp53\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"mbp61\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"mbp62\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"mbp71\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"mbp82\00", align 1
@efifb_dmi_list = dso_local global [32 x %struct.efifb_dmi_info] [%struct.efifb_dmi_info { ptr @.str, i32 -2147418112, i32 5888, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.1, i32 -2147418112, i32 6912, i32 1680, i32 1050, i32 0 }, %struct.efifb_dmi_info { ptr @.str.2, i32 1073807360, i32 6912, i32 1680, i32 1050, i32 0 }, %struct.efifb_dmi_info { ptr @.str.3, i32 -2147418112, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.4, i32 -1073348608, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.5, i32 -1073676288, i32 8192, i32 1920, i32 1080, i32 0 }, %struct.efifb_dmi_info { ptr @.str.6, i32 -1073676288, i32 10240, i32 2560, i32 1440, i32 0 }, %struct.efifb_dmi_info { ptr @.str.7, i32 -2147483648, i32 8192, i32 1024, i32 768, i32 0 }, %struct.efifb_dmi_info { ptr @.str.8, i32 1073807360, i32 4096, i32 1024, i32 768, i32 0 }, %struct.efifb_dmi_info { ptr @.str.9, i32 -1073676288, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.10, i32 -2147483648, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info zeroinitializer, %struct.efifb_dmi_info zeroinitializer, %struct.efifb_dmi_info { ptr @.str.11, i32 -2147418112, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info { ptr @.str.12, i32 -2147418112, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info { ptr @.str.13, i32 -2147418112, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info zeroinitializer, %struct.efifb_dmi_info { ptr @.str.14, i32 -2147483648, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info { ptr @.str.15, i32 0, i32 8192, i32 0, i32 0, i32 2 }, %struct.efifb_dmi_info { ptr @.str.16, i32 -2147418112, i32 5888, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.17, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.efifb_dmi_info { ptr @.str.18, i32 -2147418112, i32 5888, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.19, i32 -2147287040, i32 8192, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.20, i32 -1073348608, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.21, i32 -1073676288, i32 8192, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.22, i32 -1073676288, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.23, i32 -805240832, i32 8192, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info { ptr @.str.24, i32 -1878851584, i32 8192, i32 1920, i32 1200, i32 0 }, %struct.efifb_dmi_info { ptr @.str.25, i32 -1878851584, i32 8192, i32 1680, i32 1050, i32 0 }, %struct.efifb_dmi_info { ptr @.str.26, i32 -1073676288, i32 8192, i32 1280, i32 800, i32 0 }, %struct.efifb_dmi_info { ptr @.str.27, i32 -1878982656, i32 5888, i32 1440, i32 900, i32 0 }, %struct.efifb_dmi_info zeroinitializer], align 4
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1
@efifb_dmi_system_table = internal constant [38 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.28, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac4,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @efifb_dmi_list }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.29, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac5,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 24) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.29, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac5,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 24) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac6,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 72) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.30, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac6,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 72) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.31, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac7,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 48) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.32, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac8,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 96) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.33, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac10,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 120) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.34, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac11,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 144) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.35, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Macmini1,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 168) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.36, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Macmini3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 192) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.37, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Macmini4,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 216) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.38, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook1,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.39, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook2,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.39, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook2,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.40, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.40, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.41, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook4,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 240) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.42, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook5,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 312) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.43, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook6,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 336) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.44, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBook7,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 360) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.45, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookAir1,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 408) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.46, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookAir3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 432) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.47, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro1,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 456) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.48, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro2,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 480) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.49, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro2,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 504) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.48, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro2,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 480) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.50, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Computer, Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 528) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.50, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro3,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 528) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.51, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro4,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 552) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.52, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro5,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 576) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.53, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro5,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 600) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.54, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro5,3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 624) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.55, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro6,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 648) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.56, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro6,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 672) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.57, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro7,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 696) }, %struct.dmi_system_id { ptr @efifb_set_system, ptr @.str.58, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 1, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro8,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @efifb_dmi_list, i64 720) }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 4
@efifb_dmi_swap_width_height = internal constant [4 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"MIIX 310-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -126, [79 x i8] c"1HCN44WW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"Lenovo MIIX 320-10ICR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 -122, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 -120, [79 x i8] c"Lenovo ideapad D330-10IGM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 4
@efifb_fwnode = internal global %struct.fwnode_handle zeroinitializer, align 4
@efifb_fwnode_ops = internal constant %struct.fwnode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efifb_add_links }, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"iMac4,1\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"iMac5,1\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"iMac6,1\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"iMac7,1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"iMac8,1\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"iMac10,1\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"iMac11,1\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Macmini1,1\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Macmini3,1\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Macmini4,1\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"MacBook1,1\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"MacBook2,1\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"MacBook3,1\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"MacBook4,1\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"MacBook5,1\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"MacBook6,1\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"MacBook7,1\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"MacBookAir1,1\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"MacBookAir3,1\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"MacBookPro1,1\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"MacBookPro2,1\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"MacBookPro2,2\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"MacBookPro3,1\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"MacBookPro4,1\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"MacBookPro5,1\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"MacBookPro5,2\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"MacBookPro5,3\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"MacBookPro6,1\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"MacBookPro6,2\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"MacBookPro7,1\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"MacBookPro8,2\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"\016efifb: dmi detected %s - framebuffer at 0x%08x (%dx%d, stride %d)\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"\014of_pci_range_parser_init() failed: %d\0A\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efifb_setup_from_dmi(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 16
  %4 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 20
  %5 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.screen_info, ptr %0, i32 0, i32 14
  br label %7

7:                                                ; preds = %27, %2
  %8 = phi i32 [ 0, %2 ], [ %28, %27 ]
  %9 = getelementptr [32 x %struct.efifb_dmi_info], ptr @efifb_dmi_list, i32 0, i32 %8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr [32 x %struct.efifb_dmi_info], ptr @efifb_dmi_list, i32 0, i32 %8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  store i32 %10, ptr %3, align 1
  %18 = getelementptr [32 x %struct.efifb_dmi_info], ptr @efifb_dmi_list, i32 0, i32 %8, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %4, align 1
  %21 = getelementptr [32 x %struct.efifb_dmi_info], ptr @efifb_dmi_list, i32 0, i32 %8, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %5, align 1
  %24 = getelementptr [32 x %struct.efifb_dmi_info], ptr @efifb_dmi_list, i32 0, i32 %8, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %6, align 1
  br label %27

27:                                               ; preds = %17, %12, %7
  %28 = add nuw nsw i32 %8, 1
  %29 = icmp eq i32 %28, 31
  br i1 %29, label %30, label %7

30:                                               ; preds = %27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sysfb_apply_efi_quirks(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 section ".init.text" {
  %2 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %3 = icmp eq i8 %2, 112
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 33), align 1
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  %9 = tail call i32 @dmi_check_system(ptr noundef nonnull @efifb_dmi_system_table) #8
  %10 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %11 = icmp eq i8 %10, 112
  br i1 %11, label %12, label %24

12:                                               ; preds = %8, %4
  %13 = tail call i32 @dmi_check_system(ptr noundef nonnull @efifb_dmi_swap_width_height) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  %17 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  store i16 %17, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  store i16 %16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  %18 = shl i16 %17, 2
  store i16 %18, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %21 = icmp eq i8 %20, 112
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  store ptr @efifb_fwnode_ops, ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 4), ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 4), ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 4, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 3), ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 3), ptr getelementptr inbounds (%struct.fwnode_handle, ptr @efifb_fwnode, i32 0, i32 3, i32 1), align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 26
  store ptr @efifb_fwnode, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %19, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efifb_set_system(ptr nocapture noundef readonly %0) #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %118, label %19

19:                                               ; preds = %15, %11, %7
  %20 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %110, label %69

22:                                               ; preds = %1
  %23 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  store i32 %5, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %26 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %28

28:                                               ; preds = %59, %25
  %29 = phi ptr [ %61, %59 ], [ %26, %25 ]
  %30 = phi i32 [ %60, %59 ], [ 0, %25 ]
  %31 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, -256
  %34 = icmp eq i32 %33, 196608
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  br label %37

37:                                               ; preds = %56, %35
  %38 = phi i32 [ 0, %35 ], [ %57, %56 ]
  %39 = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 %38
  %40 = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 %38, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 536871424
  %43 = icmp eq i32 %42, 512
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = getelementptr %struct.pci_dev, ptr %29, i32 0, i32 47, i32 %38, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %39, align 8
  %50 = sub i32 %46, %49
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = icmp uge i32 %36, %49
  %54 = icmp ult i32 %36, %46
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %48, %44, %37
  %57 = add nuw nsw i32 %38, 1
  %58 = icmp eq i32 %57, 11
  br i1 %58, label %59, label %37

59:                                               ; preds = %56, %52, %28
  %60 = phi i32 [ %30, %28 ], [ 1, %52 ], [ %30, %56 ]
  %61 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %29) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %28

63:                                               ; preds = %59
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63, %25
  store i32 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  br label %110

66:                                               ; preds = %63
  %67 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %110, label %69

69:                                               ; preds = %66, %22, %19
  %70 = phi i32 [ %67, %66 ], [ %20, %19 ], [ %23, %22 ]
  %71 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  %75 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  %76 = icmp eq i16 %75, 0
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = trunc i32 %80 to i16
  br label %82

82:                                               ; preds = %78, %69
  %83 = phi i16 [ %81, %78 ], [ %75, %69 ]
  store i16 %83, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  %84 = load i32, ptr %71, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  %87 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  %88 = icmp eq i16 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = trunc i32 %92 to i16
  br label %94

94:                                               ; preds = %90, %82
  %95 = phi i16 [ %93, %90 ], [ %87, %82 ]
  store i16 %95, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  %96 = and i32 %84, 4
  %97 = icmp ne i32 %96, 0
  %98 = load i16, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  %99 = icmp eq i16 %98, 0
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.efifb_dmi_info, ptr %3, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = trunc i32 %103 to i16
  br label %105

105:                                              ; preds = %101, %94
  %106 = phi i16 [ %104, %101 ], [ %98, %94 ]
  store i16 %106, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  %107 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  store i8 112, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  br label %111

110:                                              ; preds = %66, %65, %19
  store i16 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 20), align 1
  store i16 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 13), align 1
  store i16 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 14), align 1
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  br label %118

111:                                              ; preds = %109, %105
  %112 = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = zext i16 %95 to i32
  %115 = zext i16 %106 to i32
  %116 = zext i16 %83 to i32
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %113, i32 noundef %70, i32 noundef %114, i32 noundef %115, i32 noundef %116) #9
  br label %118

118:                                              ; preds = %111, %110, %15
  %119 = phi i32 [ 1, %111 ], [ 0, %110 ], [ 0, %15 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efifb_add_links(ptr noundef %0) #6 {
  %2 = alloca %struct.of_pci_range_parser, align 4
  %3 = alloca %struct.of_pci_range, align 8
  %4 = tail call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.60) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.of_pci_range, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.of_pci_range, ptr %3, i32 0, i32 2
  br label %9

9:                                                ; preds = %38, %6
  %10 = phi ptr [ %4, %6 ], [ %39, %38 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8, !annotation !8
  %11 = call i32 @of_pci_range_parser_init(ptr noundef nonnull %2, ptr noundef nonnull %10) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %18

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %11) #9
  br label %38

18:                                               ; preds = %35, %13
  %19 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %20 = zext i32 %19 to i64
  %21 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 33), align 1
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 34), align 1
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 %25, 32
  %27 = select i1 %23, i64 0, i64 %26
  %28 = or i64 %27, %20
  %29 = load i64, ptr %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load i64, ptr %8, align 8
  %33 = add i64 %32, %29
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %18
  %36 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %18

38:                                               ; preds = %35, %16, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  %39 = call ptr @of_find_node_by_type(ptr noundef nonnull %10, ptr noundef nonnull @.str.60) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %9

41:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  %42 = icmp eq ptr %10, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  %45 = call i32 @fwnode_link_add(ptr noundef %0, ptr noundef %44) #8
  call void @of_node_put(ptr noundef nonnull %10) #8
  br label %46

46:                                               ; preds = %43, %41, %38, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_link_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_range_parser_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pci_range_parser_one(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
