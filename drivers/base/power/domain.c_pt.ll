; ModuleID = '/llk/IR/drivers/base/power/domain.c_pt.bc'
source_filename = "../drivers/base/power/domain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_set_performance_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_set_performance_state\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_set_performance_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_set_next_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_set_next_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_set_next_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_add_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_genpd_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_genpd_remove_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_genpd_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_add_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_add_subdomain\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_add_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_remove_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_remove_subdomain\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_remove_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_init\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_add_provider_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_add_provider_simple\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_add_provider_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_add_provider_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_add_provider_onecell\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_add_provider_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_del_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_add_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_add_subdomain\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_add_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_remove_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_remove_subdomain\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_remove_subdomain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_remove_last:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_remove_last\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_remove_last:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genpd_dev_pm_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22genpd_dev_pm_attach\22\09\09\09\09\09"
module asm "__kstrtabns_genpd_dev_pm_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genpd_dev_pm_attach_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22genpd_dev_pm_attach_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_genpd_dev_pm_attach_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_genpd_parse_idle_states:\09\09\09\09\09"
module asm "\09.asciz \09\22of_genpd_parse_idle_states\22\09\09\09\09\09"
module asm "__kstrtabns_of_genpd_parse_idle_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_genpd_opp_to_performance_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_genpd_opp_to_performance_state\22\09\09\09\09\09"
module asm "__kstrtabns_pm_genpd_opp_to_performance_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.genpd_lock_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, ptr, i32, i32, i32, i32, i64, ptr }
%struct.pm_domain_data = type { %struct.list_head, ptr }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.72 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.72 = type { %struct.mutex }
%struct.gpd_link = type { ptr, %struct.list_head, ptr, %struct.list_head, i32, i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_genpd_provider = type { %struct.list_head, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"drivers/base/power/domain.c\00", align 1
@__kstrtab_dev_pm_genpd_set_performance_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_set_performance_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_set_performance_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_set_performance_state to i32), ptr @__kstrtab_dev_pm_genpd_set_performance_state, ptr @__kstrtabns_dev_pm_genpd_set_performance_state }, section "___ksymtab_gpl+dev_pm_genpd_set_performance_state", align 4
@__kstrtab_dev_pm_genpd_set_next_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_set_next_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_set_next_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_set_next_wakeup to i32), ptr @__kstrtab_dev_pm_genpd_set_next_wakeup, ptr @__kstrtabns_dev_pm_genpd_set_next_wakeup }, section "___ksymtab_gpl+dev_pm_genpd_set_next_wakeup", align 4
@__setup_str_pd_ignore_unused_setup = internal constant [17 x i8] c"pd_ignore_unused\00", section ".init.rodata", align 1
@__setup_pd_ignore_unused_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pd_ignore_unused_setup, ptr @pd_ignore_unused_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_domain__248_1047_genpd_power_off_unused7 = internal global ptr @genpd_power_off_unused, section ".initcall7.init", align 4
@__kstrtab_dev_pm_genpd_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_suspend to i32), ptr @__kstrtab_dev_pm_genpd_suspend, ptr @__kstrtabns_dev_pm_genpd_suspend }, section "___ksymtab_gpl+dev_pm_genpd_suspend", align 4
@__kstrtab_dev_pm_genpd_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_resume to i32), ptr @__kstrtab_dev_pm_genpd_resume, ptr @__kstrtabns_dev_pm_genpd_resume }, section "___ksymtab_gpl+dev_pm_genpd_resume", align 4
@gpd_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gpd_list_lock, i64 12), ptr getelementptr (i8, ptr @gpd_list_lock, i64 12) } }, align 4
@__kstrtab_pm_genpd_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_add_device to i32), ptr @__kstrtab_pm_genpd_add_device, ptr @__kstrtabns_pm_genpd_add_device }, section "___ksymtab_gpl+pm_genpd_add_device", align 4
@__kstrtab_pm_genpd_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_remove_device to i32), ptr @__kstrtab_pm_genpd_remove_device, ptr @__kstrtabns_pm_genpd_remove_device }, section "___ksymtab_gpl+pm_genpd_remove_device", align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to add notifier for PM domain %s\0A\00", align 1
@__kstrtab_dev_pm_genpd_add_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_add_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_add_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_add_notifier to i32), ptr @__kstrtab_dev_pm_genpd_add_notifier, ptr @__kstrtabns_dev_pm_genpd_add_notifier }, section "___ksymtab_gpl+dev_pm_genpd_add_notifier", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to remove notifier for PM domain %s\0A\00", align 1
@__kstrtab_dev_pm_genpd_remove_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_genpd_remove_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_genpd_remove_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_genpd_remove_notifier to i32), ptr @__kstrtab_dev_pm_genpd_remove_notifier, ptr @__kstrtabns_dev_pm_genpd_remove_notifier }, section "___ksymtab_gpl+dev_pm_genpd_remove_notifier", align 4
@__kstrtab_pm_genpd_add_subdomain = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_add_subdomain = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_add_subdomain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_add_subdomain to i32), ptr @__kstrtab_pm_genpd_add_subdomain, ptr @__kstrtabns_pm_genpd_add_subdomain }, section "___ksymtab_gpl+pm_genpd_add_subdomain", align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\014PM: %s: unable to remove subdomain %s\0A\00", align 1
@__kstrtab_pm_genpd_remove_subdomain = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_remove_subdomain = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_remove_subdomain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_remove_subdomain to i32), ptr @__kstrtab_pm_genpd_remove_subdomain, ptr @__kstrtabns_pm_genpd_remove_subdomain }, section "___ksymtab_gpl+pm_genpd_remove_subdomain", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"\014PM: %s: no governor for states\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@gpd_list = internal global %struct.list_head { ptr @gpd_list, ptr @gpd_list }, align 4
@__kstrtab_pm_genpd_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_init to i32), ptr @__kstrtab_pm_genpd_init, ptr @__kstrtabns_pm_genpd_init }, section "___ksymtab_gpl+pm_genpd_init", align 4
@__kstrtab_pm_genpd_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_remove to i32), ptr @__kstrtab_pm_genpd_remove, ptr @__kstrtabns_pm_genpd_remove }, section "___ksymtab_gpl+pm_genpd_remove", align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to add OPP table: %d\0A\00", align 1
@__kstrtab_of_genpd_add_provider_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_add_provider_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_add_provider_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_add_provider_simple to i32), ptr @__kstrtab_of_genpd_add_provider_simple, ptr @__kstrtabns_of_genpd_add_provider_simple }, section "___ksymtab_gpl+of_genpd_add_provider_simple", align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to add OPP table for index %d: %d\0A\00", align 1
@__kstrtab_of_genpd_add_provider_onecell = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_add_provider_onecell = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_add_provider_onecell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_add_provider_onecell to i32), ptr @__kstrtab_of_genpd_add_provider_onecell, ptr @__kstrtabns_of_genpd_add_provider_onecell }, section "___ksymtab_gpl+of_genpd_add_provider_onecell", align 4
@of_genpd_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_genpd_mutex, i64 12), ptr getelementptr (i8, ptr @of_genpd_mutex, i64 12) } }, align 4
@of_genpd_providers = internal global %struct.list_head { ptr @of_genpd_providers, ptr @of_genpd_providers }, align 4
@__kstrtab_of_genpd_del_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_del_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_del_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_del_provider to i32), ptr @__kstrtab_of_genpd_del_provider, ptr @__kstrtabns_of_genpd_del_provider }, section "___ksymtab_gpl+of_genpd_del_provider", align 4
@__kstrtab_of_genpd_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_add_device to i32), ptr @__kstrtab_of_genpd_add_device, ptr @__kstrtabns_of_genpd_add_device }, section "___ksymtab_gpl+of_genpd_add_device", align 4
@__kstrtab_of_genpd_add_subdomain = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_add_subdomain = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_add_subdomain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_add_subdomain to i32), ptr @__kstrtab_of_genpd_add_subdomain, ptr @__kstrtabns_of_genpd_add_subdomain }, section "___ksymtab_gpl+of_genpd_add_subdomain", align 4
@__kstrtab_of_genpd_remove_subdomain = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_remove_subdomain = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_remove_subdomain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_remove_subdomain to i32), ptr @__kstrtab_of_genpd_remove_subdomain, ptr @__kstrtabns_of_genpd_remove_subdomain }, section "___ksymtab_gpl+of_genpd_remove_subdomain", align 4
@__kstrtab_of_genpd_remove_last = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_remove_last = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_remove_last = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_remove_last to i32), ptr @__kstrtab_of_genpd_remove_last, ptr @__kstrtabns_of_genpd_remove_last }, section "___ksymtab_gpl+of_genpd_remove_last", align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@__kstrtab_genpd_dev_pm_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_genpd_dev_pm_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_genpd_dev_pm_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genpd_dev_pm_attach to i32), ptr @__kstrtab_genpd_dev_pm_attach, ptr @__kstrtabns_genpd_dev_pm_attach }, section "___ksymtab_gpl+genpd_dev_pm_attach", align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"genpd:%u:%s\00", align 1
@genpd_bus_type = internal global %struct.bus_type { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_genpd_dev_pm_attach_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_genpd_dev_pm_attach_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_genpd_dev_pm_attach_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genpd_dev_pm_attach_by_id to i32), ptr @__kstrtab_genpd_dev_pm_attach_by_id, ptr @__kstrtabns_genpd_dev_pm_attach_by_id }, section "___ksymtab_gpl+genpd_dev_pm_attach_by_id", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"power-domain-names\00", align 1
@__kstrtab_of_genpd_parse_idle_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_genpd_parse_idle_states = external dso_local constant [0 x i8], align 1
@__ksymtab_of_genpd_parse_idle_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_genpd_parse_idle_states to i32), ptr @__kstrtab_of_genpd_parse_idle_states, ptr @__kstrtabns_of_genpd_parse_idle_states }, section "___ksymtab_gpl+of_genpd_parse_idle_states", align 4
@__kstrtab_pm_genpd_opp_to_performance_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_genpd_opp_to_performance_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_genpd_opp_to_performance_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_genpd_opp_to_performance_state to i32), ptr @__kstrtab_pm_genpd_opp_to_performance_state, ptr @__kstrtabns_pm_genpd_opp_to_performance_state }, section "___ksymtab_gpl+pm_genpd_opp_to_performance_state", align 4
@__initcall__kmod_domain__249_2984_genpd_bus_init1 = internal global ptr @genpd_bus_init, section ".initcall1.init", align 4
@__initcall__kmod_domain__250_3319_genpd_debug_init7 = internal global ptr @genpd_debug_init, section ".initcall7.init", align 4
@genpd_debugfs_dir = internal unnamed_addr global ptr null, align 4
@__exitcall_genpd_debug_exit = internal global ptr @genpd_debug_exit, section ".exitcall.exit", align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"\013PM: %s: Failed to roll back to %d performance state\0A\00", align 1
@pd_ignore_unused = internal unnamed_addr global i1 false, align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\014PM: genpd: Not disabling unused power domains\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [44 x i8] c"Parent %s of subdomain %s must be IRQ safe\0A\00", align 1
@genpd_spin_ops = internal constant %struct.genpd_lock_ops { ptr @genpd_lock_spin, ptr @genpd_lock_nested_spin, ptr @genpd_lock_interruptible_spin, ptr @genpd_unlock_spin }, align 4
@genpd_lock_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"&genpd->mlock\00", align 1
@genpd_mtx_ops = internal constant %struct.genpd_lock_ops { ptr @genpd_lock_mtx, ptr @genpd_lock_nested_mtx, ptr @genpd_lock_interruptible_mtx, ptr @genpd_unlock_mtx }, align 4
@irq_safe_dev_in_no_sleep_domain.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"PM domain %s will not be powered off\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"\013PM: Provider present, unable to remove %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\013PM: %s: unable to remove %s\0A\00", align 1
@__func__.genpd_remove = private unnamed_addr constant [13 x i8] c"genpd_remove\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\013PM: %s: invalid domain index %u\0A\00", align 1
@__func__.genpd_xlate_onecell = private unnamed_addr constant [20 x i8] c"genpd_xlate_onecell\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"failed to add to PM domain %s: %d\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"failed to set required performance state for power-domain %s: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [39 x i8] c"failed to remove from PM domain %s: %d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"genpd\00", align 1
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"domain-idle-states\00", align 1
@idle_state_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"domain-idle-state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [55 x i8] c"\013PM: Parsing idle state node %pOF failed with err %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"entry-latency-us\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"exit-latency-us\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"min-residency-us\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"current_state\00", align 1
@status_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"sub_domains\00", align 1
@sub_domains_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sub_domains_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"idle_states\00", align 1
@idle_states_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @idle_states_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"active_time\00", align 1
@active_time_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @active_time_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"total_idle_time\00", align 1
@total_idle_time_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @total_idle_time_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@devices_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @devices_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [11 x i8] c"perf_state\00", align 1
@perf_state_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @perf_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@status_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%s-%u\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"State          Time Spent(ms) Usage          Rejected\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"S%-13i %-14lld %-14llu %llu\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"%lld ms\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"pm_genpd\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"pm_genpd_summary\00", align 1
@summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [96 x i8] c"domain                          status          children                           performance\0A\00", align 1
@.str.47 = private unnamed_addr constant [72 x i8] c"    /device                                             runtime status\0A\00", align 1
@.str.48 = private unnamed_addr constant [96 x i8] c"----------------------------------------------------------------------------------------------\0A\00", align 1
@genpd_summary_one.status_lookup = internal unnamed_addr constant [2 x ptr] [ptr @.str.36, ptr @.str.37], align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"%-30s  %-50s %u\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"\0A%48s\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"\0A    %-50s  \00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rtpm_status_str.status_lookup = internal unnamed_addr constant [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"resuming\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"suspending\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"%-25s  \00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__exitcall_genpd_debug_exit, ptr @__initcall__kmod_domain__248_1047_genpd_power_off_unused7, ptr @__initcall__kmod_domain__249_2984_genpd_bus_init1, ptr @__initcall__kmod_domain__250_3319_genpd_debug_init7, ptr @__ksymtab_dev_pm_genpd_add_notifier, ptr @__ksymtab_dev_pm_genpd_remove_notifier, ptr @__ksymtab_dev_pm_genpd_resume, ptr @__ksymtab_dev_pm_genpd_set_next_wakeup, ptr @__ksymtab_dev_pm_genpd_set_performance_state, ptr @__ksymtab_dev_pm_genpd_suspend, ptr @__ksymtab_genpd_dev_pm_attach, ptr @__ksymtab_genpd_dev_pm_attach_by_id, ptr @__ksymtab_of_genpd_add_device, ptr @__ksymtab_of_genpd_add_provider_onecell, ptr @__ksymtab_of_genpd_add_provider_simple, ptr @__ksymtab_of_genpd_add_subdomain, ptr @__ksymtab_of_genpd_del_provider, ptr @__ksymtab_of_genpd_parse_idle_states, ptr @__ksymtab_of_genpd_remove_last, ptr @__ksymtab_of_genpd_remove_subdomain, ptr @__ksymtab_pm_genpd_add_device, ptr @__ksymtab_pm_genpd_add_subdomain, ptr @__ksymtab_pm_genpd_init, ptr @__ksymtab_pm_genpd_opp_to_performance_state, ptr @__ksymtab_pm_genpd_remove, ptr @__ksymtab_pm_genpd_remove_device, ptr @__ksymtab_pm_genpd_remove_subdomain, ptr @__setup_pd_ignore_unused_setup, ptr @genpd_debug_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %104, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, @genpd_runtime_suspend
  %16 = getelementptr i8, ptr %8, i32 -472
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %104, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pm_subsys_data, ptr %21, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #15
  br label %104

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %8, i32 304
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %16) #15
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 7
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %20, align 8
  %42 = getelementptr inbounds %struct.pm_subsys_data, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %43, i32 0, i32 7
  store i32 %1, ptr %44, align 4
  br label %99

