; ModuleID = '/llk/IR/drivers/net/mdio/of_mdio.c_pt.bc'
source_filename = "../drivers/net/mdio/of_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mdiobus_phy_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mdiobus_child_is_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mdiobus_child_is_phy\22\09\09\09\09\09"
module asm "__kstrtabns_of_mdiobus_child_is_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mdiobus_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_mdio_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_mdio_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_mdio_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_connect\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_get_and_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_get_and_connect\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_get_and_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_is_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_is_fixed_link\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_is_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_register_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_register_fixed_link\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_register_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_deregister_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_deregister_fixed_link\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_deregister_fixed_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author328 = internal constant [56 x i8] c"of_mdio.author=Grant Likely <grant.likely@secretlab.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [38 x i8] c"of_mdio.file=drivers/net/mdio/of_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [20 x i8] c"of_mdio.license=GPL\00", section ".modinfo", align 1
@__kstrtab_of_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mdiobus_phy_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mdiobus_phy_device_register to i32), ptr @__kstrtab_of_mdiobus_phy_device_register, ptr @__kstrtabns_of_mdiobus_phy_device_register }, section "___ksymtab+of_mdiobus_phy_device_register", align 4
@.str = private unnamed_addr constant [27 x i8] c"ethernet-phy-ieee802.3-c45\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ethernet-phy-ieee802.3-c22\00", align 1
@whitelist_phys = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,40nm-ephy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"broadcom,bcm5241\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88E1111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88e1116\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88e1118\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88e1145\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88e1149r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88e1310\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88E1510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,88E1514\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moxa,moxart-rtl8201cp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"\014[Firmware Warn]: %pOF: Whitelisted compatible string. Please remove\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@__kstrtab_of_mdiobus_child_is_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mdiobus_child_is_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mdiobus_child_is_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mdiobus_child_is_phy to i32), ptr @__kstrtab_of_mdiobus_child_is_phy, ptr @__kstrtabns_of_mdiobus_child_is_phy }, section "___ksymtab+of_mdiobus_child_is_phy", align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"reset-delay-us\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"reset-post-delay-us\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"MDIO device at address %d is missing.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"scan phy %pOFn at address %i\0A\00", align 1
@__kstrtab_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mdiobus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mdiobus_register to i32), ptr @__kstrtab_of_mdiobus_register, ptr @__kstrtabns_of_mdiobus_register }, section "___ksymtab+of_mdiobus_register", align 4
@__kstrtab_of_mdio_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_mdio_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_mdio_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_mdio_find_device to i32), ptr @__kstrtab_of_mdio_find_device, ptr @__kstrtabns_of_mdio_find_device }, section "___ksymtab+of_mdio_find_device", align 4
@__kstrtab_of_phy_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_find_device to i32), ptr @__kstrtab_of_phy_find_device, ptr @__kstrtabns_of_phy_find_device }, section "___ksymtab+of_phy_find_device", align 4
@__kstrtab_of_phy_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_connect to i32), ptr @__kstrtab_of_phy_connect, ptr @__kstrtabns_of_phy_connect }, section "___ksymtab+of_phy_connect", align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"broken fixed-link specification\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@__kstrtab_of_phy_get_and_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_get_and_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_get_and_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_get_and_connect to i32), ptr @__kstrtab_of_phy_get_and_connect, ptr @__kstrtabns_of_phy_get_and_connect }, section "___ksymtab+of_phy_get_and_connect", align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"managed\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@__kstrtab_of_phy_is_fixed_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_is_fixed_link = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_is_fixed_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_is_fixed_link to i32), ptr @__kstrtab_of_phy_is_fixed_link, ptr @__kstrtabns_of_phy_is_fixed_link }, section "___ksymtab+of_phy_is_fixed_link", align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"in-band-status\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"full-duplex\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"asym-pause\00", align 1
@__kstrtab_of_phy_register_fixed_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_register_fixed_link = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_register_fixed_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_register_fixed_link to i32), ptr @__kstrtab_of_phy_register_fixed_link, ptr @__kstrtabns_of_phy_register_fixed_link }, section "___ksymtab+of_phy_register_fixed_link", align 4
@__kstrtab_of_phy_deregister_fixed_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_deregister_fixed_link = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_deregister_fixed_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_deregister_fixed_link to i32), ptr @__kstrtab_of_phy_deregister_fixed_link, ptr @__kstrtabns_of_phy_deregister_fixed_link }, section "___ksymtab+of_phy_deregister_fixed_link", align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"%s has invalid PHY address\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"%s PHY address %i is too large\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__ksymtab_of_mdio_find_device, ptr @__ksymtab_of_mdiobus_child_is_phy, ptr @__ksymtab_of_mdiobus_phy_device_register, ptr @__ksymtab_of_mdiobus_register, ptr @__ksymtab_of_phy_connect, ptr @__ksymtab_of_phy_deregister_fixed_link, ptr @__ksymtab_of_phy_find_device, ptr @__ksymtab_of_phy_get_and_connect, ptr @__ksymtab_of_phy_is_fixed_link, ptr @__ksymtab_of_phy_register_fixed_link], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_mdiobus_phy_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 3
  %7 = select i1 %5, ptr null, ptr %6
  %8 = tail call i32 @fwnode_mdiobus_phy_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %7, i32 noundef %3) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_mdiobus_phy_device_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_mdiobus_child_is_phy(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %5 = select i1 %3, ptr null, ptr %4
  %6 = call i32 @fwnode_get_phy_id(ptr noundef %5, ptr noundef nonnull %2) #6
  %7 = icmp eq i32 %6, -22
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call ptr @of_match_node(ptr noundef nonnull @whitelist_phys, ptr noundef %0) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #7
  br label %22

19:                                               ; preds = %14
  %20 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br label %22

22:                                               ; preds = %19, %17, %11, %8, %1
  %23 = phi i1 [ true, %17 ], [ true, %1 ], [ true, %8 ], [ true, %11 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i1 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_mdiobus_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @__mdiobus_register(ptr noundef %0, ptr noundef null) #6
  br label %88

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #6
  br i1 %8, label %9, label %88

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 13
  store i32 -1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  %12 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  tail call void @device_set_node(ptr noundef %11, ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 16
  store i32 10, ptr %13, align 8
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef %13, i32 noundef 1, i32 noundef 0) #6
  %15 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 17
  store i32 0, ptr %15, align 4
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef %15, i32 noundef 1, i32 noundef 0) #6
  %17 = tail call i32 @__mdiobus_register(ptr noundef %0, ptr noundef null) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %88

19:                                               ; preds = %9
  %20 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %88, label %22

22:                                               ; preds = %60, %19
  %23 = phi ptr [ %61, %60 ], [ %20, %19 ]
  %24 = phi i1 [ true, %60 ], [ false, %19 ]
  br label %25

25:                                               ; preds = %57, %22
  %26 = phi ptr [ %58, %57 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %26, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef %31) #7
  br label %60

32:                                               ; preds = %25
  %33 = load i32, ptr %3, align 4
  %34 = icmp ugt i32 %33, 31
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef %37, i32 noundef %33) #7
  br label %60

38:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %39 = call zeroext i1 @of_mdiobus_child_is_phy(ptr noundef nonnull %26)
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 3
  %42 = call i32 @fwnode_mdiobus_register_phy(ptr noundef %0, ptr noundef %41, i32 noundef %33) #6
  br label %54

43:                                               ; preds = %38
  %44 = call ptr @mdio_device_create(ptr noundef %0, i32 noundef %33) #6
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = ptrtoint ptr %44 to i32
  br label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 3
  %50 = call ptr @fwnode_handle_get(ptr noundef %49) #6
  call void @device_set_node(ptr noundef %44, ptr noundef %49) #6
  %51 = call i32 @mdio_device_register(ptr noundef %44) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  call void @mdio_device_free(ptr noundef %44) #6
  call void @of_node_put(ptr noundef nonnull %26) #6
  br label %54

54:                                               ; preds = %53, %46, %40
  %55 = phi i32 [ %42, %40 ], [ %47, %46 ], [ %51, %53 ]
  switch i32 %55, label %86 [
    i32 -19, label %56
    i32 0, label %57
  ]

56:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %33) #7
  br label %57

57:                                               ; preds = %56, %54, %48
  %58 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %26) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %25

60:                                               ; preds = %35, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %61 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %26) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %22

63:                                               ; preds = %57
  br i1 %24, label %64, label %88

64:                                               ; preds = %63, %60
  %65 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %83, %64
  %68 = phi ptr [ %84, %83 ], [ %65, %64 ]
  %69 = call ptr @of_find_property(ptr noundef nonnull %68, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.device_node, ptr %68, i32 0, i32 3
  br label %73

73:                                               ; preds = %80, %71
  %74 = phi i32 [ 0, %71 ], [ %81, %80 ]
  %75 = call zeroext i1 @mdiobus_is_registered_device(ptr noundef %0, i32 noundef %74) #6
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef nonnull %68, i32 noundef %74) #7
  %77 = call zeroext i1 @of_mdiobus_child_is_phy(ptr noundef nonnull %68)
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = call i32 @fwnode_mdiobus_register_phy(ptr noundef %0, ptr noundef %72, i32 noundef %74) #6
  switch i32 %79, label %86 [
    i32 0, label %83
    i32 -19, label %80
  ]

80:                                               ; preds = %78, %76, %73
  %81 = add nuw nsw i32 %74, 1
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %73

