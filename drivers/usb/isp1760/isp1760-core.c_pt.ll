; ModuleID = '/llk/IR/drivers/usb/isp1760/isp1760-core.c_pt.bc'
source_filename = "../drivers/usb/isp1760/isp1760-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.isp1760_memory_layout = type { [3 x i32], [3 x i32], i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.isp1760_device = type { ptr, i32, ptr, %struct.isp1760_hcd, %struct.isp1760_udc }
%struct.isp1760_hcd = type { ptr, ptr, ptr, [78 x ptr], i8, ptr, %struct.spinlock, ptr, i32, ptr, i32, [56 x %struct.isp1760_memory_chunk], [3 x %struct.list_head], i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.isp1760_memory_chunk = type { i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.isp1760_udc = type { ptr, i32, ptr, ptr, [40 x ptr], ptr, %struct.usb_gadget, %struct.spinlock, %struct.timer_list, [15 x %struct.isp1760_ep], i32, i8, i16, i8, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.isp1760_ep = type { ptr, %struct.usb_ep, %struct.list_head, i32, i32, [7 x i8], ptr, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [40 x i8] c"isp1760/61 do not support data width 8\0A\00", align 1
@isp1763_hc_regmap_conf = internal constant %struct.regmap_config { ptr @.str.1, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 230, ptr null, ptr null, ptr @isp1763_hc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isp1763_hc_reg_fields = internal unnamed_addr constant [78 x %struct.reg_field] [%struct.reg_field { i32 160, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 160, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 140, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 140, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 140, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 144, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 152, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 156, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 166, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 168, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 170, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 174, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 176, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 178, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 180, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 182, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 114, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 120, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 184, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 184, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 196, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 198, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 212, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 214, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 214, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 216, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 218, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 220, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 222, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 224, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 226, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 228, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 230, i32 15, i32 15, i32 0, i32 0 }], align 4
@isp1763_dc_regmap_conf = internal constant %struct.regmap_config { ptr @.str.2, i32 8, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 132, ptr null, ptr null, ptr @isp1763_dc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isp1763_dc_reg_fields = internal unnamed_addr constant [40 x %struct.reg_field] [%struct.reg_field { i32 0, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 25, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 40, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 116, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 116, i32 11, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 114, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 112, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 120, i32 0, i32 15, i32 0, i32 0 }], align 4
@isp1760_hc_regmap_conf = internal constant %struct.regmap_config { ptr @.str.3, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 886, ptr null, ptr null, ptr @isp176x_hc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isp1760_hc_reg_fields = internal unnamed_addr constant [77 x %struct.reg_field] [%struct.reg_field { i32 100, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 100, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 4, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 44, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 96, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 312, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 324, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 328, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 336, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 340, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 344, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 31, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 768, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 768, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 772, i32 16, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 776, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 780, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 820, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 828, i32 16, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 828, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 784, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 788, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 788, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 792, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 796, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 800, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 804, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 808, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 812, i32 0, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 884, i32 26, i32 26, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 20, i32 20, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 18, i32 18, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 884, i32 16, i32 16, i32 0, i32 0 }], align 4
@isp1761_dc_regmap_conf = internal constant %struct.regmap_config { ptr @.str.4, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 644, ptr null, ptr null, ptr @isp176x_dc_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@isp1761_dc_reg_fields = internal unnamed_addr constant [40 x %struct.reg_field] [%struct.reg_field { i32 512, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 512, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 524, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 528, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 25, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 19, i32 19, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 17, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 556, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 552, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 540, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 516, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 520, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 520, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 628, i32 0, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 628, i32 11, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 624, i32 16, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 624, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 632, i32 0, i32 15, i32 0, i32 0 }], align 4
@isp1763_memory_conf = internal constant %struct.isp1760_memory_layout { [3 x i32] [i32 8, i32 2, i32 4], [3 x i32] [i32 256, i32 1024, i32 4096], i32 16, i32 14, i32 20480 }, align 4
@isp176x_memory_conf = internal constant %struct.isp1760_memory_layout { [3 x i32] [i32 32, i32 20, i32 4], [3 x i32] [i32 256, i32 1024, i32 8192], i32 32, i32 56, i32 61440 }, align 4
@__UNIQUE_ID_description229 = internal constant [67 x i8] c"isp1760.description=Driver for the ISP1760 USB-controller from NXP\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [58 x i8] c"isp1760.author=Sebastian Siewior <bigeasy@linuxtronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [41 x i8] c"isp1760.file=drivers/usb/isp1760/isp1760\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"isp1760.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"isp1763-hc\00", align 1
@isp1763_hc_volatile_table = internal constant %struct.regmap_access_table { ptr @isp1763_hc_volatile_ranges, i32 3, ptr null, i32 0 }, align 4
@isp1763_hc_volatile_ranges = internal constant [3 x %struct.regmap_range] [%struct.regmap_range { i32 140, i32 180 }, %struct.regmap_range { i32 186, i32 198 }, %struct.regmap_range { i32 212, i32 230 }], align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"isp1763-dc\00", align 1
@isp1763_dc_volatile_table = internal constant %struct.regmap_access_table { ptr @isp1763_dc_volatile_ranges, i32 2, ptr null, i32 0 }, align 4
@isp1763_dc_volatile_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 4, i32 8 }, %struct.regmap_range { i32 28, i32 44 }], align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"isp1760-hc\00", align 1
@isp176x_hc_volatile_table = internal constant %struct.regmap_access_table { ptr @isp176x_hc_volatile_ranges, i32 3, ptr null, i32 0 }, align 4
@isp176x_hc_volatile_ranges = internal constant [3 x %struct.regmap_range] [%struct.regmap_range { i32 32, i32 344 }, %struct.regmap_range { i32 820, i32 828 }, %struct.regmap_range { i32 784, i32 886 }], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"isp1761-dc\00", align 1
@isp176x_dc_volatile_table = internal constant %struct.regmap_access_table { ptr @isp176x_dc_volatile_ranges, i32 2, ptr null, i32 0 }, align 4
@isp176x_dc_volatile_ranges = internal constant [2 x %struct.regmap_range] [%struct.regmap_range { i32 516, i32 520 }, %struct.regmap_range { i32 540, i32 556 }], align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"isp1763 analog overcurrent not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s bus width: %u, oc: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"isp1763\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"isp1760\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"not available\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @isp1760_set_pullup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 11, i32 9, i32 1
  %4 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 6, i32 11, i32 2
  %5 = select i1 %1, ptr %4, ptr %3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @isp1760_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %4, 576
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @usb_disabled() #3
  %9 = icmp ne i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %132, label %11

11:                                               ; preds = %5
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 3072, i32 noundef 3520) #3
  %13 = icmp eq ptr %12, null
  br i1 %13, label %132, label %14

14:                                               ; preds = %11
  store ptr %3, ptr %12, align 8
  %15 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 1
  store i32 %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 3
  %17 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 3, i32 4
  %18 = lshr i32 %4, 9
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, ptr %17, align 4
  %21 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 4, i32 14
  store i8 %20, ptr %21, align 1
  %22 = and i32 %4, 1536
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #4
  br label %132

25:                                               ; preds = %14
  %26 = icmp eq i8 %20, 0
  %27 = select i1 %26, ptr @isp1760_hc_regmap_conf, ptr @isp1763_hc_regmap_conf
  %28 = select i1 %26, ptr @isp1760_hc_reg_fields, ptr @isp1763_hc_reg_fields
  %29 = select i1 %26, ptr @isp1761_dc_regmap_conf, ptr @isp1763_dc_regmap_conf
  %30 = select i1 %26, ptr @isp1761_dc_reg_fields, ptr @isp1763_dc_reg_fields
  %31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef null, i32 noundef 7) #3
  %32 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = ptrtoint ptr %31 to i32
  br label %132

36:                                               ; preds = %25
  %37 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %0) #3
  %38 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 3, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  br label %132

42:                                               ; preds = %36
  %43 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %37, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #3
  %44 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 3, i32 2
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %43 to i32
  br label %132

48:                                               ; preds = %74, %42
  %49 = phi ptr [ %75, %74 ], [ %43, %42 ]
  %50 = phi i32 [ %72, %74 ], [ 0, %42 ]
  %51 = getelementptr %struct.reg_field, ptr %28, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = insertvalue [5 x i32] undef, i32 %52, 0
  %54 = getelementptr inbounds [5 x i32], ptr %51, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = insertvalue [5 x i32] %53, i32 %55, 1
  %57 = getelementptr inbounds [5 x i32], ptr %51, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = insertvalue [5 x i32] %56, i32 %58, 2
  %60 = getelementptr inbounds [5 x i32], ptr %51, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = insertvalue [5 x i32] %59, i32 %61, 3
  %63 = getelementptr inbounds [5 x i32], ptr %51, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = insertvalue [5 x i32] %62, i32 %64, 4
  %66 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %49, [5 x i32] %65) #3
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = ptrtoint ptr %66 to i32
  br label %132

70:                                               ; preds = %48
  %71 = getelementptr %struct.isp1760_device, ptr %12, i32 0, i32 3, i32 3, i32 %50
  store ptr %66, ptr %71, align 4
  %72 = add nuw nsw i32 %50, 1
  %73 = icmp eq i32 %72, 78
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %44, align 4
  br label %48

76:                                               ; preds = %70
  %77 = load ptr, ptr %38, align 4
  %78 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %77, ptr noundef nonnull %29, ptr noundef null, ptr noundef null) #3
  %79 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 4, i32 3
  store ptr %78, ptr %79, align 4
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = ptrtoint ptr %78 to i32
  br label %132

83:                                               ; preds = %109, %76
  %84 = phi ptr [ %110, %109 ], [ %78, %76 ]
  %85 = phi i32 [ %107, %109 ], [ 0, %76 ]
  %86 = getelementptr %struct.reg_field, ptr %30, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = insertvalue [5 x i32] undef, i32 %87, 0
  %89 = getelementptr inbounds [5 x i32], ptr %86, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = insertvalue [5 x i32] %88, i32 %90, 1
  %92 = getelementptr inbounds [5 x i32], ptr %86, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = insertvalue [5 x i32] %91, i32 %93, 2
  %95 = getelementptr inbounds [5 x i32], ptr %86, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = insertvalue [5 x i32] %94, i32 %96, 3
  %98 = getelementptr inbounds [5 x i32], ptr %86, i32 0, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = insertvalue [5 x i32] %97, i32 %99, 4
  %101 = tail call ptr @devm_regmap_field_alloc(ptr noundef %3, ptr noundef %84, [5 x i32] %100) #3
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %83
  %104 = ptrtoint ptr %101 to i32
  br label %132

105:                                              ; preds = %83
  %106 = getelementptr %struct.isp1760_device, ptr %12, i32 0, i32 4, i32 4, i32 %85
  store ptr %101, ptr %106, align 4
  %107 = add nuw nsw i32 %85, 1
  %108 = icmp eq i32 %107, 40
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %79, align 4
  br label %83

111:                                              ; preds = %105
  %112 = load i8, ptr %17, align 4, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, ptr @isp176x_memory_conf, ptr @isp1763_memory_conf
  %115 = getelementptr inbounds %struct.isp1760_device, ptr %12, i32 0, i32 3, i32 5
  store ptr %114, ptr %115, align 4
  %116 = tail call fastcc i32 @isp1760_init_core(ptr noundef nonnull %12)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %111
  %119 = tail call i32 @usb_disabled() #3
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = or i32 %2, 128
  %123 = tail call i32 @isp1760_hcd_register(ptr noundef %16, ptr noundef %0, i32 noundef %1, i32 noundef %122, ptr noundef %3) #3
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121, %118
  br i1 %7, label %130, label %126

126:                                              ; preds = %125
  %127 = tail call i32 @isp1760_udc_register(ptr noundef nonnull %12, i32 noundef %1, i32 noundef %2) #3
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void @isp1760_hcd_unregister(ptr noundef %16) #3
  br label %132

130:                                              ; preds = %126, %125
  %131 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  store ptr %12, ptr %131, align 8
  br label %132

132:                                              ; preds = %130, %129, %121, %111, %103, %81, %68, %46, %40, %34, %24, %11, %5
  %133 = phi i32 [ %35, %34 ], [ %41, %40 ], [ %47, %46 ], [ %69, %68 ], [ %82, %81 ], [ %104, %103 ], [ %127, %129 ], [ 0, %130 ], [ -22, %24 ], [ -19, %5 ], [ -12, %11 ], [ %116, %111 ], [ %123, %121 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isp1760_init_core(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 50) #3
  %6 = load ptr, ptr %2, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 0) #3
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 46
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  tail call void @msleep(i32 noundef 100) #3
  %11 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 4
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5) #4
  br label %122