45:                                               ; preds = %35, %28
  %46 = load ptr, ptr %7, align 8
  %47 = icmp eq ptr %46, null
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %49 = or i1 %47, %48
  %50 = getelementptr i8, ptr %46, i32 -472
  %51 = select i1 %49, ptr inttoptr (i32 -22 to ptr), ptr %50
  %52 = load ptr, ptr %20, align 8
  %53 = getelementptr inbounds %struct.pm_subsys_data, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %96, label %58

58:                                               ; preds = %45
  store i32 %1, ptr %55, align 4
  %59 = getelementptr inbounds %struct.generic_pm_domain, ptr %51, i32 0, i32 16
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, %1
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.generic_pm_domain, ptr %51, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %74, label %66

66:                                               ; preds = %66, %62
  %67 = phi ptr [ %72, %66 ], [ %64, %62 ]
  %68 = phi i32 [ %71, %66 ], [ %1, %62 ]
  %69 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %67, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %70, i32 %68) #15
  %72 = load ptr, ptr %67, align 4
  %73 = icmp eq ptr %72, %63
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %62
  %75 = phi i32 [ %1, %62 ], [ %71, %66 ]
  %76 = getelementptr inbounds %struct.generic_pm_domain, ptr %51, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %87, label %79

79:                                               ; preds = %79, %74
  %80 = phi ptr [ %85, %79 ], [ %77, %74 ]
  %81 = phi i32 [ %84, %79 ], [ %75, %74 ]
  %82 = getelementptr i8, ptr %80, i32 20
  %83 = load i32, ptr %82, align 4
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 %81) #15
  %85 = load ptr, ptr %80, align 4
  %86 = icmp eq ptr %85, %76
  br i1 %86, label %87, label %79

87:                                               ; preds = %79, %74, %58
  %88 = phi i32 [ %1, %58 ], [ %75, %74 ], [ %84, %79 ]
  %89 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %51, i32 noundef %88, i32 noundef 0) #15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load ptr, ptr %20, align 8
  %93 = getelementptr inbounds %struct.pm_subsys_data, ptr %92, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  br label %96

95:                                               ; preds = %87
  store i32 %56, ptr %55, align 4
  br label %99

96:                                               ; preds = %91, %45
  %97 = phi ptr [ %94, %91 ], [ %54, %45 ]
  %98 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %97, i32 0, i32 7
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %96, %95, %40
  %100 = phi i32 [ 0, %40 ], [ %89, %95 ], [ 0, %96 ]
  %101 = load ptr, ptr %29, align 8
  %102 = getelementptr inbounds %struct.genpd_lock_ops, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef nonnull %16) #15
  br label %104

104:                                              ; preds = %99, %27, %12, %6, %2
  %105 = phi i32 [ -22, %27 ], [ %100, %99 ], [ -19, %6 ], [ -19, %2 ], [ -19, %12 ]
  ret i32 %105
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dev_pm_genpd_set_next_wakeup(ptr noundef readonly %0, i64 noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, @genpd_runtime_suspend
  %16 = getelementptr i8, ptr %8, i32 -472
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.pm_subsys_data, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %23, i32 0, i32 8
  store i64 %1, ptr %24, align 8
  br label %25

25:                                               ; preds = %19, %12, %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pd_ignore_unused_setup(ptr nocapture noundef readnone %0) #4 section ".init.text" {
  store i1 true, ptr @pd_ignore_unused, align 1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genpd_power_off_unused() #5 section ".init.text" {
  %1 = load i1, ptr @pd_ignore_unused, align 1
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %15

4:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %5 = load ptr, ptr @gpd_list, align 4
  %6 = icmp eq ptr %5, @gpd_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr @pm_wq, align 4
  %10 = getelementptr i8, ptr %8, i32 36
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %10) #15
  %12 = load ptr, ptr %8, align 4
  %13 = icmp eq ptr %12, @gpd_list
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  br label %15

15:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_genpd_suspend(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, @genpd_runtime_suspend
  %15 = getelementptr i8, ptr %7, i32 -472
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 268
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %7, i32 304
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %15) #15
  %27 = getelementptr i8, ptr %7, i32 188
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call fastcc void @genpd_sync_power_off(ptr noundef nonnull %15, i1 noundef zeroext true, i32 noundef 0) #15
  %30 = load ptr, ptr %24, align 8
  %31 = getelementptr inbounds %struct.genpd_lock_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %15) #15
  br label %37

33:                                               ; preds = %18
  %34 = getelementptr i8, ptr %7, i32 188
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call fastcc void @genpd_sync_power_off(ptr noundef nonnull %15, i1 noundef zeroext false, i32 noundef 0) #15
  br label %37

37:                                               ; preds = %33, %23, %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_genpd_resume(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %37, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, @genpd_runtime_suspend
  %15 = getelementptr i8, ptr %7, i32 -472
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %37, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 268
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %7, i32 304
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %15) #15
  tail call fastcc void @genpd_sync_power_on(ptr noundef nonnull %15, i1 noundef zeroext true, i32 noundef 0) #15
  %27 = getelementptr i8, ptr %7, i32 188
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %24, align 8
  %31 = getelementptr inbounds %struct.genpd_lock_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %15) #15
  br label %37

33:                                               ; preds = %18
  tail call fastcc void @genpd_sync_power_on(ptr noundef nonnull %15, i1 noundef zeroext false, i32 noundef 0) #15
  %34 = getelementptr i8, ptr %7, i32 188
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %23, %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_add_device(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %3 = tail call fastcc i32 @genpd_add_device(ptr noundef %0, ptr noundef %1, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_add_device(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %97, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %97, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @dev_pm_get_subsys_data(ptr noundef nonnull %1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = inttoptr i32 %12 to ptr
  br label %40

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 96) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pm_domain_data, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %18, i32 0, i32 1, i32 3
  store i8 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %18, i32 0, i32 1, i32 2
  store i64 2147483647000, ptr %23, align 8
  %24 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %18, i32 0, i32 2
  store ptr @genpd_dev_pm_qos_notifier, ptr %24, align 8
  %25 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %18, i32 0, i32 8
  store i64 9223372036854775807, ptr %25, align 8
  %26 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #15
  %27 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.pm_subsys_data, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %33 = load i16, ptr %26, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %38

35:                                               ; preds = %20
  store ptr %18, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %36 = load i16, ptr %26, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %40

38:                                               ; preds = %32, %16
  %39 = phi ptr [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -12 to ptr), %16 ]
  tail call void @dev_pm_put_subsys_data(ptr noundef nonnull %1) #15
  br label %43

40:                                               ; preds = %35, %14
  %41 = phi ptr [ %15, %14 ], [ %18, %35 ]
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %38
  %44 = phi ptr [ %39, %38 ], [ %41, %40 ]
  %45 = ptrtoint ptr %44 to i32
  br label %97

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %56, %46
  %52 = phi i32 [ %53, %56 ], [ -1, %46 ]
  %53 = tail call i32 @cpumask_next(i32 noundef %52, ptr noundef nonnull @__cpu_possible_mask) #18
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = tail call ptr @get_cpu_device(i32 noundef %53) #15
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %59, label %51

59:                                               ; preds = %56, %51, %46
  %60 = phi i32 [ -1, %46 ], [ %53, %56 ], [ -1, %51 ]
  %61 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %41, i32 0, i32 4
  store i32 %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 30
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = tail call i32 %63(ptr noundef %0, ptr noundef %1) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %65, %59
  %69 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %0) #15
  %72 = load i32, ptr %61, align 8
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call fastcc void @genpd_update_cpumask(ptr noundef %0, i32 noundef %72, i1 noundef zeroext true, i32 noundef 0) #15
  br label %75

75:                                               ; preds = %74, %68
  %76 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1
  tail call void @dev_pm_domain_set(ptr noundef %1, ptr noundef %76) #15
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 13
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8
  %80 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 27
  store i8 1, ptr %80, align 8
  %81 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 5
  %82 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 5, i32 1
  %83 = load ptr, ptr %82, align 4
  store ptr %41, ptr %82, align 4
  store ptr %81, ptr %41, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %83, ptr %84, align 4
  store volatile ptr %41, ptr %83, align 4
  %85 = load ptr, ptr %69, align 8
  %86 = getelementptr inbounds %struct.genpd_lock_ops, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %0) #15
  %88 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %41, i32 0, i32 2
  %89 = tail call i32 @dev_pm_qos_add_notifier(ptr noundef %1, ptr noundef %88, i32 noundef 1) #15
  br label %97

90:                                               ; preds = %65
  %91 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %91) #15
  %92 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.pm_subsys_data, ptr %93, i32 0, i32 5
  store ptr null, ptr %94, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %95 = load i16, ptr %91, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  tail call void @kfree(ptr noundef %41) #15
  tail call void @dev_pm_put_subsys_data(ptr noundef %1) #15
  br label %97

97:                                               ; preds = %90, %75, %43, %7, %3
  %98 = phi i32 [ %45, %43 ], [ -22, %7 ], [ -22, %3 ], [ 0, %75 ], [ %66, %90 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_remove_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, @genpd_runtime_suspend
  %15 = getelementptr i8, ptr %7, i32 -472
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call fastcc i32 @genpd_remove_device(ptr noundef nonnull %15, ptr noundef nonnull %0)
  br label %20

20:                                               ; preds = %18, %11, %5, %1
  %21 = phi i32 [ %19, %18 ], [ -22, %5 ], [ -22, %1 ], [ -22, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_remove_device(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 26
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pm_subsys_data, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 2
  %8 = tail call i32 @dev_pm_qos_remove_notifier(ptr noundef %1, ptr noundef %7, i32 noundef 1) #15
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.genpd_lock_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0) #15
  %19 = tail call i32 @dev_pm_qos_add_notifier(ptr noundef %1, ptr noundef %7, i32 noundef 1) #15
  br label %47

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 13
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 27
  store i8 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %6, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call fastcc void @genpd_update_cpumask(ptr noundef %0, i32 noundef %26, i1 noundef zeroext false, i32 noundef 0) #15
  br label %29

29:                                               ; preds = %28, %20
  tail call void @dev_pm_domain_set(ptr noundef %1, ptr noundef null) #15
  %30 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %30, align 4
  %34 = load ptr, ptr %9, align 8
  %35 = getelementptr inbounds %struct.genpd_lock_ops, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %0) #15
  %37 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 31
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  tail call void %38(ptr noundef %0, ptr noundef %1) #15
  br label %41

41:                                               ; preds = %40, %29
  %42 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %42) #15
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.pm_subsys_data, ptr %43, i32 0, i32 5
  store ptr null, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %45 = load i16, ptr %42, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  tail call void @kfree(ptr noundef %6) #15
  tail call void @dev_pm_put_subsys_data(ptr noundef %1) #15
  br label %47

47:                                               ; preds = %41, %15
  %48 = phi i32 [ -11, %15 ], [ 0, %41 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_genpd_add_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %46, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, @genpd_runtime_suspend
  %16 = getelementptr i8, ptr %8, i32 -472
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %46, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pm_subsys_data, ptr %21, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1733, i32 noundef 9, ptr noundef null) #15
  br label %46

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %25, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %8, i32 304
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef nonnull %16) #15
  %36 = getelementptr i8, ptr %8, i32 212
  %37 = tail call i32 @raw_notifier_chain_register(ptr noundef %36, ptr noundef %1) #15
  %38 = load ptr, ptr %33, align 8
  %39 = getelementptr inbounds %struct.genpd_lock_ops, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef nonnull %16) #15
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = getelementptr i8, ptr %8, i32 172
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %44) #16
  br label %46

45:                                               ; preds = %32
  store ptr %1, ptr %29, align 4
  br label %46

46:                                               ; preds = %45, %42, %28, %27, %12, %6, %2
  %47 = phi i32 [ -22, %27 ], [ %37, %42 ], [ 0, %45 ], [ -17, %28 ], [ -19, %6 ], [ -19, %2 ], [ -19, %12 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_genpd_remove_notifier(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ne ptr %13, @genpd_runtime_suspend
  %15 = getelementptr i8, ptr %7, i32 -472
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %46, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pm_subsys_data, ptr %20, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %22, %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1779, i32 noundef 9, ptr noundef null) #15
  br label %46

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %24, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %7, i32 304
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef nonnull %15) #15
  %35 = getelementptr i8, ptr %7, i32 212
  %36 = load ptr, ptr %28, align 4
  %37 = tail call i32 @raw_notifier_chain_unregister(ptr noundef %35, ptr noundef %36) #15
  %38 = load ptr, ptr %32, align 8
  %39 = getelementptr inbounds %struct.genpd_lock_ops, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef nonnull %15) #15
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = getelementptr i8, ptr %7, i32 172
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %44) #16
  br label %46

45:                                               ; preds = %31
  store ptr null, ptr %28, align 4
  br label %46

46:                                               ; preds = %45, %42, %27, %26, %11, %5, %1
  %47 = phi i32 [ -22, %26 ], [ %37, %42 ], [ 0, %45 ], [ -19, %27 ], [ -19, %5 ], [ -19, %1 ], [ -19, %11 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_add_subdomain(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %3 = tail call fastcc i32 @genpd_add_subdomain(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_add_subdomain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %89, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %0, %1
  %11 = or i1 %10, %9
  br i1 %11, label %89, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 32
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1819, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %24, ptr noundef %26) #15
  br label %89

27:                                               ; preds = %17, %12
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 32) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 39
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef nonnull %1) #15
  %35 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.genpd_lock_ops, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef nonnull %0, i32 noundef 1) #15
  %39 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %42, %31
  %47 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %62, label %50