83:                                               ; preds = %80, %78, %67
  %84 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %68) #6
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %67

86:                                               ; preds = %78, %54
  %87 = phi i32 [ %79, %78 ], [ %55, %54 ]
  call void @mdiobus_unregister(ptr noundef %0) #6
  br label %88

88:                                               ; preds = %86, %83, %64, %63, %19, %9, %7, %5
  %89 = phi i32 [ %87, %86 ], [ %6, %5 ], [ -19, %7 ], [ %17, %9 ], [ 0, %63 ], [ 0, %64 ], [ 0, %19 ], [ 0, %83 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mdiobus_is_registered_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_mdio_find_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %4 = select i1 %2, ptr null, ptr %3
  %5 = tail call ptr @fwnode_mdio_find_device(ptr noundef %4) #6
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_mdio_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_phy_find_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %4 = select i1 %2, ptr null, ptr %3
  %5 = tail call ptr @fwnode_phy_find_device(ptr noundef %4) #6
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_phy_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  %9 = tail call ptr @fwnode_phy_find_device(ptr noundef %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, %3
  store i32 %14, ptr %12, align 8
  %15 = tail call i32 @phy_connect_direct(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %4) #6
  tail call void @put_device(ptr noundef nonnull %9) #6
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr %9, ptr null
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi ptr [ %17, %11 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_phy_get_and_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef nonnull %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %1)
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = call i32 @of_phy_register_fixed_link(ptr noundef %1)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  br label %36

14:                                               ; preds = %10
  %15 = call ptr @of_node_get(ptr noundef %1) #6
  br label %22

16:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #6, !annotation !8
  %17 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #6
  %18 = icmp ne i32 %17, 0
  %19 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %16, %14
  %23 = phi ptr [ %15, %14 ], [ %19, %16 ]
  %24 = load i32, ptr %5, align 4
  %25 = icmp eq ptr %23, null
  %26 = getelementptr inbounds %struct.device_node, ptr %23, i32 0, i32 3
  %27 = select i1 %25, ptr null, ptr %26
  %28 = call ptr @fwnode_phy_find_device(ptr noundef %27) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = call i32 @phy_connect_direct(ptr noundef %0, ptr noundef nonnull %28, ptr noundef %2, i32 noundef %24) #6
  call void @put_device(ptr noundef nonnull %28) #6
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr %28, ptr null
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi ptr [ %33, %30 ], [ null, %22 ]
  call void @of_node_put(ptr noundef %23) #6
  br label %36

36:                                               ; preds = %34, %16, %13, %3
  %37 = phi ptr [ null, %13 ], [ %35, %34 ], [ null, %3 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.11) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @of_node_put(ptr noundef nonnull %4) #6
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 4
  %12 = call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(5) @.str.13)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10, %7
  %15 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #6
  %16 = icmp ne ptr %15, null
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 20
  %19 = select i1 %16, i1 %18, i1 false
  br label %20

20:                                               ; preds = %14, %10, %6
  %21 = phi i1 [ true, %6 ], [ true, %10 ], [ %19, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_phy_register_fixed_link(ptr noundef %0) #0 {
  %2 = alloca %struct.fixed_phy_status, align 4
  %3 = alloca [5 x i32], align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %4, align 4
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(15) @.str.14)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %7, %1
  %12 = call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str.11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  store i32 1, ptr %2, align 4
  %15 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.15, ptr noundef null) #6
  %16 = icmp ne ptr %15, null
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 1
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %12, ptr noundef nonnull @.str.16, ptr noundef %19, i32 noundef 1, i32 noundef 0) #6
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  call void @of_node_put(ptr noundef nonnull %12) #6
  br label %53

23:                                               ; preds = %14
  %24 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  call void @of_node_put(ptr noundef nonnull %12) #6
  br label %48

32:                                               ; preds = %11
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 5, i32 noundef 0) #6
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  store i32 1, ptr %2, align 4
  %36 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds [5 x i32], ptr %3, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %35, %23, %7
  %49 = call ptr @fixed_phy_register(i32 noundef -1, ptr noundef nonnull %2, ptr noundef %0) #6
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %49 to i32
  %52 = select i1 %50, i32 %51, i32 0
  br label %53

53:                                               ; preds = %48, %32, %22
  %54 = phi i32 [ %52, %48 ], [ -22, %22 ], [ -19, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret i32 %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixed_phy_register(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_phy_deregister_fixed_link(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %4 = select i1 %2, ptr null, ptr %3
  %5 = tail call ptr @fwnode_phy_find_device(ptr noundef %4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fixed_phy_unregister(ptr noundef nonnull %5) #6
  tail call void @put_device(ptr noundef nonnull %5) #6
  tail call void @phy_device_free(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fixed_phy_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_get_phy_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_mdiobus_register_phy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_device_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