21:                                               ; preds = %15, %7
  %22 = and i32 %12, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 33
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_field_update_bits_base(ptr noundef %26, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %28 = load i32, ptr %11, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i32 [ %28, %24 ], [ %12, %21 ]
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 33
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_field_update_bits_base(ptr noundef %35, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %37 = load i32, ptr %11, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %37, %33 ], [ %30, %29 ]
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 29
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %46 = load i32, ptr %11, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i32 [ %46, %42 ], [ %39, %38 ]
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 34
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %55 = load i32, ptr %11, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %55, %51 ], [ %48, %47 ]
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 35
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @regmap_field_update_bits_base(ptr noundef %62, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %64 = load i32, ptr %11, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i32 [ %64, %60 ], [ %57, %56 ]
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 36
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @regmap_field_update_bits_base(ptr noundef %71, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %73 = load i32, ptr %11, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %73, %69 ], [ %66, %65 ]
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 38
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @regmap_field_update_bits_base(ptr noundef %80, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %82 = load i32, ptr %11, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i32 [ %82, %78 ], [ %75, %74 ]
  %85 = and i32 %84, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 4, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 524, i32 noundef 0) #3
  %91 = getelementptr %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 3, i32 31
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @regmap_field_update_bits_base(ptr noundef %92, i32 noundef -1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %94 = load i32, ptr %11, align 4
  %95 = and i32 %94, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %87
  %98 = and i32 %94, 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 8388632, i32 394240
  %101 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 884, i32 noundef %100) #3
  %104 = load i32, ptr %11, align 4
  br label %105

105:                                              ; preds = %97, %87, %83
  %106 = phi i32 [ %94, %87 ], [ %104, %97 ], [ %84, %83 ]
  %107 = load ptr, ptr %0, align 8
  %108 = getelementptr inbounds %struct.isp1760_device, ptr %0, i32 0, i32 3, i32 4
  %109 = load i8, ptr %108, align 4, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, ptr @.str.8, ptr @.str.7
  %112 = and i32 %106, 1024
  %113 = icmp eq i32 %112, 0
  %114 = and i32 %106, 2
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 32, i32 16
  %117 = select i1 %113, i32 %116, i32 8
  %118 = and i32 %106, 8
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.11, ptr @.str.10
  %121 = select i1 %110, ptr %120, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.6, ptr noundef nonnull %111, i32 noundef %117, ptr noundef nonnull %121) #4
  br label %122

122:                                              ; preds = %105, %19
  %123 = phi i32 [ -22, %19 ], [ 0, %105 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_hcd_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isp1760_udc_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_hcd_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @isp1760_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @isp1760_udc_unregister(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.isp1760_device, ptr %3, i32 0, i32 3
  tail call void @isp1760_hcd_unregister(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @isp1760_udc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