50:                                               ; preds = %59, %46
  %51 = phi ptr [ %60, %59 ], [ %48, %46 ]
  %52 = getelementptr i8, ptr %51, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %51, i32 -4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55, %50
  %60 = load ptr, ptr %51, align 4
  %61 = icmp eq ptr %60, %47
  br i1 %61, label %62, label %50

62:                                               ; preds = %59, %46
  store ptr %0, ptr %29, align 8
  %63 = getelementptr inbounds %struct.gpd_link, ptr %29, i32 0, i32 1
  %64 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3, i32 1
  %65 = load ptr, ptr %64, align 4
  store ptr %63, ptr %64, align 4
  store ptr %47, ptr %63, align 4
  %66 = getelementptr inbounds %struct.gpd_link, ptr %29, i32 0, i32 1, i32 1
  store ptr %65, ptr %66, align 8
  store volatile ptr %63, ptr %65, align 4
  %67 = getelementptr inbounds %struct.gpd_link, ptr %29, i32 0, i32 2
  store ptr %1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gpd_link, ptr %29, i32 0, i32 3
  %69 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 4
  %70 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 4, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %68, ptr %70, align 4
  store ptr %69, ptr %68, align 8
  %72 = getelementptr inbounds %struct.gpd_link, ptr %29, i32 0, i32 3, i32 1
  store ptr %71, ptr %72, align 4
  store volatile ptr %68, ptr %71, align 4
  %73 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 12
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #15, !srcloc !14
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #15, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  br label %79

79:                                               ; preds = %76, %62, %55, %42
  %80 = phi i1 [ true, %62 ], [ true, %76 ], [ false, %42 ], [ false, %55 ]
  %81 = phi i32 [ 0, %62 ], [ 0, %76 ], [ -22, %42 ], [ -22, %55 ]
  %82 = load ptr, ptr %35, align 8
  %83 = getelementptr inbounds %struct.genpd_lock_ops, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %0) #15
  %85 = load ptr, ptr %32, align 8
  %86 = getelementptr inbounds %struct.genpd_lock_ops, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %1) #15
  br i1 %80, label %89, label %88

88:                                               ; preds = %79
  tail call void @kfree(ptr noundef nonnull %29) #15
  br label %89

89:                                               ; preds = %88, %79, %27, %22, %6, %2
  %90 = phi i32 [ -22, %22 ], [ -22, %6 ], [ -22, %2 ], [ -12, %27 ], [ %81, %88 ], [ %81, %79 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_remove_subdomain(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %70, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 39
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef nonnull %1) #15
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.genpd_lock_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef nonnull %0, i32 noundef 1) #15
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 13
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %10
  %26 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %27, ptr noundef %29) #16
  br label %62

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %38, %37 ]
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr i8, ptr %35, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %34

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %35, i32 -4
  %44 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %38, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  %47 = getelementptr i8, ptr %35, i32 12
  %48 = getelementptr i8, ptr %35, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @kfree(ptr noundef %43) #15
  %52 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #15
  br label %62

60:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #15, !srcloc !14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %62

62:                                               ; preds = %60, %59, %42, %34, %25
  %63 = phi i32 [ -16, %25 ], [ 0, %42 ], [ 0, %59 ], [ 0, %60 ], [ -22, %34 ]
  %64 = load ptr, ptr %14, align 8
  %65 = getelementptr inbounds %struct.genpd_lock_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %0) #15
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.genpd_lock_ops, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %1) #15
  br label %70

70:                                               ; preds = %62, %6, %2
  %71 = phi i32 [ %63, %62 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_sd_counter_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #15
  br label %8

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %8

8:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_init(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %95, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 5
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 5, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 20
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  br i1 %18, label %21, label %20

20:                                               ; preds = %7
  store i32 0, ptr %19, align 4
  br label %22

21:                                               ; preds = %7
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.15, ptr noundef nonnull @genpd_lock_init.__key) #15
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi ptr [ @genpd_mtx_ops, %21 ], [ @genpd_spin_ops, %20 ]
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 6
  store ptr %1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 7
  store i32 -32, ptr %26, align 4
  %27 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 7, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 7, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 7, i32 2
  store ptr @genpd_power_off_work_fn, ptr %29, align 4
  %30 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  store volatile i32 0, ptr %30, align 4
  %31 = zext i1 %2 to i32
  %32 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 13
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 25
  store i64 -1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 27
  store i8 1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 8
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 9
  store i8 0, ptr %37, align 8
  %38 = tail call i64 @ktime_get() #15
  %39 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 38
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 20
  store ptr @genpd_runtime_suspend, ptr %41, align 8
  %42 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 21
  store ptr @genpd_runtime_resume, ptr %42, align 4
  store ptr @genpd_prepare, ptr %40, align 8
  %43 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 14
  store ptr @genpd_suspend_noirq, ptr %43, align 8
  %44 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 15
  store ptr @genpd_resume_noirq, ptr %44, align 4
  %45 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 16
  store ptr @genpd_freeze_noirq, ptr %45, align 8
  %46 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 17
  store ptr @genpd_thaw_noirq, ptr %46, align 4
  %47 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 18
  store ptr @genpd_poweroff_noirq, ptr %47, align 8
  %48 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 19
  store ptr @genpd_restore_noirq, ptr %48, align 4
  %49 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr @genpd_complete, ptr %49, align 4
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1, i32 1
  store ptr @genpd_dev_pm_start, ptr %50, align 4
  %51 = load i32, ptr %15, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %22
  %55 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 24
  %56 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 24, i32 1
  store ptr @pm_clk_suspend, ptr %56, align 4
  store ptr @pm_clk_resume, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %22
  %58 = and i32 %51, 36
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %32, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %60, %57
  %64 = and i32 %51, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 17
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 35
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 64) #17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  store ptr %74, ptr %77, align 8
  store i32 1, ptr %69, align 8
  %78 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 34
  store ptr @genpd_free_default_power_state, ptr %78, align 4
  br label %87

79:                                               ; preds = %68
  %80 = icmp eq ptr %1, null
  %81 = icmp ne i32 %70, 1
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %85) #16
  br label %87

87:                                               ; preds = %83, %79, %76
  tail call void @device_initialize(ptr noundef nonnull %0) #15
  %88 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %89) #15
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %91 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 2
  %92 = load ptr, ptr @gpd_list, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  store ptr %92, ptr %91, align 4
  %94 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 2, i32 1
  store ptr @gpd_list, ptr %94, align 4
  store volatile ptr %91, ptr @gpd_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  tail call fastcc void @genpd_debug_add(ptr noundef nonnull %0)
  br label %95

95:                                               ; preds = %87, %72, %60, %3
  %96 = phi i32 [ 0, %87 ], [ -22, %3 ], [ -22, %60 ], [ -12, %72 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_power_off_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -620
  %3 = getelementptr i8, ptr %0, i32 156
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #15
  tail call fastcc void @genpd_power_off(ptr noundef %2, i1 noundef zeroext false, i32 noundef 0)
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pm_subsys_data, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  %16 = getelementptr i8, ptr %12, i32 -472
  %17 = select i1 %15, ptr inttoptr (i32 -22 to ptr), ptr %16
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %211, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dev_power_governor, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = select i1 %10, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call zeroext i1 %25(ptr noundef %0) #15
  br i1 %29, label %30, label %211

30:                                               ; preds = %28, %23, %19
  br i1 %10, label %31, label %33

31:                                               ; preds = %30
  %32 = tail call i64 @ktime_get() #15
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i64 [ %32, %31 ], [ 0, %30 ]
  %35 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.device_type, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %38, %33
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.class, ptr %44, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bus_type, ptr %52, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54, %46, %38
  %59 = phi ptr [ %40, %38 ], [ %48, %46 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.dev_pm_ops, ptr %59, i32 0, i32 20
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58, %54, %50
  %64 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.device_driver, ptr %65, i32 0, i32 16
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.dev_pm_ops, ptr %69, i32 0, i32 20
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71, %58
  %76 = phi ptr [ %73, %71 ], [ %61, %58 ]
  %77 = tail call i32 %76(ptr noundef %0) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %211

79:                                               ; preds = %75, %71, %67, %63
  %80 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 24, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %129, label %83

83:                                               ; preds = %79
  %84 = tail call i32 %81(ptr noundef %0) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %129, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %35, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.device_type, ptr %87, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %89, %86
  %94 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.class, ptr %95, i32 0, i32 13
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.bus_type, ptr %103, i32 0, i32 18
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105, %97, %89
  %110 = phi ptr [ %91, %89 ], [ %99, %97 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.dev_pm_ops, ptr %110, i32 0, i32 21
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %109, %105, %101
  %115 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %211, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.device_driver, ptr %116, i32 0, i32 16
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %211, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.dev_pm_ops, ptr %120, i32 0, i32 21
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %211, label %126

126:                                              ; preds = %122, %109
  %127 = phi ptr [ %124, %122 ], [ %112, %109 ]
  %128 = tail call i32 %127(ptr noundef %0) #15
  br label %211

129:                                              ; preds = %83, %79
  br i1 %10, label %130, label %138

130:                                              ; preds = %129
  %131 = tail call i64 @ktime_get() #15
  %132 = sub i64 %131, %34
  %133 = load i64, ptr %6, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  store i64 %132, ptr %6, align 8
  %136 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 27
  store i8 1, ptr %136, align 8
  %137 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 1, i32 3
  store i8 1, ptr %137, align 8
  br label %138

138:                                              ; preds = %135, %130, %129
  %139 = load i16, ptr %7, align 8
  %140 = and i16 %139, 1024
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 32
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = and i32 %144, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %211

150:                                              ; preds = %147
  %151 = load i1, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  br i1 %151, label %211, label %152

152:                                              ; preds = %150
  store i1 true, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  %153 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 10
  %154 = load ptr, ptr %153, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %154) #16
  br label %211

155:                                              ; preds = %142, %138
  %156 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 39
  %157 = load ptr, ptr %156, align 8
  %158 = load ptr, ptr %157, align 4
  tail call void %158(ptr noundef %17) #15
  %159 = load ptr, ptr %2, align 8
  %160 = getelementptr inbounds %struct.pm_subsys_data, ptr %159, i32 0, i32 5
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %161, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %11, align 8
  %165 = icmp eq ptr %164, null
  %166 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  %167 = or i1 %165, %166
  %168 = getelementptr i8, ptr %164, i32 -472
  %169 = select i1 %167, ptr inttoptr (i32 -22 to ptr), ptr %168
  %170 = icmp eq i32 %163, 0
  br i1 %170, label %205, label %171

171:                                              ; preds = %155
  store i32 0, ptr %162, align 4
  %172 = getelementptr inbounds %struct.generic_pm_domain, ptr %169, i32 0, i32 16
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %200, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.generic_pm_domain, ptr %169, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %176
  br i1 %178, label %187, label %179

179:                                              ; preds = %179, %175
  %180 = phi ptr [ %185, %179 ], [ %177, %175 ]
  %181 = phi i32 [ %184, %179 ], [ 0, %175 ]
  %182 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %180, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = tail call i32 @llvm.umax.i32(i32 %183, i32 %181) #15
  %185 = load ptr, ptr %180, align 4
  %186 = icmp eq ptr %185, %176
  br i1 %186, label %187, label %179

187:                                              ; preds = %179, %175
  %188 = phi i32 [ 0, %175 ], [ %184, %179 ]
  %189 = getelementptr inbounds %struct.generic_pm_domain, ptr %169, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %189
  br i1 %191, label %200, label %192

192:                                              ; preds = %192, %187
  %193 = phi ptr [ %198, %192 ], [ %190, %187 ]
  %194 = phi i32 [ %197, %192 ], [ %188, %187 ]
  %195 = getelementptr i8, ptr %193, i32 20
  %196 = load i32, ptr %195, align 4
  %197 = tail call i32 @llvm.umax.i32(i32 %196, i32 %194) #15
  %198 = load ptr, ptr %193, align 4
  %199 = icmp eq ptr %198, %189
  br i1 %199, label %200, label %192

200:                                              ; preds = %192, %187, %171
  %201 = phi i32 [ 0, %171 ], [ %188, %187 ], [ %197, %192 ]
  %202 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %169, i32 noundef %201, i32 noundef 0) #15
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  store i32 %163, ptr %162, align 4
  br label %205

205:                                              ; preds = %204, %200, %155
  %206 = phi i32 [ 0, %204 ], [ 0, %155 ], [ %163, %200 ]
  %207 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 7
  store i32 %206, ptr %207, align 4
  tail call fastcc void @genpd_power_off(ptr noundef %17, i1 noundef zeroext true, i32 noundef 0)
  %208 = load ptr, ptr %156, align 8
  %209 = getelementptr inbounds %struct.genpd_lock_ops, ptr %208, i32 0, i32 3
  %210 = load ptr, ptr %209, align 4
  tail call void %210(ptr noundef %17) #15
  br label %211

211:                                              ; preds = %205, %152, %150, %147, %126, %122, %118, %114, %75, %28, %1
  %212 = phi i32 [ 0, %205 ], [ -22, %1 ], [ -16, %28 ], [ %77, %75 ], [ %84, %114 ], [ %84, %118 ], [ %84, %122 ], [ %84, %126 ], [ 0, %150 ], [ 0, %152 ], [ 0, %147 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pm_subsys_data, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  %15 = getelementptr i8, ptr %11, i32 -472
  %16 = select i1 %14, ptr inttoptr (i32 -22 to ptr), ptr %15
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %239, label %18

18:                                               ; preds = %1
  %19 = and i16 %7, 1024
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 32
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = and i32 %23, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %101

29:                                               ; preds = %26
  %30 = load i1, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  br i1 %30, label %101, label %31

31:                                               ; preds = %29
  store i1 true, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  %32 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %33) #16
  br label %101

34:                                               ; preds = %21, %18
  %35 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 39
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %16) #15
  %38 = tail call fastcc i32 @genpd_power_on(ptr noundef %16, i32 noundef 0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %10, align 8
  %46 = icmp eq ptr %45, null
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %48 = or i1 %46, %47
  %49 = getelementptr i8, ptr %45, i32 -472
  %50 = select i1 %48, ptr inttoptr (i32 -22 to ptr), ptr %49
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds %struct.pm_subsys_data, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %42
  br i1 %56, label %91, label %57

57:                                               ; preds = %44
  store i32 %42, ptr %54, align 4
  %58 = getelementptr inbounds %struct.generic_pm_domain, ptr %50, i32 0, i32 16
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, %42
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.generic_pm_domain, ptr %50, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %73, label %65

65:                                               ; preds = %65, %61
  %66 = phi ptr [ %71, %65 ], [ %63, %61 ]
  %67 = phi i32 [ %70, %65 ], [ %42, %61 ]
  %68 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %66, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 %67) #15
  %71 = load ptr, ptr %66, align 4
  %72 = icmp eq ptr %71, %62
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %61
  %74 = phi i32 [ %42, %61 ], [ %70, %65 ]
  %75 = getelementptr inbounds %struct.generic_pm_domain, ptr %50, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %86, label %78

78:                                               ; preds = %78, %73
  %79 = phi ptr [ %84, %78 ], [ %76, %73 ]
  %80 = phi i32 [ %83, %78 ], [ %74, %73 ]
  %81 = getelementptr i8, ptr %79, i32 20
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %80) #15
  %84 = load ptr, ptr %79, align 4
  %85 = icmp eq ptr %84, %75
  br i1 %85, label %86, label %78

86:                                               ; preds = %78, %73, %57
  %87 = phi i32 [ %42, %57 ], [ %74, %73 ], [ %83, %78 ]
  %88 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %50, i32 noundef %87, i32 noundef 0) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 %55, ptr %54, align 4
  br label %91

91:                                               ; preds = %90, %86, %44, %40
  %92 = load ptr, ptr %35, align 8
  %93 = getelementptr inbounds %struct.genpd_lock_ops, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %16) #15
  br i1 %9, label %99, label %101

95:                                               ; preds = %34
  %96 = load ptr, ptr %35, align 8
  %97 = getelementptr inbounds %struct.genpd_lock_ops, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %16) #15
  br label %239

99:                                               ; preds = %91
  %100 = tail call i64 @ktime_get() #15
  br label %101

101:                                              ; preds = %99, %91, %31, %29, %26
  %102 = phi i1 [ false, %99 ], [ false, %91 ], [ true, %29 ], [ true, %31 ], [ true, %26 ]
  %103 = phi i64 [ %100, %99 ], [ 0, %91 ], [ 0, %29 ], [ 0, %31 ], [ 0, %26 ]
  %104 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 24
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = tail call i32 %105(ptr noundef %0) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %173

110:                                              ; preds = %107, %101
  %111 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.device_type, ptr %112, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.class, ptr %120, i32 0, i32 13
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.bus_type, ptr %128, i32 0, i32 18
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %130, %122, %114
  %135 = phi ptr [ %116, %114 ], [ %124, %122 ], [ %132, %130 ]
  %136 = getelementptr inbounds %struct.dev_pm_ops, ptr %135, i32 0, i32 21
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %134, %130, %126
  %140 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %141 = load ptr, ptr %140, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.device_driver, ptr %141, i32 0, i32 16
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.dev_pm_ops, ptr %145, i32 0, i32 21
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147, %134
  %152 = phi ptr [ %149, %147 ], [ %137, %134 ]
  %153 = tail call i32 %152(ptr noundef %0) #15
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %151, %147, %143, %139
  %156 = xor i1 %9, true
  %157 = select i1 %102, i1 true, i1 %156
  br i1 %157, label %239, label %158

158:                                              ; preds = %155
  %159 = tail call i64 @ktime_get() #15
  %160 = sub i64 %159, %103
  %161 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 1, i32 1
  %162 = load i64, ptr %161, align 8
  %163 = icmp sgt i64 %160, %162
  br i1 %163, label %164, label %239

164:                                              ; preds = %158
  store i64 %160, ptr %161, align 8
  %165 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 27
  store i8 1, ptr %165, align 8
  %166 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 1, i32 3
  store i8 1, ptr %166, align 8
  br label %239

167:                                              ; preds = %151
  %168 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 24, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = tail call i32 %169(ptr noundef %0) #15
  br label %173

173:                                              ; preds = %171, %167, %107
  %174 = phi i32 [ %108, %107 ], [ %153, %167 ], [ %153, %171 ]
  %175 = load i16, ptr %6, align 8
  %176 = and i16 %175, 1024
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 32
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %239, label %183

183:                                              ; preds = %178, %173
  %184 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 39
  %185 = load ptr, ptr %184, align 8
  %186 = load ptr, ptr %185, align 4
  tail call void %186(ptr noundef %16) #15
  %187 = load ptr, ptr %2, align 8
  %188 = getelementptr inbounds %struct.pm_subsys_data, ptr %187, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %189, i32 0, i32 5
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %10, align 8
  %193 = icmp eq ptr %192, null
  %194 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  %195 = or i1 %193, %194
  %196 = getelementptr i8, ptr %192, i32 -472
  %197 = select i1 %195, ptr inttoptr (i32 -22 to ptr), ptr %196
  %198 = icmp eq i32 %191, 0
  br i1 %198, label %233, label %199

199:                                              ; preds = %183
  store i32 0, ptr %190, align 4
  %200 = getelementptr inbounds %struct.generic_pm_domain, ptr %197, i32 0, i32 16
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %228, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.generic_pm_domain, ptr %197, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, %204
  br i1 %206, label %215, label %207

207:                                              ; preds = %207, %203
  %208 = phi ptr [ %213, %207 ], [ %205, %203 ]
  %209 = phi i32 [ %212, %207 ], [ 0, %203 ]
  %210 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %208, i32 0, i32 5
  %211 = load i32, ptr %210, align 4
  %212 = tail call i32 @llvm.umax.i32(i32 %211, i32 %209) #15
  %213 = load ptr, ptr %208, align 4
  %214 = icmp eq ptr %213, %204
  br i1 %214, label %215, label %207

215:                                              ; preds = %207, %203
  %216 = phi i32 [ 0, %203 ], [ %212, %207 ]
  %217 = getelementptr inbounds %struct.generic_pm_domain, ptr %197, i32 0, i32 3
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, %217
  br i1 %219, label %228, label %220

220:                                              ; preds = %220, %215
  %221 = phi ptr [ %226, %220 ], [ %218, %215 ]
  %222 = phi i32 [ %225, %220 ], [ %216, %215 ]
  %223 = getelementptr i8, ptr %221, i32 20
  %224 = load i32, ptr %223, align 4
  %225 = tail call i32 @llvm.umax.i32(i32 %224, i32 %222) #15
  %226 = load ptr, ptr %221, align 4
  %227 = icmp eq ptr %226, %217
  br i1 %227, label %228, label %220

228:                                              ; preds = %220, %215, %199
  %229 = phi i32 [ 0, %199 ], [ %216, %215 ], [ %225, %220 ]
  %230 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %197, i32 noundef %229, i32 noundef 0) #15
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  store i32 %191, ptr %190, align 4
  br label %233

233:                                              ; preds = %232, %228, %183
  %234 = phi i32 [ 0, %232 ], [ 0, %183 ], [ %191, %228 ]
  %235 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %5, i32 0, i32 7
  store i32 %234, ptr %235, align 4
  tail call fastcc void @genpd_power_off(ptr noundef %16, i1 noundef zeroext true, i32 noundef 0)
  %236 = load ptr, ptr %184, align 8
  %237 = getelementptr inbounds %struct.genpd_lock_ops, ptr %236, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  tail call void %238(ptr noundef %16) #15
  br label %239

239:                                              ; preds = %233, %178, %164, %158, %155, %95, %1
  %240 = phi i32 [ %38, %95 ], [ -22, %1 ], [ 0, %155 ], [ 0, %158 ], [ 0, %164 ], [ %174, %233 ], [ %174, %178 ]
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 39
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %8) #15
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 15
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 14
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr inbounds %struct.genpd_lock_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %8) #15
  %24 = tail call i32 @pm_generic_prepare(ptr noundef %0) #15
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load ptr, ptr %11, align 8
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %8) #15
  %29 = load i32, ptr %14, align 8
  %30 = add i32 %29, -1
  store i32 %30, ptr %14, align 8
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds %struct.genpd_lock_ops, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %8) #15
  br label %34

34:                                               ; preds = %26, %20
  %35 = tail call i32 @llvm.smin.i32(i32 %24, i32 0)
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i32 [ %35, %34 ], [ -22, %1 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_suspend_noirq(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @genpd_finish_suspend(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_resume_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %46, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15, %10
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 39
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %8) #15
  tail call fastcc void @genpd_sync_power_on(ptr noundef %8, i1 noundef zeroext true, i32 noundef 0)
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = load ptr, ptr %21, align 8
  %28 = getelementptr inbounds %struct.genpd_lock_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %8) #15
  %30 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %35(ptr noundef %0) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %37, %33, %20, %15
  %45 = tail call i32 @pm_generic_resume_noirq(ptr noundef %0) #15
  br label %46

46:                                               ; preds = %44, %41, %1
  %47 = phi i32 [ -22, %1 ], [ %42, %41 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_freeze_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @pm_generic_freeze_noirq(ptr noundef %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %15(ptr noundef %0) #15
  br label %27

27:                                               ; preds = %25, %21, %17, %13, %10, %1
  %28 = phi i32 [ -22, %1 ], [ %11, %10 ], [ 0, %21 ], [ %26, %25 ], [ 0, %17 ], [ 0, %13 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_thaw_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %16(ptr noundef %0) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %18, %14, %10
  %26 = tail call i32 @pm_generic_thaw_noirq(ptr noundef %0) #15
  br label %27

27:                                               ; preds = %25, %22, %1
  %28 = phi i32 [ %26, %25 ], [ -22, %1 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_poweroff_noirq(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @genpd_finish_suspend(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_restore_noirq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 39
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %8) #15
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 12
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %10
  tail call fastcc void @genpd_sync_power_on(ptr noundef %8, i1 noundef zeroext true, i32 noundef 0)
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr inbounds %struct.genpd_lock_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %8) #15
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %29(ptr noundef %0) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %31, %27, %20
  %39 = tail call i32 @pm_generic_restore_noirq(ptr noundef %0) #15
  br label %40

40:                                               ; preds = %38, %35, %1
  %41 = phi i32 [ %39, %38 ], [ -22, %1 ], [ %36, %35 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  tail call void @pm_generic_complete(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 39
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %8) #15
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 15
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, -1
  store i32 %16, ptr %14, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load ptr, ptr @pm_wq, align 4
  %20 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 7
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %20) #15
  br label %22

22:                                               ; preds = %18, %10
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds %struct.genpd_lock_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %8) #15
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_dev_pm_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 %10(ptr noundef %0) #15
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_debug_add(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @genpd_debugfs_dir, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @debugfs_create_dir(ptr noundef %6, ptr noundef nonnull %2) #15
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @status_fops) #15
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @sub_domains_fops) #15
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @idle_states_fops) #15
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @active_time_fops) #15
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @total_idle_time_fops) #15
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @devices_fops) #15
  %14 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 23
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %0, ptr noundef nonnull @perf_state_fops) #15
  br label %19

19:                                               ; preds = %17, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_remove(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %2 = tail call fastcc i32 @genpd_remove(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_remove(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %0) #15
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 8, !range !20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.genpd_lock_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %0) #15
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %17) #16
  br label %75

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %19
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.genpd_lock_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef nonnull %0) #15
  %31 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.genpd_remove, ptr noundef %32) #16
  br label %75

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %52, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %41, %38 ], [ %36, %34 ]
  %40 = getelementptr i8, ptr %39, i32 -16
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %39, i32 -12
  %43 = getelementptr i8, ptr %39, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef %40) #15
  %51 = icmp eq ptr %41, %35
  br i1 %51, label %52, label %38

52:                                               ; preds = %38, %34
  %53 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr @genpd_debugfs_dir, align 4
  %56 = tail call ptr @debugfs_lookup(ptr noundef %54, ptr noundef %55) #15
  tail call void @debugfs_remove(ptr noundef %56) #15
  %57 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 2
  %58 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds %struct.genpd_lock_ops, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %0) #15
  %65 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 7
  %66 = tail call zeroext i1 @cancel_work_sync(ptr noundef %65) #15
  %67 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 34
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 35
  %74 = load i32, ptr %73, align 8
  tail call void %68(ptr noundef %72, i32 noundef %74) #15
  br label %75

75:                                               ; preds = %70, %52, %27, %12, %1
  %76 = phi i32 [ -16, %12 ], [ -16, %27 ], [ -22, %1 ], [ 0, %70 ], [ 0, %52 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_add_provider_simple(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %55

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi ptr [ @gpd_list, %6 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @gpd_list
  %11 = getelementptr i8, ptr %9, i32 -584
  %12 = icmp eq ptr %11, %1
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  br i1 %10, label %55, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 23
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @dev_pm_opp_of_add_table(ptr noundef nonnull %1) #15
  switch i32 %21, label %22 [
    i32 0, label %23
    i32 -517, label %55
  ]

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, i32 noundef %21) #16
  br label %55

23:                                               ; preds = %20
  %24 = tail call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %1) #15
  %25 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 21
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2263, i32 noundef 9, ptr noundef null) #15
  br label %28

28:                                               ; preds = %27, %23, %15
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 20) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @of_node_get(ptr noundef nonnull %0) #15
  %34 = getelementptr inbounds %struct.of_genpd_provider, ptr %30, i32 0, i32 1
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.of_genpd_provider, ptr %30, i32 0, i32 3
  store ptr %1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.of_genpd_provider, ptr %30, i32 0, i32 2
  store ptr @genpd_xlate_simple, ptr %36, align 4
  %37 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 4
  store i8 %42, ptr %40, align 4
  br label %49

43:                                               ; preds = %28
  %44 = load ptr, ptr %17, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 21
  %48 = load ptr, ptr %47, align 8
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %48) #15
  tail call void @dev_pm_opp_of_remove_table(ptr noundef nonnull %1) #15
  br label %55

49:                                               ; preds = %39, %32
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  %50 = load ptr, ptr @of_genpd_providers, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %30, ptr %51, align 4
  store ptr %50, ptr %30, align 8
  %52 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr @of_genpd_providers, ptr %52, align 4
  store volatile ptr %30, ptr @of_genpd_providers, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %53 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 8
  store ptr %37, ptr %53, align 4
  %54 = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 9
  store i8 1, ptr %54, align 8
  br label %55

55:                                               ; preds = %49, %46, %43, %22, %20, %14, %2
  %56 = phi i32 [ 0, %49 ], [ -22, %2 ], [ -22, %14 ], [ %21, %20 ], [ %21, %22 ], [ -12, %46 ], [ -12, %43 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @genpd_xlate_simple(ptr nocapture noundef readnone %0, ptr noundef readnone returned %1) #7 {
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_add_provider_onecell(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %103

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.genpd_onecell_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr @genpd_xlate_onecell, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi ptr [ @genpd_xlate_onecell, %10 ], [ %8, %6 ]
  %13 = getelementptr inbounds %struct.genpd_onecell_data, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  br label %18

18:                                               ; preds = %53, %16
  %19 = phi i32 [ %14, %16 ], [ %54, %53 ]
  %20 = phi i32 [ -22, %16 ], [ %55, %53 ]
  %21 = phi i32 [ 0, %16 ], [ %56, %53 ]
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi ptr [ @gpd_list, %26 ], [ %29, %27 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @gpd_list
  %31 = getelementptr i8, ptr %29, i32 -584
  %32 = icmp eq ptr %31, %24
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %27

34:                                               ; preds = %27
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  br i1 %30, label %81, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  store ptr %0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 23
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @dev_pm_opp_of_add_table_indexed(ptr noundef nonnull %24, i32 noundef %21) #15
  switch i32 %41, label %42 [
    i32 0, label %43
    i32 -517, label %81
  ]

42:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %41) #16
  br label %81

43:                                               ; preds = %40
  %44 = tail call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %24) #15
  %45 = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 21
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2326, i32 noundef 9, ptr noundef null) #15
  br label %48

48:                                               ; preds = %47, %43, %35
  %49 = phi i32 [ %20, %35 ], [ 0, %47 ], [ 0, %43 ]
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 8
  store ptr %17, ptr %50, align 4
  %51 = getelementptr inbounds %struct.generic_pm_domain, ptr %24, i32 0, i32 9
  store i8 1, ptr %51, align 8
  %52 = load i32, ptr %13, align 4
  br label %53

53:                                               ; preds = %48, %18
  %54 = phi i32 [ %52, %48 ], [ %19, %18 ]
  %55 = phi i32 [ %49, %48 ], [ %20, %18 ]
  %56 = add nuw i32 %21, 1
  %57 = icmp ult i32 %56, %54
  br i1 %57, label %18, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %7, align 4
  br label %60

60:                                               ; preds = %58, %11
  %61 = phi ptr [ %12, %11 ], [ %59, %58 ]
  %62 = phi i32 [ 0, %11 ], [ %56, %58 ]
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 20) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @of_node_get(ptr noundef nonnull %0) #15
  %68 = getelementptr inbounds %struct.of_genpd_provider, ptr %64, i32 0, i32 1
  store ptr %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.of_genpd_provider, ptr %64, i32 0, i32 3
  store ptr %1, ptr %69, align 8
  %70 = getelementptr inbounds %struct.of_genpd_provider, ptr %64, i32 0, i32 2
  store ptr %61, ptr %70, align 4
  %71 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %75 = load i8, ptr %74, align 4
  %76 = or i8 %75, 4
  store i8 %76, ptr %74, align 4
  br label %77

77:                                               ; preds = %73, %66
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  %78 = load ptr, ptr @of_genpd_providers, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %64, ptr %79, align 4
  store ptr %78, ptr %64, align 8
  %80 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr @of_genpd_providers, ptr %80, align 4
  store volatile ptr %64, ptr @of_genpd_providers, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %103

81:                                               ; preds = %60, %42, %40, %34
  %82 = phi i32 [ %21, %42 ], [ %62, %60 ], [ %21, %34 ], [ %21, %40 ]
  %83 = phi i32 [ %41, %42 ], [ -12, %60 ], [ %41, %40 ], [ %20, %34 ]
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %101, %81
  %86 = phi i32 [ %87, %101 ], [ %82, %81 ]
  %87 = add i32 %86, -1
  %88 = load ptr, ptr %1, align 4
  %89 = getelementptr ptr, ptr %88, i32 %87
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.generic_pm_domain, ptr %90, i32 0, i32 8
  store ptr null, ptr %93, align 4
  %94 = getelementptr inbounds %struct.generic_pm_domain, ptr %90, i32 0, i32 9
  store i8 0, ptr %94, align 8
  %95 = getelementptr inbounds %struct.generic_pm_domain, ptr %90, i32 0, i32 23
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.generic_pm_domain, ptr %90, i32 0, i32 21
  %100 = load ptr, ptr %99, align 8
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %100) #15
  tail call void @dev_pm_opp_of_remove_table(ptr noundef nonnull %90) #15
  br label %101

101:                                              ; preds = %98, %92, %85
  %102 = icmp eq i32 %87, 0
  br i1 %102, label %103, label %85

103:                                              ; preds = %101, %81, %77, %2
  %104 = phi i32 [ -22, %2 ], [ 0, %77 ], [ %83, %81 ], [ %83, %101 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @genpd_xlate_onecell(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.genpd_onecell_data, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %4, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.genpd_xlate_onecell, i32 noundef %4) #16
  br label %20

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr ptr, ptr %15, i32 %4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr inttoptr (i32 -2 to ptr), ptr %17
  br label %20

20:                                               ; preds = %14, %12, %2
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %2 ], [ %19, %14 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table_indexed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_genpd_del_provider(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @of_genpd_providers, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @of_genpd_providers
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_genpd_provider, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_genpd_provider, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr @gpd_list, align 4
  %13 = icmp eq ptr %12, @gpd_list
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %30, %14
  %17 = phi ptr [ %12, %14 ], [ %31, %30 ]
  %18 = getelementptr i8, ptr %17, i32 -584
  %19 = getelementptr i8, ptr %17, i32 52
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %15
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %17, i32 56
  store i8 0, ptr %23, align 8
  %24 = getelementptr i8, ptr %17, i32 112
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %17, i32 104
  %29 = load ptr, ptr %28, align 8
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %29) #15
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %18) #15
  br label %30

30:                                               ; preds = %27, %22, %16
  %31 = load ptr, ptr %17, align 4
  %32 = icmp eq ptr %31, @gpd_list
  br i1 %32, label %33, label %16

33:                                               ; preds = %30
  %34 = load ptr, ptr %11, align 4
  br label %35

35:                                               ; preds = %33, %10
  %36 = phi ptr [ %34, %33 ], [ %0, %10 ]
  %37 = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 3
  %38 = icmp eq ptr %37, null
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %40 = or i1 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 3, i32 5
  %43 = load i8, ptr %42, align 4
  %44 = and i8 %43, -5
  store i8 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %50 = load ptr, ptr %11, align 4
  tail call void @of_node_put(ptr noundef %50) #15
  tail call void @kfree(ptr noundef %4) #15
  br label %51

51:                                               ; preds = %45, %2
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_add_device(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %5

5:                                                ; preds = %21, %4
  %6 = phi ptr [ @of_genpd_providers, %4 ], [ %8, %21 ]
  %7 = phi ptr [ inttoptr (i32 -2 to ptr), %4 ], [ %22, %21 ]
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, @of_genpd_providers
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %19) #15
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi ptr [ %20, %15 ], [ %7, %10 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %5, label %24

24:                                               ; preds = %21, %5
  %25 = phi ptr [ %22, %21 ], [ %7, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %25, %24 ], [ inttoptr (i32 -22 to ptr), %2 ]
  %29 = ptrtoint ptr %28 to i32
  br label %32

30:                                               ; preds = %24
  %31 = tail call fastcc i32 @genpd_add_device(ptr noundef %25, ptr noundef %1, ptr noundef %1)
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_add_subdomain(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %5

5:                                                ; preds = %21, %4
  %6 = phi ptr [ @of_genpd_providers, %4 ], [ %8, %21 ]
  %7 = phi ptr [ inttoptr (i32 -2 to ptr), %4 ], [ %22, %21 ]
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, @of_genpd_providers
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %19) #15
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi ptr [ %20, %15 ], [ %7, %10 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %5, label %24

24:                                               ; preds = %21, %5
  %25 = phi ptr [ %22, %21 ], [ %7, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %25, %24 ], [ inttoptr (i32 -22 to ptr), %2 ]
  %29 = ptrtoint ptr %28 to i32
  br label %60

30:                                               ; preds = %24
  %31 = icmp eq ptr %1, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %33

33:                                               ; preds = %49, %32
  %34 = phi ptr [ @of_genpd_providers, %32 ], [ %36, %49 ]
  %35 = phi ptr [ inttoptr (i32 -2 to ptr), %32 ], [ %50, %49 ]
  %36 = load ptr, ptr %34, align 4
  %37 = icmp eq ptr %36, @of_genpd_providers
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %1, align 4
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call ptr %45(ptr noundef nonnull %1, ptr noundef %47) #15
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %35, %38 ]
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %33, label %52

52:                                               ; preds = %49, %33
  %53 = phi ptr [ %50, %49 ], [ %35, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %30
  %56 = phi ptr [ %53, %52 ], [ inttoptr (i32 -22 to ptr), %30 ]
  %57 = ptrtoint ptr %56 to i32
  br label %60

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @genpd_add_subdomain(ptr noundef %25, ptr noundef %53)
  br label %60

60:                                               ; preds = %58, %55, %27
  %61 = phi i32 [ %29, %27 ], [ %57, %55 ], [ %59, %58 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  %62 = icmp eq i32 %61, -2
  %63 = select i1 %62, i32 -517, i32 %61
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_remove_subdomain(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %5

5:                                                ; preds = %21, %4
  %6 = phi ptr [ @of_genpd_providers, %4 ], [ %8, %21 ]
  %7 = phi ptr [ inttoptr (i32 -2 to ptr), %4 ], [ %22, %21 ]
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, @of_genpd_providers
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.of_genpd_provider, ptr %8, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %19) #15
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi ptr [ %20, %15 ], [ %7, %10 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %5, label %24

24:                                               ; preds = %21, %5
  %25 = phi ptr [ %22, %21 ], [ %7, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %25, %24 ], [ inttoptr (i32 -22 to ptr), %2 ]
  %29 = ptrtoint ptr %28 to i32
  br label %60

30:                                               ; preds = %24
  %31 = icmp eq ptr %1, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %33

33:                                               ; preds = %49, %32
  %34 = phi ptr [ @of_genpd_providers, %32 ], [ %36, %49 ]
  %35 = phi ptr [ inttoptr (i32 -2 to ptr), %32 ], [ %50, %49 ]
  %36 = load ptr, ptr %34, align 4
  %37 = icmp eq ptr %36, @of_genpd_providers
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %1, align 4
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.of_genpd_provider, ptr %36, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call ptr %45(ptr noundef nonnull %1, ptr noundef %47) #15
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi ptr [ %48, %43 ], [ %35, %38 ]
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %33, label %52

52:                                               ; preds = %49, %33
  %53 = phi ptr [ %50, %49 ], [ %35, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %30
  %56 = phi ptr [ %53, %52 ], [ inttoptr (i32 -22 to ptr), %30 ]
  %57 = ptrtoint ptr %56 to i32
  br label %60

58:                                               ; preds = %52
  %59 = tail call i32 @pm_genpd_remove_subdomain(ptr noundef %25, ptr noundef %53)
  br label %60

60:                                               ; preds = %58, %55, %27
  %61 = phi i32 [ %29, %27 ], [ %57, %55 ], [ %59, %58 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_genpd_remove_last(ptr noundef readnone %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ @gpd_list, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @gpd_list
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 52
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -584
  %17 = tail call fastcc i32 @genpd_remove(ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  %19 = inttoptr i32 %17 to ptr
  %20 = select i1 %18, ptr %16, ptr %19
  br label %21

21:                                               ; preds = %15, %7
  %22 = phi ptr [ %20, %15 ], [ inttoptr (i32 -2 to ptr), %7 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ inttoptr (i32 -22 to ptr), %1 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genpd_dev_pm_attach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @__genpd_dev_pm_attach(ptr noundef %0, ptr noundef %0, i32 noundef 0, i1 noundef zeroext true)
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__genpd_dev_pm_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !21
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %5) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %85, label %10

10:                                               ; preds = %4
  call void @mutex_lock(ptr noundef nonnull @gpd_list_lock) #15
  call void @mutex_lock(ptr noundef nonnull @of_genpd_mutex) #15
  br label %11

11:                                               ; preds = %27, %10
  %12 = phi ptr [ @of_genpd_providers, %10 ], [ %14, %27 ]
  %13 = phi ptr [ inttoptr (i32 -2 to ptr), %10 ], [ %28, %27 ]
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, @of_genpd_providers
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.of_genpd_provider, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.of_genpd_provider, ptr %14, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.of_genpd_provider, ptr %14, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call ptr %23(ptr noundef nonnull %5, ptr noundef %25) #15
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi ptr [ %26, %21 ], [ %13, %16 ]
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %11, label %30

30:                                               ; preds = %27, %11
  %31 = phi ptr [ %28, %27 ], [ %13, %11 ]
  call void @mutex_unlock(ptr noundef nonnull @of_genpd_mutex) #15
  %32 = load ptr, ptr %5, align 4
  call void @of_node_put(ptr noundef %32) #15
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  %35 = call i32 @driver_deferred_probe_check_state(ptr noundef %1) #15
  br label %85

36:                                               ; preds = %30
  %37 = call fastcc i32 @genpd_add_device(ptr noundef %31, ptr noundef %0, ptr noundef %1)
  call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = icmp eq i32 %37, -517
  br i1 %40, label %85, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.generic_pm_domain, ptr %31, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %43, i32 noundef %37) #16
  br label %85

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.dev_pm_domain, ptr %46, i32 0, i32 2
  store ptr @genpd_dev_pm_detach, ptr %47, align 4
  %48 = load ptr, ptr %45, align 8
  %49 = getelementptr inbounds %struct.dev_pm_domain, ptr %48, i32 0, i32 4
  store ptr @genpd_dev_pm_sync, ptr %49, align 4
  br i1 %3, label %50, label %58

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.generic_pm_domain, ptr %31, i32 0, i32 39
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %31) #15
  %54 = call fastcc i32 @genpd_power_on(ptr noundef %31, i32 noundef 0)
  %55 = load ptr, ptr %51, align 8
  %56 = getelementptr inbounds %struct.genpd_lock_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  call void %57(ptr noundef %31) #15
  br label %58

58:                                               ; preds = %50, %44
  %59 = phi i32 [ %54, %50 ], [ %37, %44 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call fastcc i32 @genpd_remove_device(ptr noundef %31, ptr noundef %0)
  br label %85

63:                                               ; preds = %58
  %64 = load ptr, ptr %6, align 8
  %65 = call i32 @of_get_required_opp_performance_state(ptr noundef %64, i32 noundef %2) #15
  %66 = freeze i32 %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  switch i32 %66, label %80 [
    i32 -19, label %85
    i32 -95, label %85
  ]

69:                                               ; preds = %63
  %70 = icmp eq i32 %66, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %69
  %72 = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %0, i32 noundef %66)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.pm_subsys_data, ptr %76, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %78, i32 0, i32 6
  store i32 %66, ptr %79, align 8
  br label %85

80:                                               ; preds = %71, %68
  %81 = phi i32 [ %72, %71 ], [ %66, %68 ]
  %82 = getelementptr inbounds %struct.generic_pm_domain, ptr %31, i32 0, i32 10
  %83 = load ptr, ptr %82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %83, i32 noundef %81) #16
  %84 = call fastcc i32 @genpd_remove_device(ptr noundef %31, ptr noundef %0)
  br label %85

85:                                               ; preds = %80, %74, %69, %68, %68, %61, %41, %39, %34, %4
  %86 = phi i32 [ %35, %34 ], [ -517, %61 ], [ %81, %80 ], [ %8, %4 ], [ %37, %41 ], [ -517, %39 ], [ 1, %69 ], [ 1, %74 ], [ 1, %68 ], [ 1, %68 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #15
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @genpd_dev_pm_attach_by_id(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #15
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 472) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %11, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef %20) #15
  %22 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 5
  store ptr @genpd_bus_type, ptr %22, align 4
  %23 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 33
  store ptr @genpd_release_dev, ptr %23, align 4
  %24 = load ptr, ptr %3, align 8
  %25 = tail call ptr @of_node_get(ptr noundef %24) #15
  %26 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  store ptr %25, ptr %26, align 8
  %27 = tail call i32 @device_register(ptr noundef nonnull %11) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  tail call void @put_device(ptr noundef nonnull %11) #15
  %30 = inttoptr i32 %27 to ptr
  br label %47

31:                                               ; preds = %19
  %32 = tail call fastcc i32 @__genpd_dev_pm_attach(ptr noundef nonnull %11, ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  tail call void @device_unregister(ptr noundef nonnull %11) #15
  %35 = inttoptr i32 %32 to ptr
  br label %47

36:                                               ; preds = %31
  tail call void @pm_runtime_enable(ptr noundef nonnull %11) #15
  %37 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  %41 = or i1 %39, %40
  %42 = getelementptr i8, ptr %38, i32 -472
  %43 = select i1 %41, ptr inttoptr (i32 -22 to ptr), ptr %42
  %44 = load ptr, ptr @pm_wq, align 4
  %45 = getelementptr inbounds %struct.generic_pm_domain, ptr %43, i32 0, i32 7
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %45) #15
  br label %47

47:                                               ; preds = %36, %34, %29, %9, %6, %2
  %48 = phi ptr [ %30, %29 ], [ %11, %36 ], [ null, %2 ], [ null, %6 ], [ inttoptr (i32 -12 to ptr), %9 ], [ %35, %34 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_release_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @genpd_dev_pm_attach_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @of_property_match_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.11, ptr noundef %1) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @genpd_dev_pm_attach_by_id(ptr noundef %0, i32 noundef %7)
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_genpd_parse_idle_states(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @genpd_iterate_idle_states(ptr noundef %0, ptr noundef null)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  store ptr null, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %23

9:                                                ; preds = %6
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 64) #15
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %23, label %12, !prof !8

12:                                               ; preds = %9
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @genpd_iterate_idle_states(ptr noundef %0, ptr noundef nonnull %14)
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #15
  %20 = icmp eq i32 %17, 0
  %21 = select i1 %20, i32 -22, i32 %17
  br label %23

22:                                               ; preds = %16
  store ptr %14, ptr %1, align 4
  store i32 %17, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %19, %12, %9, %8, %3
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ], [ 0, %8 ], [ %4, %3 ], [ -12, %12 ], [ -12, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_iterate_idle_states(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_phandle_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !21
  %7 = tail call i32 @of_count_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef null) #15
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, -2
  %11 = select i1 %10, i32 0, i32 %7
  br label %58

12:                                               ; preds = %2
  %13 = call i32 @of_phandle_iterator_init(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0) #15
  %14 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %6) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.of_phandle_iterator, ptr %6, i32 0, i32 8
  %18 = icmp eq ptr %1, null
  br label %19

19:                                               ; preds = %54, %16
  %20 = phi i32 [ 0, %16 ], [ %55, %54 ]
  %21 = load ptr, ptr %17, align 4
  %22 = call ptr @of_match_node(ptr noundef nonnull @idle_state_match, ptr noundef %21) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  br i1 %18, label %52, label %25

25:                                               ; preds = %24
  %26 = getelementptr %struct.genpd_power_state, ptr %1, i32 %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !21
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.26, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #15
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.27, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #15
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.28, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #15
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %3, align 4
  %37 = mul i32 %36, 1000
  %38 = zext i32 %37 to i64
  %39 = getelementptr %struct.genpd_power_state, ptr %1, i32 %20, i32 2
  store i64 %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, ptr %5, align 4
  %42 = mul i32 %41, 1000
  %43 = zext i32 %42 to i64
  %44 = getelementptr %struct.genpd_power_state, ptr %1, i32 %20, i32 1
  store i64 %43, ptr %44, align 8
  %45 = load i32, ptr %4, align 4
  %46 = mul i32 %45, 1000
  %47 = zext i32 %46 to i64
  store i64 %47, ptr %26, align 8
  %48 = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 3
  %49 = getelementptr %struct.genpd_power_state, ptr %1, i32 %20, i32 5
  store ptr %48, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %52

50:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %21, i32 noundef -22) #16
  call void @of_node_put(ptr noundef %21) #15
  br label %58

52:                                               ; preds = %40, %24
  %53 = add i32 %20, 1
  br label %54

54:                                               ; preds = %52, %19
  %55 = phi i32 [ %53, %52 ], [ %20, %19 ]
  %56 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %6) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %19, label %58

58:                                               ; preds = %54, %50, %12, %9
  %59 = phi i32 [ %11, %9 ], [ -22, %50 ], [ 0, %12 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #15
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_genpd_opp_to_performance_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 39
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #15
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #15
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %struct.genpd_lock_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ %11, %6 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genpd_bus_init() #5 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @genpd_bus_type) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genpd_debug_init() #5 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.44, ptr noundef null) #15
  store ptr %1, ptr @genpd_debugfs_dir, align 4
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @summary_fops) #15
  %3 = load ptr, ptr @gpd_list, align 4
  %4 = icmp eq ptr %3, @gpd_list
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %0
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %7 = getelementptr i8, ptr %6, i32 -584
  tail call fastcc void @genpd_debug_add(ptr noundef %7)
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, @gpd_list
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @genpd_debug_exit() #5 section ".exit.text" {
  %1 = load ptr, ptr @genpd_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_genpd_set_performance_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %152, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %82, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 21
  %13 = add i32 %2, 1
  br label %14

14:                                               ; preds = %76, %11
  %15 = phi ptr [ %9, %11 ], [ %80, %76 ]
  %16 = getelementptr i8, ptr %15, i32 -16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 23
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %12, align 8
  %23 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 21
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @dev_pm_opp_xlate_performance_state(ptr noundef %22, ptr noundef %24, i32 noundef %1) #15
  br label %26

26:                                               ; preds = %21, %14
  %27 = phi i32 [ %25, %21 ], [ %1, %14 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %90, label %29, !prof !8

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 39
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.genpd_lock_ops, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %17, i32 noundef %13) #15
  %34 = getelementptr i8, ptr %15, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %15, i32 12
  store i32 %35, ptr %36, align 4
  store i32 %27, ptr %34, align 4
  %37 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 16
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %27
  br i1 %39, label %40, label %65

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %52, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %50, %44 ], [ %42, %40 ]
  %46 = phi i32 [ %49, %44 ], [ %27, %40 ]
  %47 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %45, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %48, i32 %46) #15
  %50 = load ptr, ptr %45, align 4
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %52, label %44

52:                                               ; preds = %44, %40
  %53 = phi i32 [ %27, %40 ], [ %49, %44 ]
  %54 = getelementptr inbounds %struct.generic_pm_domain, ptr %17, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %65, label %57

57:                                               ; preds = %57, %52
  %58 = phi ptr [ %63, %57 ], [ %55, %52 ]
  %59 = phi i32 [ %62, %57 ], [ %53, %52 ]
  %60 = getelementptr i8, ptr %58, i32 20
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 %59) #15
  %63 = load ptr, ptr %58, align 4
  %64 = icmp eq ptr %63, %54
  br i1 %64, label %65, label %57

65:                                               ; preds = %57, %52, %29
  %66 = phi i32 [ %27, %29 ], [ %53, %52 ], [ %62, %57 ]
  %67 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %17, i32 noundef %66, i32 noundef %13)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %15, i32 8
  %71 = getelementptr i8, ptr %15, i32 12
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %70, align 4
  %73 = load ptr, ptr %30, align 8
  %74 = getelementptr inbounds %struct.genpd_lock_ops, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %17) #15
  br label %90

76:                                               ; preds = %65
  %77 = load ptr, ptr %30, align 8
  %78 = getelementptr inbounds %struct.genpd_lock_ops, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %17) #15
  %80 = load ptr, ptr %15, align 4
  %81 = icmp eq ptr %80, %8
  br i1 %81, label %82, label %14

82:                                               ; preds = %76, %7
  %83 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 23
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef %0, i32 noundef %1) #15
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %82
  store i32 %1, ptr %4, align 4
  br label %152

90:                                               ; preds = %86, %69, %26
  %91 = phi ptr [ %8, %86 ], [ %15, %69 ], [ %15, %26 ]
  %92 = phi i32 [ %87, %86 ], [ %67, %69 ], [ %27, %26 ]
  %93 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %8
  br i1 %95, label %152, label %96

96:                                               ; preds = %90
  %97 = add i32 %2, 1
  br label %98

98:                                               ; preds = %145, %96
  %99 = phi ptr [ %94, %96 ], [ %150, %145 ]
  %100 = getelementptr i8, ptr %99, i32 -16
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.generic_pm_domain, ptr %101, i32 0, i32 39
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.genpd_lock_ops, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  tail call void %105(ptr noundef %101, i32 noundef %97) #15
  %106 = getelementptr i8, ptr %99, i32 12
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %99, i32 8
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.generic_pm_domain, ptr %101, i32 0, i32 16
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %110, %107
  br i1 %111, label %112, label %137

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.generic_pm_domain, ptr %101, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %124, label %116

116:                                              ; preds = %116, %112
  %117 = phi ptr [ %122, %116 ], [ %114, %112 ]
  %118 = phi i32 [ %121, %116 ], [ %107, %112 ]
  %119 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %117, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @llvm.umax.i32(i32 %120, i32 %118) #15
  %122 = load ptr, ptr %117, align 4
  %123 = icmp eq ptr %122, %113
  br i1 %123, label %124, label %116

124:                                              ; preds = %116, %112
  %125 = phi i32 [ %107, %112 ], [ %121, %116 ]
  %126 = getelementptr inbounds %struct.generic_pm_domain, ptr %101, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %137, label %129

129:                                              ; preds = %129, %124
  %130 = phi ptr [ %135, %129 ], [ %127, %124 ]
  %131 = phi i32 [ %134, %129 ], [ %125, %124 ]
  %132 = getelementptr i8, ptr %130, i32 20
  %133 = load i32, ptr %132, align 4
  %134 = tail call i32 @llvm.umax.i32(i32 %133, i32 %131) #15
  %135 = load ptr, ptr %130, align 4
  %136 = icmp eq ptr %135, %126
  br i1 %136, label %137, label %129

137:                                              ; preds = %129, %124, %98
  %138 = phi i32 [ %107, %98 ], [ %125, %124 ], [ %134, %129 ]
  %139 = tail call fastcc i32 @_genpd_set_performance_state(ptr noundef %101, i32 noundef %138, i32 noundef %97)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.generic_pm_domain, ptr %101, i32 0, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %143, i32 noundef %138) #16
  br label %145

145:                                              ; preds = %141, %137
  %146 = load ptr, ptr %102, align 8
  %147 = getelementptr inbounds %struct.genpd_lock_ops, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  tail call void %148(ptr noundef %101) #15
  %149 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %8
  br i1 %151, label %152, label %98

152:                                              ; preds = %145, %90, %89, %3
  %153 = phi i32 [ 0, %89 ], [ 0, %3 ], [ %92, %90 ], [ %92, %145 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_xlate_performance_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_sync_power_off(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 13
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %82, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 35
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, -1
  %26 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 20
  %28 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef %27, i32 noundef 0, i32 noundef 3, ptr noundef null) #15
  %29 = and i32 %28, -32769
  %30 = icmp sgt i32 %29, 1
  %31 = sub i32 1, %29
  %32 = select i1 %30, i32 %31, i32 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 18
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef %0) #15
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 1, i32 3
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 1, %34 ], [ %41, %38 ]
  %44 = phi i32 [ 0, %34 ], [ %39, %38 ]
  %45 = tail call i32 @raw_notifier_call_chain(ptr noundef %27, i32 noundef %43, ptr noundef null) #15
  br label %46

46:                                               ; preds = %42, %22
  %47 = phi i32 [ %32, %22 ], [ %44, %42 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  store i32 1, ptr %4, align 4
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %82, label %53

53:                                               ; preds = %49
  %54 = add i32 %2, 1
  br label %55

55:                                               ; preds = %79, %53
  %56 = phi ptr [ %51, %53 ], [ %80, %79 ]
  %57 = getelementptr i8, ptr %56, i32 -16
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.generic_pm_domain, ptr %58, i32 0, i32 11
  %60 = load volatile i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !8

62:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #15
  br label %65

63:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #15, !srcloc !14
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %65

65:                                               ; preds = %63, %62
  %66 = load ptr, ptr %57, align 4
  br i1 %1, label %67, label %78

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.generic_pm_domain, ptr %66, i32 0, i32 39
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.genpd_lock_ops, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %66, i32 noundef %54) #15
  %72 = load ptr, ptr %57, align 4
  tail call fastcc void @genpd_sync_power_off(ptr noundef %72, i1 noundef zeroext true, i32 noundef %54)
  %73 = load ptr, ptr %57, align 4
  %74 = getelementptr inbounds %struct.generic_pm_domain, ptr %73, i32 0, i32 39
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.genpd_lock_ops, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %73) #15
  br label %79

78:                                               ; preds = %65
  tail call fastcc void @genpd_sync_power_off(ptr noundef %66, i1 noundef zeroext false, i32 noundef %54)
  br label %79

79:                                               ; preds = %78, %67
  %80 = load ptr, ptr %56, align 4
  %81 = icmp eq ptr %80, %50
  br i1 %81, label %82, label %55

82:                                               ; preds = %79, %49, %46, %18, %12, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_sync_power_on(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = add i32 %2, 1
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi ptr [ %9, %11 ], [ %33, %32 ]
  %15 = getelementptr i8, ptr %14, i32 -16
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %16, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %19 = load ptr, ptr %15, align 4
  br i1 %1, label %20, label %31

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %19, i32 0, i32 39
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.genpd_lock_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %19, i32 noundef %12) #15
  %25 = load ptr, ptr %15, align 4
  tail call fastcc void @genpd_sync_power_on(ptr noundef %25, i1 noundef zeroext true, i32 noundef %12)
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 39
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.genpd_lock_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %26) #15
  br label %32

31:                                               ; preds = %13
  tail call fastcc void @genpd_sync_power_on(ptr noundef %19, i1 noundef zeroext false, i32 noundef %12)
  br label %32

32:                                               ; preds = %31, %20
  %33 = load ptr, ptr %14, align 4
  %34 = icmp eq ptr %33, %8
  br i1 %34, label %35, label %13

35:                                               ; preds = %32, %7
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 20
  %37 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef %36, i32 noundef 2, i32 noundef 1, ptr noundef null) #15
  %38 = and i32 %37, -32769
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 19
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef %0) #15
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 3, i32 1
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ 3, %40 ], [ %47, %44 ]
  %50 = tail call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef %49, ptr noundef null) #15
  br label %51

51:                                               ; preds = %48, %35
  store i32 0, ptr %4, align 4
  br label %52

52:                                               ; preds = %51, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_genpd_power_off(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 20
  %6 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef %5, i32 noundef 0, i32 noundef 3, ptr noundef null) #15
  %7 = and i32 %6, -32769
  %8 = icmp sgt i32 %7, 1
  %9 = sub i32 1, %7
  %10 = select i1 %8, i32 %9, i32 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  br i1 %1, label %20, label %17

17:                                               ; preds = %16
  %18 = tail call i32 %14(ptr noundef %0) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %35

20:                                               ; preds = %16
  %21 = tail call i64 @ktime_get() #15
  %22 = load ptr, ptr %13, align 4
  %23 = tail call i32 %22(ptr noundef %0) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = tail call i64 @ktime_get() #15
  %27 = sub i64 %26, %21
  %28 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr %struct.genpd_power_state, ptr %29, i32 %4
  %31 = load i64, ptr %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  store i64 %27, ptr %30, align 8
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 27
  store i8 1, ptr %34, align 8
  br label %37

35:                                               ; preds = %20, %17
  %36 = phi i32 [ %23, %20 ], [ %18, %17 ]
  br label %37

37:                                               ; preds = %35, %33, %25, %17, %12
  %38 = phi i32 [ 3, %35 ], [ 1, %25 ], [ 1, %17 ], [ 1, %12 ], [ 1, %33 ]
  %39 = phi i32 [ %36, %35 ], [ 0, %25 ], [ 0, %17 ], [ 0, %12 ], [ 0, %33 ]
  %40 = tail call i32 @raw_notifier_call_chain(ptr noundef %5, i32 noundef %38, ptr noundef null) #15
  br label %41

41:                                               ; preds = %37, %2
  %42 = phi i32 [ %10, %2 ], [ %39, %37 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_get_subsys_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_dev_pm_qos_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %42, %3
  %7 = phi ptr [ %5, %3 ], [ %40, %42 ]
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 26
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pm_subsys_data, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %14, i32 0, i32 1, i32 3
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  %23 = getelementptr i8, ptr %19, i32 -472
  %24 = select i1 %22, ptr inttoptr (i32 -22 to ptr), ptr %23
  br label %25

25:                                               ; preds = %16, %12, %6
  %26 = phi ptr [ inttoptr (i32 -61 to ptr), %12 ], [ inttoptr (i32 -61 to ptr), %6 ], [ %24, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %27 = load i16, ptr %8, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %29 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 39
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %26) #15
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %26, i32 0, i32 27
  store i8 1, ptr %34, align 8
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr inbounds %struct.genpd_lock_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %26) #15
  br label %38

38:                                               ; preds = %30, %25
  %39 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 11, i32 15
  %44 = load i16, ptr %43, align 8
  %45 = and i16 %44, 256
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %6, label %47

47:                                               ; preds = %42, %38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_put_subsys_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_update_cpumask(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = add i32 %3, 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %11, %13 ], [ %26, %15 ]
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 39
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.genpd_lock_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %18, i32 noundef %14) #15
  tail call fastcc void @genpd_update_cpumask(ptr noundef %18, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %14)
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr inbounds %struct.genpd_lock_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %18) #15
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %15

28:                                               ; preds = %15, %9
  %29 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 17
  br i1 %2, label %30, label %31

30:                                               ; preds = %28
  tail call void @_set_bit(i32 noundef %1, ptr noundef %29) #15
  br label %32

31:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %29) #15
  br label %32

32:                                               ; preds = %31, %30, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_lock_spin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_lock_nested_spin(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_lock_interruptible_spin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_unlock_spin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_lock_mtx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_lock_nested_mtx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genpd_lock_interruptible_mtx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_unlock_mtx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 40
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_power_off(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %128

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %128

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 32
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 36
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 11
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %128, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %63, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  br label %26

26:                                               ; preds = %59, %24
  %27 = phi ptr [ %22, %24 ], [ %61, %59 ]
  %28 = phi i32 [ 0, %24 ], [ %60, %59 ]
  %29 = getelementptr inbounds %struct.pm_domain_data, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @dev_pm_qos_flags(ptr noundef %30, i32 noundef 1) #15
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %128, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 15
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 7
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = and i16 %40, 1024
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %12, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = and i32 %47, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i1, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  store i1 true, ptr @irq_safe_dev_in_no_sleep_domain.__print_once, align 1
  %56 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.16, ptr noundef %56) #16
  br label %57

57:                                               ; preds = %55, %53, %50, %38, %33
  %58 = add i32 %28, 1
  br label %59

59:                                               ; preds = %57, %46, %43
  %60 = phi i32 [ %58, %57 ], [ %28, %43 ], [ %28, %46 ]
  %61 = load ptr, ptr %27, align 4
  %62 = icmp eq ptr %61, %21
  br i1 %62, label %63, label %26

63:                                               ; preds = %59, %20
  %64 = phi i32 [ 0, %20 ], [ %60, %59 ]
  %65 = icmp ult i32 %64, 2
  %66 = icmp ne i32 %64, 1
  %67 = or i1 %66, %1
  %68 = and i1 %65, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 1
  %78 = tail call zeroext i1 %74(ptr noundef %77) #15
  br i1 %78, label %79, label %128

79:                                               ; preds = %76
  %80 = load ptr, ptr %70, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %69
  %83 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79, %73
  %85 = load volatile i32, ptr %17, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %128, label %87

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @_genpd_power_off(ptr noundef %0, i1 noundef zeroext true)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.genpd_power_state, ptr %92, i32 %94, i32 4
  %96 = load i64, ptr %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, ptr %95, align 8
  br label %128

98:                                               ; preds = %87
  store i32 1, ptr %4, align 4
  tail call fastcc void @genpd_update_accounting(ptr noundef %0)
  %99 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.genpd_power_state, ptr %100, i32 %102, i32 3
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, ptr %103, align 8
  %106 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %128, label %109

109:                                              ; preds = %98
  %110 = add i32 %2, 1
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi ptr [ %107, %109 ], [ %126, %111 ]
  %113 = getelementptr i8, ptr %112, i32 -16
  %114 = load ptr, ptr %113, align 4
  tail call fastcc void @genpd_sd_counter_dec(ptr noundef %114)
  %115 = load ptr, ptr %113, align 4
  %116 = getelementptr inbounds %struct.generic_pm_domain, ptr %115, i32 0, i32 39
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.genpd_lock_ops, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %115, i32 noundef %110) #15
  %120 = load ptr, ptr %113, align 4
  tail call fastcc void @genpd_power_off(ptr noundef %120, i1 noundef zeroext false, i32 noundef %110)
  %121 = load ptr, ptr %113, align 4
  %122 = getelementptr inbounds %struct.generic_pm_domain, ptr %121, i32 0, i32 39
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.genpd_lock_ops, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  tail call void %125(ptr noundef %121) #15
  %126 = load ptr, ptr %112, align 4
  %127 = icmp eq ptr %126, %106
  br i1 %127, label %128, label %111

128:                                              ; preds = %111, %98, %90, %84, %76, %63, %26, %16, %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @genpd_update_accounting(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #15
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 38
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.genpd_power_state, ptr %12, i32 %10, i32 6
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 37
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %15, %14 ], [ %13, %8 ]
  %18 = sub i64 %2, %4
  %19 = load i64, ptr %17, align 8
  %20 = add i64 %19, %18
  store i64 %20, ptr %17, align 8
  store i64 %2, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_power_on(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %118, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 4
  %8 = add i32 %1, 1
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi ptr [ %7, %6 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -16
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %15, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #15, !srcloc !14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #15, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %15, i32 0, i32 39
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.genpd_lock_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %15, i32 noundef %8) #15
  %22 = tail call fastcc i32 @genpd_power_on(ptr noundef %15, i32 noundef %8)
  %23 = load ptr, ptr %18, align 8
  %24 = getelementptr inbounds %struct.genpd_lock_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %15) #15
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %9, label %27

27:                                               ; preds = %13
  %28 = load volatile i32, ptr %16, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #15
  br label %87

31:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #15, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %87

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 36
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 20
  %37 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef %36, i32 noundef 2, i32 noundef 1, ptr noundef null) #15
  %38 = and i32 %37, -32769
  %39 = icmp sgt i32 %38, 1
  %40 = sub i32 1, %38
  %41 = select i1 %39, i32 %40, i32 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 19
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @ktime_get() #15
  %49 = load ptr, ptr %44, align 8
  %50 = tail call i32 %49(ptr noundef %0) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = tail call i64 @ktime_get() #15
  %54 = sub i64 %53, %48
  %55 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr %struct.genpd_power_state, ptr %56, i32 %35, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = icmp sgt i64 %54, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  store i64 %54, ptr %57, align 8
  %61 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 27
  store i8 1, ptr %61, align 8
  br label %62

62:                                               ; preds = %60, %52, %47, %43
  %63 = phi i32 [ 3, %52 ], [ 3, %43 ], [ 3, %60 ], [ 1, %47 ]
  %64 = phi i32 [ 0, %52 ], [ 0, %43 ], [ 0, %60 ], [ %50, %47 ]
  %65 = tail call i32 @raw_notifier_call_chain(ptr noundef %36, i32 noundef %63, ptr noundef null) #15
  br label %66

66:                                               ; preds = %62, %33
  %67 = phi i32 [ %41, %33 ], [ %64, %62 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  store i32 0, ptr %3, align 4
  %70 = tail call i64 @ktime_get() #15
  %71 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 38
  %72 = load i64, ptr %71, align 8
  %73 = load i32, ptr %3, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, ptr %34, align 4
  %77 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 33
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr %struct.genpd_power_state, ptr %78, i32 %76, i32 6
  br label %82

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 37
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi ptr [ %81, %80 ], [ %79, %75 ]
  %84 = sub i64 %70, %72
  %85 = load i64, ptr %83, align 8
  %86 = add i64 %84, %85
  store i64 %86, ptr %83, align 8
  store i64 %70, ptr %71, align 8
  br label %118

87:                                               ; preds = %66, %31, %30
  %88 = phi ptr [ %7, %66 ], [ %11, %30 ], [ %11, %31 ]
  %89 = phi i32 [ %67, %66 ], [ %22, %30 ], [ %22, %31 ]
  %90 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %7
  br i1 %92, label %118, label %93

93:                                               ; preds = %103, %87
  %94 = phi ptr [ %116, %103 ], [ %91, %87 ]
  %95 = getelementptr i8, ptr %94, i32 -16
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.generic_pm_domain, ptr %96, i32 0, i32 11
  %98 = load volatile i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101, !prof !8

100:                                              ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #15
  br label %103

101:                                              ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #15, !srcloc !14
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  br label %103

103:                                              ; preds = %101, %100
  %104 = load ptr, ptr %95, align 4
  %105 = getelementptr inbounds %struct.generic_pm_domain, ptr %104, i32 0, i32 39
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.genpd_lock_ops, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  tail call void %108(ptr noundef %104, i32 noundef %8) #15
  %109 = load ptr, ptr %95, align 4
  tail call fastcc void @genpd_power_off(ptr noundef %109, i1 noundef zeroext false, i32 noundef %8)
  %110 = load ptr, ptr %95, align 4
  %111 = getelementptr inbounds %struct.generic_pm_domain, ptr %110, i32 0, i32 39
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.genpd_lock_ops, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  tail call void %114(ptr noundef %110) #15
  %115 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %7
  br i1 %117, label %118, label %93

118:                                              ; preds = %103, %87, %82, %2
  %119 = phi i32 [ 0, %82 ], [ 0, %2 ], [ %89, %87 ], [ %89, %103 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @genpd_finish_suspend(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = getelementptr i8, ptr %4, i32 -472
  %9 = select i1 %7, ptr inttoptr (i32 -22 to ptr), ptr %8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %59, label %11

11:                                               ; preds = %2
  br i1 %1, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call i32 @pm_generic_poweroff_noirq(ptr noundef %0) #15
  br label %16

14:                                               ; preds = %11
  %15 = tail call i32 @pm_generic_suspend_noirq(ptr noundef %0) #15
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 32
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 24, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 24
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %31(ptr noundef %0) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  br i1 %1, label %45, label %47

45:                                               ; preds = %44
  %46 = tail call i32 @pm_generic_restore_noirq(ptr noundef %0) #15
  br label %59

47:                                               ; preds = %44
  %48 = tail call i32 @pm_generic_resume_noirq(ptr noundef %0) #15
  br label %59

49:                                               ; preds = %41, %37, %33, %29
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 39
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %9) #15
  %53 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 14
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  tail call fastcc void @genpd_sync_power_off(ptr noundef %9, i1 noundef zeroext true, i32 noundef 0)
  %56 = load ptr, ptr %50, align 8
  %57 = getelementptr inbounds %struct.genpd_lock_ops, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %9) #15
  br label %59

59:                                               ; preds = %49, %47, %45, %24, %16, %2
  %60 = phi i32 [ 0, %49 ], [ -22, %2 ], [ %17, %16 ], [ 0, %24 ], [ %42, %47 ], [ %42, %45 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_poweroff_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_restore_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_freeze_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_thaw_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_generic_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_free_default_power_state(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_deferred_probe_check_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_dev_pm_detach(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = getelementptr i8, ptr %4, i32 -472
  %9 = select i1 %7, ptr inttoptr (i32 -22 to ptr), ptr %8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %113, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pm_subsys_data, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %15, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %0, i32 noundef 0)
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds %struct.pm_subsys_data, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %23, i32 0, i32 6
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %27 = icmp eq i32 %26, -11
  br i1 %27, label %28, label %98

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %30, %28 ], [ 1, %25 ]
  %30 = add i32 %29, -1
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #15
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %28

33:                                               ; preds = %28
  %34 = tail call i32 @__cond_resched() #15
  %35 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %36 = icmp eq i32 %35, -11
  br i1 %36, label %37, label %98

37:                                               ; preds = %37, %33
  %38 = phi i32 [ %39, %37 ], [ 2, %33 ]
  %39 = add i32 %38, -1
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #15
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %37

42:                                               ; preds = %37
  %43 = tail call i32 @__cond_resched() #15
  %44 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %45 = icmp eq i32 %44, -11
  br i1 %45, label %46, label %98

46:                                               ; preds = %46, %42
  %47 = phi i32 [ %48, %46 ], [ 4, %42 ]
  %48 = add i32 %47, -1
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #15
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %46

51:                                               ; preds = %46
  %52 = tail call i32 @__cond_resched() #15
  %53 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %54 = icmp eq i32 %53, -11
  br i1 %54, label %55, label %98

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %57, %55 ], [ 8, %51 ]
  %57 = add i32 %56, -1
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #15
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %55

60:                                               ; preds = %55
  %61 = tail call i32 @__cond_resched() #15
  %62 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %63 = icmp eq i32 %62, -11
  br i1 %63, label %64, label %98

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %66, %64 ], [ 16, %60 ]
  %66 = add i32 %65, -1
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #15
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %64

69:                                               ; preds = %64
  %70 = tail call i32 @__cond_resched() #15
  %71 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %72 = icmp eq i32 %71, -11
  br i1 %72, label %73, label %98

73:                                               ; preds = %73, %69
  %74 = phi i32 [ %75, %73 ], [ 32, %69 ]
  %75 = add i32 %74, -1
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #15
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %78, label %73

78:                                               ; preds = %73
  %79 = tail call i32 @__cond_resched() #15
  %80 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %81 = icmp eq i32 %80, -11
  br i1 %81, label %82, label %98

82:                                               ; preds = %82, %78
  %83 = phi i32 [ %84, %82 ], [ 64, %78 ]
  %84 = add i32 %83, -1
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #15
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %82

87:                                               ; preds = %82
  %88 = tail call i32 @__cond_resched() #15
  %89 = tail call fastcc i32 @genpd_remove_device(ptr noundef %9, ptr noundef %0)
  %90 = icmp eq i32 %89, -11
  br i1 %90, label %91, label %98

91:                                               ; preds = %91, %87
  %92 = phi i32 [ %93, %91 ], [ 128, %87 ]
  %93 = add i32 %92, -1
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #15
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %91

96:                                               ; preds = %91
  %97 = tail call i32 @__cond_resched() #15
  br label %101

98:                                               ; preds = %87, %78, %69, %60, %51, %42, %33, %25
  %99 = phi i32 [ %26, %25 ], [ %35, %33 ], [ %44, %42 ], [ %53, %51 ], [ %62, %60 ], [ %71, %69 ], [ %80, %78 ], [ %89, %87 ]
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %99, %98 ], [ -11, %96 ]
  %103 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 10
  %104 = load ptr, ptr %103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %104, i32 noundef %102) #16
  br label %113

105:                                              ; preds = %98
  %106 = load ptr, ptr @pm_wq, align 4
  %107 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 7
  %108 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %107) #15
  %109 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, @genpd_bus_type
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  tail call void @device_unregister(ptr noundef %0) #15
  br label %113

113:                                              ; preds = %112, %105, %101, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @genpd_dev_pm_sync(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = getelementptr i8, ptr %3, i32 -472
  %8 = select i1 %6, ptr inttoptr (i32 -22 to ptr), ptr %7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @pm_wq, align 4
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %8, i32 0, i32 7
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12) #15
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_required_opp_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @status_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 1
  %15 = load i1, ptr @status_show.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %11
  store i1 true, ptr @status_show.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3123, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %11
  br i1 %14, label %29, label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %12, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 36
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %25) #15
  br label %29

26:                                               ; preds = %20
  %27 = getelementptr [2 x ptr], ptr @genpd_summary_one.status_lookup, i32 0, i32 %21
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %28) #15
  br label %29

29:                                               ; preds = %26, %23, %19
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.genpd_lock_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %4) #15
  br label %33

33:                                               ; preds = %29, %2
  %34 = phi i32 [ 0, %29 ], [ -512, %2 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sub_domains_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sub_domains_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sub_domains_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %21, %15 ], [ %13, %11 ]
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %20) #15
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %11
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.genpd_lock_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %4) #15
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ 0, %23 ], [ -512, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_states_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @idle_states_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_states_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 35
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 12
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 36
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 38
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 33
  br label %20

20:                                               ; preds = %31, %15
  %21 = phi i32 [ 0, %15 ], [ %49, %31 ]
  %22 = load i32, ptr %16, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, ptr %17, align 4
  %26 = icmp eq i32 %25, %21
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call i64 @ktime_get() #15
  %29 = load i64, ptr %18, align 8
  %30 = sub i64 %28, %29
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = phi i64 [ %30, %27 ], [ 0, %24 ], [ 0, %20 ]
  %33 = load ptr, ptr %19, align 8
  %34 = getelementptr %struct.genpd_power_state, ptr %33, i32 %21, i32 6
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %32
  %37 = tail call i64 @llvm.abs.i64(i64 %36, i1 false) #15
  %38 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %37) #20, !srcloc !22
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %37, i64 %38, i32 0) #20, !srcloc !23
  %40 = extractvalue { i64, i32 } %39, 0
  %41 = icmp slt i64 %36, 0
  %42 = lshr i64 %40, 18
  %43 = sub nsw i64 0, %42
  %44 = select i1 %41, i64 %43, i64 %42
  %45 = getelementptr %struct.genpd_power_state, ptr %33, i32 %21, i32 3
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr %struct.genpd_power_state, ptr %33, i32 %21, i32 4
  %48 = load i64, ptr %47, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %21, i64 noundef %44, i64 noundef %46, i64 noundef %48) #15
  %49 = add nuw i32 %21, 1
  %50 = load i32, ptr %12, align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %20, label %52

52:                                               ; preds = %31, %11
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.genpd_lock_ops, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %4) #15
  br label %56

56:                                               ; preds = %52, %2
  %57 = phi i32 [ 0, %52 ], [ -512, %2 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_time_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @active_time_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_time_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = tail call i64 @ktime_get() #15
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 38
  %18 = load i64, ptr %17, align 8
  %19 = sub i64 %16, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i64 [ %19, %15 ], [ 0, %11 ]
  %22 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 37
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  %25 = tail call i64 @llvm.abs.i64(i64 %24, i1 false) #15
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %25) #20, !srcloc !22
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %25, i64 %26, i32 0) #20, !srcloc !23
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = icmp slt i64 %24, 0
  %30 = lshr i64 %28, 18
  %31 = sub nsw i64 0, %30
  %32 = select i1 %29, i64 %31, i64 %30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %32) #15
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds %struct.genpd_lock_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %4) #15
  br label %36

36:                                               ; preds = %20, %2
  %37 = phi i32 [ 0, %20 ], [ -512, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @total_idle_time_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @total_idle_time_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @total_idle_time_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 35
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 12
  %17 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 36
  %18 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 38
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 33
  br label %20

20:                                               ; preds = %35, %15
  %21 = phi i32 [ %13, %15 ], [ %36, %35 ]
  %22 = phi i32 [ 0, %15 ], [ %42, %35 ]
  %23 = phi i64 [ 0, %15 ], [ %41, %35 ]
  %24 = phi i64 [ 0, %15 ], [ %37, %35 ]
  %25 = load i32, ptr %16, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, ptr %17, align 4
  %29 = icmp eq i32 %28, %22
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = tail call i64 @ktime_get() #15
  %32 = load i64, ptr %18, align 8
  %33 = sub i64 %31, %32
  %34 = load i32, ptr %12, align 8
  br label %35

35:                                               ; preds = %30, %27, %20
  %36 = phi i32 [ %34, %30 ], [ %21, %27 ], [ %21, %20 ]
  %37 = phi i64 [ %33, %30 ], [ %24, %27 ], [ %24, %20 ]
  %38 = load ptr, ptr %19, align 8
  %39 = getelementptr %struct.genpd_power_state, ptr %38, i32 %22, i32 6
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %23
  %42 = add nuw i32 %22, 1
  %43 = icmp ult i32 %42, %36
  br i1 %43, label %20, label %44

44:                                               ; preds = %35
  %45 = add i64 %41, %37
  br label %46

46:                                               ; preds = %44, %11
  %47 = phi i64 [ %45, %44 ], [ 0, %11 ]
  %48 = tail call i64 @llvm.abs.i64(i64 %47, i1 false) #15
  %49 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %48) #20, !srcloc !22
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %48, i64 %49, i32 0) #20, !srcloc !23
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = icmp slt i64 %47, 0
  %53 = lshr i64 %51, 18
  %54 = sub nsw i64 0, %53
  %55 = select i1 %52, i64 %54, i64 %53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %55) #15
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.genpd_lock_ops, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %4) #15
  br label %59

59:                                               ; preds = %46, %2
  %60 = phi i32 [ 0, %46 ], [ -512, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devices_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @devices_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devices_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 32
  br label %17

17:                                               ; preds = %28, %15
  %18 = phi ptr [ %13, %15 ], [ %29, %28 ]
  %19 = getelementptr inbounds %struct.pm_domain_data, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %16, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 3264, i32 2592
  %25 = tail call ptr @kobject_get_path(ptr noundef %20, i32 noundef %24) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %25) #15
  tail call void @kfree(ptr noundef nonnull %25) #15
  br label %28

28:                                               ; preds = %27, %17
  %29 = load ptr, ptr %18, align 4
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %31, label %17

31:                                               ; preds = %28, %11
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.genpd_lock_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %4) #15
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi i32 [ 0, %31 ], [ -512, %2 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_state_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @perf_state_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @perf_state_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.genpd_lock_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.generic_pm_domain, ptr %4, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %13) #15
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.genpd_lock_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %4) #15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ 0, %11 ], [ -512, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @summary_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [16 x i8], align 1
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #15
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #15
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.48) #15
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @gpd_list_lock) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %113

6:                                                ; preds = %2
  %7 = load ptr, ptr @gpd_list, align 4
  %8 = icmp eq ptr %7, @gpd_list
  br i1 %8, label %111, label %9

9:                                                ; preds = %105, %6
  %10 = phi ptr [ %109, %105 ], [ %7, %6 ]
  %11 = getelementptr i8, ptr %10, i32 -584
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #15, !annotation !21
  %12 = getelementptr i8, ptr %10, i32 192
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.genpd_lock_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %11) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %111

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %10, i32 68
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3043, i32 noundef 9, ptr noundef null) #15
  br label %105

24:                                               ; preds = %19
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = getelementptr [2 x ptr], ptr @genpd_summary_one.status_lookup, i32 0, i32 %21
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %10, i32 172
  %30 = load i32, ptr %29, align 4
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.49, ptr noundef %28, i32 noundef %30) #15
  br label %33

32:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) @.str.36, i32 3, i1 false) #15
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr i8, ptr %10, i32 60
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %10, i32 84
  %37 = load i32, ptr %36, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %35, ptr noundef nonnull %3, i32 noundef %37) #15
  %38 = getelementptr i8, ptr %10, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %57, label %41

41:                                               ; preds = %54, %33
  %42 = phi ptr [ %55, %54 ], [ %39, %33 ]
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %38
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #15
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr i8, ptr %42, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.generic_pm_domain, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %51) #15
  %52 = load ptr, ptr %42, align 4
  %53 = icmp eq ptr %52, %38
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #15
  %55 = load ptr, ptr %42, align 4
  %56 = icmp eq ptr %55, %38
  br i1 %56, label %57, label %41

57:                                               ; preds = %54, %47, %33
  %58 = getelementptr i8, ptr %10, i32 24
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %104, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %10, i32 156
  br label %63

63:                                               ; preds = %101, %61
  %64 = phi ptr [ %59, %61 ], [ %102, %101 ]
  %65 = getelementptr inbounds %struct.pm_domain_data, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %62, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 3264, i32 2592
  %71 = call ptr @kobject_get_path(ptr noundef %66, i32 noundef %70) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73

73:                                               ; preds = %63
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull %71) #15
  %74 = load ptr, ptr %65, align 4
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 11, i32 20
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 11, i32 15
  %80 = load i16, ptr %79, align 8
  %81 = and i16 %80, 7
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 11, i32 18
  %85 = load i32, ptr %84, align 4
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr [4 x ptr], ptr @rtpm_status_str.status_lookup, i32 0, i32 %85
  %89 = load ptr, ptr %88, align 4
  br label %91

90:                                               ; preds = %83
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3013, i32 noundef 9, ptr noundef null) #15
  br label %91

91:                                               ; preds = %90, %87, %78, %73
  %92 = phi ptr [ %89, %87 ], [ @.str.60, %90 ], [ @.str.61, %73 ], [ @.str.62, %78 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %92) #15
  %93 = load ptr, ptr %65, align 4
  %94 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 11, i32 26
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.pm_subsys_data, ptr %95, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %97, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = zext i32 %99 to i64
  call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.60, i64 noundef %100) #15
  call void @kfree(ptr noundef nonnull %71) #15
  br label %101

101:                                              ; preds = %91, %63
  %102 = load ptr, ptr %64, align 4
  %103 = icmp eq ptr %102, %58
  br i1 %103, label %104, label %63

104:                                              ; preds = %101, %57
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.55) #15
  br label %105

105:                                              ; preds = %104, %23
  %106 = load ptr, ptr %12, align 8
  %107 = getelementptr inbounds %struct.genpd_lock_ops, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  call void %108(ptr noundef %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  %109 = load ptr, ptr %10, align 4
  %110 = icmp eq ptr %109, @gpd_list
  br i1 %110, label %111, label %9

111:                                              ; preds = %105, %18, %6
  %112 = phi i32 [ -512, %18 ], [ 0, %6 ], [ 0, %105 ]
  call void @mutex_unlock(ptr noundef nonnull @gpd_list_lock) #15
  br label %113

113:                                              ; preds = %111, %2
  %114 = phi i32 [ %112, %111 ], [ -512, %2 ]
  ret i32 %114
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

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
!9 = !{i64 2149250605}
!10 = !{i64 2149246429}
!11 = !{i64 2149246504, i64 2149246531, i64 2149246578, i64 2149246600, i64 2149246628, i64 2149246648}
!12 = !{i64 368263}
!13 = !{i64 2149274749}
!14 = !{i64 472779, i64 2147962750, i64 2147962776, i64 2147962823, i64 2147962845, i64 2147962873, i64 2147962893}
!15 = !{i64 2147974962, i64 2147974988, i64 2147975017, i64 2147975051, i64 2147975082, i64 2147975105}
!16 = !{i64 2153680230}
!17 = !{i64 2148075617}
!18 = !{i64 2147978003, i64 2147978035, i64 2147978064, i64 2147978098, i64 2147978129, i64 2147978152}
!19 = !{i64 2148075820}
!20 = !{i8 0, i8 2}
!21 = !{!"auto-init"}
!22 = !{i64 260110, i64 260137}
!23 = !{i64 260805, i64 260832, i64 260865, i64 260886, i64 260913, i64 260939}
