; ModuleID = '/llk/IR/drivers/usb/core/hcd.c_pt.bc'
source_filename = "../drivers/usb/core/hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcds_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcds_loaded\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcds_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_bus_idr:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_bus_idr\22\09\09\09\09\09"
module asm "__kstrtabns_usb_bus_idr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_bus_idr_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_bus_idr_lock\22\09\09\09\09\09"
module asm "__kstrtabns_usb_bus_idr_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_poll_rh_status:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_poll_rh_status\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_poll_rh_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_start_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_start_port_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_start_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_end_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_end_port_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_end_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_calc_bus_time:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_calc_bus_time\22\09\09\09\09\09"
module asm "__kstrtabns_usb_calc_bus_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_link_urb_to_ep:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_link_urb_to_ep\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_link_urb_to_ep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_check_unlink_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_check_unlink_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_check_unlink_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_unlink_urb_from_ep:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_unlink_urb_from_ep\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_unlink_urb_from_ep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_unmap_urb_setup_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_unmap_urb_setup_for_dma\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_unmap_urb_setup_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_unmap_urb_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_unmap_urb_for_dma\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_unmap_urb_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_map_urb_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_map_urb_for_dma\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_map_urb_for_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_giveback_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_giveback_urb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_giveback_urb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_alloc_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_alloc_streams\22\09\09\09\09\09"
module asm "__kstrtabns_usb_alloc_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_free_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_free_streams\22\09\09\09\09\09"
module asm "__kstrtabns_usb_free_streams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_resume_root_hub:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_resume_root_hub\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_resume_root_hub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_bus_start_enum:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_bus_start_enum\22\09\09\09\09\09"
module asm "__kstrtabns_usb_bus_start_enum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_irq\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hc_died:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hc_died\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hc_died:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___usb_create_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22__usb_create_hcd\22\09\09\09\09\09"
module asm "__kstrtabns___usb_create_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_create_shared_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_create_shared_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_create_shared_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_create_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_create_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_create_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_is_primary_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_is_primary_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_is_primary_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_add_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_add_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_add_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_remove_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_remove_hcd\22\09\09\09\09\09"
module asm "__kstrtabns_usb_remove_hcd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_platform_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hcd_setup_local_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hcd_setup_local_mem\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hcd_setup_local_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.lock_class_key = type {}
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@usb_hcds_loaded = dso_local global i32 0, align 4
@__kstrtab_usb_hcds_loaded = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcds_loaded = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcds_loaded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcds_loaded to i32), ptr @__kstrtab_usb_hcds_loaded, ptr @__kstrtabns_usb_hcds_loaded }, section "___ksymtab_gpl+usb_hcds_loaded", align 4
@usb_bus_idr = dso_local global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__kstrtab_usb_bus_idr = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_bus_idr = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_bus_idr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_bus_idr to i32), ptr @__kstrtab_usb_bus_idr, ptr @__kstrtabns_usb_bus_idr }, section "___ksymtab_gpl+usb_bus_idr", align 4
@usb_bus_idr_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usb_bus_idr_lock, i64 12), ptr getelementptr (i8, ptr @usb_bus_idr_lock, i64 12) } }, align 4
@__kstrtab_usb_bus_idr_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_bus_idr_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_bus_idr_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_bus_idr_lock to i32), ptr @__kstrtab_usb_bus_idr_lock, ptr @__kstrtabns_usb_bus_idr_lock }, section "___ksymtab_gpl+usb_bus_idr_lock", align 4
@usb_kill_urb_queue = dso_local global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usb_kill_urb_queue, i64 4), ptr getelementptr (i8, ptr @usb_kill_urb_queue, i64 4) } }, align 4
@__param_str_authorized_default = internal constant [27 x i8] c"usbcore.authorized_default\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@authorized_default = internal global i32 -1, align 4
@__param_authorized_default = internal constant %struct.kernel_param { ptr @__param_str_authorized_default, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @authorized_default } }, section "__param", align 4
@__UNIQUE_ID_authorized_defaulttype254 = internal constant [40 x i8] c"usbcore.parmtype=authorized_default:int\00", section ".modinfo", align 1
@__UNIQUE_ID_authorized_default255 = internal constant [208 x i8] c"usbcore.parm=authorized_default:Default USB device authorization: 0 is not authorized, 1 is authorized, 2 is authorized for internal devices, -1 is authorized except for wireless USB (default, old behaviour)\00", section ".modinfo", align 1
@hcd_root_hub_lock = internal global %struct.spinlock zeroinitializer, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_usb_hcd_poll_rh_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_poll_rh_status = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_poll_rh_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_poll_rh_status to i32), ptr @__kstrtab_usb_hcd_poll_rh_status, ptr @__kstrtabns_usb_hcd_poll_rh_status }, section "___ksymtab_gpl+usb_hcd_poll_rh_status", align 4
@__kstrtab_usb_hcd_start_port_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_start_port_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_start_port_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_start_port_resume to i32), ptr @__kstrtab_usb_hcd_start_port_resume, ptr @__kstrtabns_usb_hcd_start_port_resume }, section "___ksymtab_gpl+usb_hcd_start_port_resume", align 4
@__kstrtab_usb_hcd_end_port_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_end_port_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_end_port_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_end_port_resume to i32), ptr @__kstrtab_usb_hcd_end_port_resume, ptr @__kstrtabns_usb_hcd_end_port_resume }, section "___ksymtab_gpl+usb_hcd_end_port_resume", align 4
@__kstrtab_usb_calc_bus_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_calc_bus_time = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_calc_bus_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_calc_bus_time to i32), ptr @__kstrtab_usb_calc_bus_time, ptr @__kstrtabns_usb_calc_bus_time }, section "___ksymtab_gpl+usb_calc_bus_time", align 4
@hcd_urb_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_usb_hcd_link_urb_to_ep = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_link_urb_to_ep = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_link_urb_to_ep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_link_urb_to_ep to i32), ptr @__kstrtab_usb_hcd_link_urb_to_ep, ptr @__kstrtabns_usb_hcd_link_urb_to_ep }, section "___ksymtab_gpl+usb_hcd_link_urb_to_ep", align 4
@__kstrtab_usb_hcd_check_unlink_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_check_unlink_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_check_unlink_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_check_unlink_urb to i32), ptr @__kstrtab_usb_hcd_check_unlink_urb, ptr @__kstrtabns_usb_hcd_check_unlink_urb }, section "___ksymtab_gpl+usb_hcd_check_unlink_urb", align 4
@__kstrtab_usb_hcd_unlink_urb_from_ep = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_unlink_urb_from_ep = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_unlink_urb_from_ep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_unlink_urb_from_ep to i32), ptr @__kstrtab_usb_hcd_unlink_urb_from_ep, ptr @__kstrtabns_usb_hcd_unlink_urb_from_ep }, section "___ksymtab_gpl+usb_hcd_unlink_urb_from_ep", align 4
@__kstrtab_usb_hcd_unmap_urb_setup_for_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_unmap_urb_setup_for_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_unmap_urb_setup_for_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_unmap_urb_setup_for_dma to i32), ptr @__kstrtab_usb_hcd_unmap_urb_setup_for_dma, ptr @__kstrtabns_usb_hcd_unmap_urb_setup_for_dma }, section "___ksymtab_gpl+usb_hcd_unmap_urb_setup_for_dma", align 4
@__kstrtab_usb_hcd_unmap_urb_for_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_unmap_urb_for_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_unmap_urb_for_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_unmap_urb_for_dma to i32), ptr @__kstrtab_usb_hcd_unmap_urb_for_dma, ptr @__kstrtabns_usb_hcd_unmap_urb_for_dma }, section "___ksymtab_gpl+usb_hcd_unmap_urb_for_dma", align 4
@usb_hcd_map_urb_for_dma.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"drivers/usb/core/hcd.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"setup packet is on stack\0A\00", align 1
@usb_hcd_map_urb_for_dma.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"transfer buffer is on stack\0A\00", align 1
@__kstrtab_usb_hcd_map_urb_for_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_map_urb_for_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_map_urb_for_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_map_urb_for_dma to i32), ptr @__kstrtab_usb_hcd_map_urb_for_dma, ptr @__kstrtabns_usb_hcd_map_urb_for_dma }, section "___ksymtab_gpl+usb_hcd_map_urb_for_dma", align 4
@hcd_urb_unlink_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_usb_hcd_giveback_urb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_giveback_urb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_giveback_urb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_giveback_urb to i32), ptr @__kstrtab_usb_hcd_giveback_urb, ptr @__kstrtabns_usb_hcd_giveback_urb }, section "___ksymtab_gpl+usb_hcd_giveback_urb", align 4
@__kstrtab_usb_alloc_streams = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_alloc_streams = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_alloc_streams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_alloc_streams to i32), ptr @__kstrtab_usb_alloc_streams, ptr @__kstrtabns_usb_alloc_streams }, section "___ksymtab_gpl+usb_alloc_streams", align 4
@__kstrtab_usb_free_streams = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_free_streams = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_free_streams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_free_streams to i32), ptr @__kstrtab_usb_free_streams, ptr @__kstrtabns_usb_free_streams }, section "___ksymtab_gpl+usb_free_streams", align 4
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_usb_hcd_resume_root_hub = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_resume_root_hub = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_resume_root_hub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_resume_root_hub to i32), ptr @__kstrtab_usb_hcd_resume_root_hub, ptr @__kstrtabns_usb_hcd_resume_root_hub }, section "___ksymtab_gpl+usb_hcd_resume_root_hub", align 4
@__kstrtab_usb_bus_start_enum = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_bus_start_enum = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_bus_start_enum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_bus_start_enum to i32), ptr @__kstrtab_usb_bus_start_enum, ptr @__kstrtabns_usb_bus_start_enum }, section "___ksymtab_gpl+usb_bus_start_enum", align 4
@__kstrtab_usb_hcd_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_irq to i32), ptr @__kstrtab_usb_hcd_irq, ptr @__kstrtabns_usb_hcd_irq }, section "___ksymtab_gpl+usb_hcd_irq", align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"HC died; cleaning up\0A\00", align 1
@__kstrtab_usb_hc_died = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hc_died = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hc_died = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hc_died to i32), ptr @__kstrtab_usb_hc_died, ptr @__kstrtabns_usb_hc_died }, section "___ksymtab_gpl+usb_hc_died", align 4
@__usb_create_hcd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"hcd->address0_mutex\00", align 1
@__usb_create_hcd.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"hcd->bandwidth_mutex\00", align 1
@usb_port_peer_mutex = external dso_local global %struct.mutex, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"USB Host Controller\00", align 1
@__kstrtab___usb_create_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns___usb_create_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab___usb_create_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__usb_create_hcd to i32), ptr @__kstrtab___usb_create_hcd, ptr @__kstrtabns___usb_create_hcd }, section "___ksymtab_gpl+__usb_create_hcd", align 4
@__kstrtab_usb_create_shared_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_create_shared_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_create_shared_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_create_shared_hcd to i32), ptr @__kstrtab_usb_create_shared_hcd, ptr @__kstrtabns_usb_create_shared_hcd }, section "___ksymtab_gpl+usb_create_shared_hcd", align 4
@__kstrtab_usb_create_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_create_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_create_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_create_hcd to i32), ptr @__kstrtab_usb_create_hcd, ptr @__kstrtabns_usb_create_hcd }, section "___ksymtab_gpl+usb_create_hcd", align 4
@__kstrtab_usb_get_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_hcd to i32), ptr @__kstrtab_usb_get_hcd, ptr @__kstrtabns_usb_get_hcd }, section "___ksymtab_gpl+usb_get_hcd", align 4
@__kstrtab_usb_put_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_hcd to i32), ptr @__kstrtab_usb_put_hcd, ptr @__kstrtabns_usb_put_hcd }, section "___ksymtab_gpl+usb_put_hcd", align 4
@__kstrtab_usb_hcd_is_primary_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_is_primary_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_is_primary_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_is_primary_hcd to i32), ptr @__kstrtab_usb_hcd_is_primary_hcd, ptr @__kstrtabns_usb_hcd_is_primary_hcd }, section "___ksymtab_gpl+usb_hcd_is_primary_hcd", align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"unable to allocate root hub\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"can't setup: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"startup error %d\0A\00", align 1
@__kstrtab_usb_add_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_add_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_add_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_add_hcd to i32), ptr @__kstrtab_usb_add_hcd, ptr @__kstrtabns_usb_add_hcd }, section "___ksymtab_gpl+usb_add_hcd", align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"remove, state %x\0A\00", align 1
@__kstrtab_usb_remove_hcd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_remove_hcd = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_remove_hcd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_remove_hcd to i32), ptr @__kstrtab_usb_remove_hcd, ptr @__kstrtabns_usb_remove_hcd }, section "___ksymtab_gpl+usb_remove_hcd", align 4
@__kstrtab_usb_hcd_platform_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_platform_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_platform_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_platform_shutdown to i32), ptr @__kstrtab_usb_hcd_platform_shutdown, ptr @__kstrtabns_usb_hcd_platform_shutdown }, section "___ksymtab_gpl+usb_hcd_platform_shutdown", align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"gen_pool_add_virt failed with %d\0A\00", align 1
@__kstrtab_usb_hcd_setup_local_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hcd_setup_local_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hcd_setup_local_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hcd_setup_local_mem to i32), ptr @__kstrtab_usb_hcd_setup_local_mem, ptr @__kstrtabns_usb_hcd_setup_local_mem }, section "___ksymtab_gpl+usb_hcd_setup_local_mem", align 4
@hcd_alloc_coherent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@usb31_rh_dev_descriptor = internal unnamed_addr constant [18 x i8] c"\12\01\10\03\09\00\03\09k\1D\03\00\17\05\03\02\01\01", align 1
@usb3_rh_dev_descriptor = internal unnamed_addr constant [18 x i8] c"\12\01\00\03\09\00\03\09k\1D\03\00\17\05\03\02\01\01", align 1
@usb25_rh_dev_descriptor = internal unnamed_addr constant [18 x i8] c"\12\01P\02\09\00\00\FFk\1D\02\00\17\05\03\02\01\01", align 1
@usb2_rh_dev_descriptor = internal unnamed_addr constant [18 x i8] c"\12\01\00\02\09\00\00@k\1D\02\00\17\05\03\02\01\01", align 1
@usb11_rh_dev_descriptor = internal unnamed_addr constant [18 x i8] c"\12\01\10\01\09\00\00@k\1D\01\00\17\05\03\02\01\01", align 1
@ss_rh_config_descriptor = internal unnamed_addr constant [31 x i8] c"\09\02\1F\00\01\01\00\C0\00\09\04\00\00\01\09\00\00\00\07\05\81\03\04\00\0C\060\00\00\02\00", align 1
@hs_rh_config_descriptor = internal unnamed_addr constant [25 x i8] c"\09\02\19\00\01\01\00\C0\00\09\04\00\00\01\09\00\00\00\07\05\81\03\04\00\0C", align 1
@fs_rh_config_descriptor = internal unnamed_addr constant [25 x i8] c"\09\02\19\00\01\01\00\C0\00\09\04\00\00\01\09\00\00\00\07\05\81\03\02\00\FF", align 1
@rh_string.langids = internal unnamed_addr constant [4 x i8] c"\04\03\09\04", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@usb_bus_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"&bus->devnum_next_mutex\00", align 1
@hcd_died_work.env = internal global [2 x ptr] [ptr @.str.19, ptr null], align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"ERROR=DEAD\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"\013%s: failed to get bus number\0A\00", align 1
@usbcore_name = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = private unnamed_addr constant [48 x i8] c"new USB bus registered, assigned bus number %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%s:usb%d\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"request interrupt %d failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"irq %d, %s 0x%08llx\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"io mem\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"io port\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"%s 0x%08llx\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"can't register root hub for %s, %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"USB bus %d deregistered\0A\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_authorized_default255, ptr @__UNIQUE_ID_authorized_defaulttype254, ptr @__ksymtab___usb_create_hcd, ptr @__ksymtab_usb_add_hcd, ptr @__ksymtab_usb_alloc_streams, ptr @__ksymtab_usb_bus_idr, ptr @__ksymtab_usb_bus_idr_lock, ptr @__ksymtab_usb_bus_start_enum, ptr @__ksymtab_usb_calc_bus_time, ptr @__ksymtab_usb_create_hcd, ptr @__ksymtab_usb_create_shared_hcd, ptr @__ksymtab_usb_free_streams, ptr @__ksymtab_usb_get_hcd, ptr @__ksymtab_usb_hc_died, ptr @__ksymtab_usb_hcd_check_unlink_urb, ptr @__ksymtab_usb_hcd_end_port_resume, ptr @__ksymtab_usb_hcd_giveback_urb, ptr @__ksymtab_usb_hcd_irq, ptr @__ksymtab_usb_hcd_is_primary_hcd, ptr @__ksymtab_usb_hcd_link_urb_to_ep, ptr @__ksymtab_usb_hcd_map_urb_for_dma, ptr @__ksymtab_usb_hcd_platform_shutdown, ptr @__ksymtab_usb_hcd_poll_rh_status, ptr @__ksymtab_usb_hcd_resume_root_hub, ptr @__ksymtab_usb_hcd_setup_local_mem, ptr @__ksymtab_usb_hcd_start_port_resume, ptr @__ksymtab_usb_hcd_unlink_urb_from_ep, ptr @__ksymtab_usb_hcd_unmap_urb_for_dma, ptr @__ksymtab_usb_hcd_unmap_urb_setup_for_dma, ptr @__ksymtab_usb_hcds_loaded, ptr @__ksymtab_usb_put_hcd, ptr @__ksymtab_usb_remove_hcd, ptr @__param_authorized_default], section "llvm.metadata"
@switch.table.usb_hcd_submit_urb = private unnamed_addr constant [6 x ptr] [ptr @usb11_rh_dev_descriptor, ptr @usb2_rh_dev_descriptor, ptr @usb25_rh_dev_descriptor, ptr @usb3_rh_dev_descriptor, ptr @usb31_rh_dev_descriptor, ptr @usb31_rh_dev_descriptor], align 4
@switch.table.usb_hcd_submit_urb.30 = private unnamed_addr constant [6 x i32] [i32 25, i32 25, i32 25, i32 31, i32 31, i32 31], align 4
@switch.table.usb_hcd_submit_urb.31 = private unnamed_addr constant [6 x ptr] [ptr @fs_rh_config_descriptor, ptr @hs_rh_config_descriptor, ptr @hs_rh_config_descriptor, ptr @ss_rh_config_descriptor, ptr @ss_rh_config_descriptor, ptr @ss_rh_config_descriptor], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_poll_rh_status(ptr noundef %0) #0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %69, label %7, !prof !9

7:                                                ; preds = %1
  %8 = and i16 %4, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %10, %7
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hc_driver, ptr %16, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %0, ptr noundef nonnull %2) #16
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_root_hub_lock) #16
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  br i1 %25, label %43, label %27

27:                                               ; preds = %21
  call void @_clear_bit(i32 noundef 3, ptr noundef %26) #16
  store ptr null, ptr %23, align 8
  %28 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %19
  %31 = call i32 @llvm.umin.i32(i32 %29, i32 %19)
  %32 = select i1 %30, i32 -75, i32 0
  %33 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 20
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr nonnull align 1 %2, i32 %31, i1 false)
  call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %36 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 5
  %37 = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 5, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %41 = load i16, ptr @hcd_urb_list_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @hcd_urb_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  call void @usb_hcd_giveback_urb(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %32)
  br label %44

43:                                               ; preds = %21
  call void @_set_bit(i32 noundef 3, ptr noundef %26) #16
  br label %44

44:                                               ; preds = %43, %27
  %45 = phi i32 [ %31, %27 ], [ 0, %43 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_root_hub_lock, i32 noundef %22) #16
  br label %46

46:                                               ; preds = %44, %14
  %47 = phi i32 [ %45, %44 ], [ %19, %14 ]
  %48 = load i16, ptr %3, align 8
  %49 = and i16 %48, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %62

56:                                               ; preds = %46
  %57 = icmp eq i32 %47, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %58, %51
  %63 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = urem i32 %64, 25
  %66 = add i32 %64, 25
  %67 = sub i32 %66, %65
  %68 = call i32 @mod_timer(ptr noundef %63, i32 noundef %67) #16
  br label %69

69:                                               ; preds = %62, %58, %56, %51, %10, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_unlink_urb_from_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %8 = load i16, ptr @hcd_urb_list_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_giveback_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %3
  store i32 %2, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call fastcc void @__usb_hcd_giveback_urb(ptr noundef %1)
  br label %52

22:                                               ; preds = %15, %8
  %23 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 1073741824
  %26 = and i32 %24, -1073741824
  %27 = icmp eq i32 %26, 1073741824
  %28 = or i1 %25, %27
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 20
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 21
  %31 = select i1 %28, ptr %29, ptr %30
  %32 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %32) #16
  %33 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5
  %34 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 2
  %35 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %33, ptr %35, align 4
  store ptr %34, ptr %33, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %33, ptr %36, align 4
  %38 = load i8, ptr %31, align 4, !range !15
  %39 = icmp eq i8 %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %40 = load i16, ptr %32, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br i1 %39, label %42, label %52

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 3, i32 1
  %44 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %43) #16
  %45 = icmp eq i32 %44, 0
  br i1 %28, label %46, label %49

46:                                               ; preds = %42
  br i1 %45, label %47, label %52

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 3
  tail call void @__tasklet_hi_schedule(ptr noundef %48) #16
  br label %52

49:                                               ; preds = %42
  br i1 %45, label %50, label %52

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.giveback_urb_bh, ptr %31, i32 0, i32 3
  tail call void @__tasklet_schedule(ptr noundef %51) #16
  br label %52

52:                                               ; preds = %50, %49, %47, %46, %22, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_start_port_resume(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl nuw i32 1, %1
  %4 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, %3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = or i32 %5, %3
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !17
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_end_port_resume(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl nuw i32 1, %1
  %4 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, %3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = xor i32 %3, -1
  %10 = and i32 %5, %9
  store i32 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !16
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #16, !srcloc !19
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  br label %18

18:                                               ; preds = %17, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_calc_bus_time(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  switch i32 %0, label %41 [
    i32 1, label %5
    i32 2, label %19
    i32 3, label %32
  ]

5:                                                ; preds = %4
  %6 = icmp eq i32 %1, 0
  %7 = mul i32 %3, 56
  %8 = sdiv i32 %7, 6
  br i1 %6, label %14, label %9

9:                                                ; preds = %5
  %10 = mul i32 %8, 676670
  %11 = add i32 %10, 2097677
  %12 = sdiv i32 %11, 1000
  %13 = add nsw i32 %12, 65726
  br label %41

14:                                               ; preds = %5
  %15 = mul i32 %8, 667000
  %16 = add i32 %15, 2067700
  %17 = sdiv i32 %16, 1000
  %18 = add nsw i32 %17, 65773
  br label %41

19:                                               ; preds = %4
  %20 = icmp eq i32 %2, 0
  %21 = mul i32 %3, 56
  %22 = sdiv i32 %21, 6
  %23 = mul i32 %22, 83540
  %24 = add i32 %23, 258974
  %25 = sdiv i32 %24, 1000
  br i1 %20, label %30, label %26

26:                                               ; preds = %19
  %27 = icmp eq i32 %1, 0
  %28 = select i1 %27, i32 7265, i32 8268
  %29 = add nsw i32 %25, %28
  br label %41

30:                                               ; preds = %19
  %31 = add nsw i32 %25, 10107
  br label %41

32:                                               ; preds = %4
  %33 = icmp eq i32 %2, 0
  %34 = mul i32 %3, 56
  %35 = sdiv i32 %34, 6
  %36 = mul i32 %35, 2083
  %37 = select i1 %33, i32 922769, i32 639481
  %38 = add i32 %36, %37
  %39 = udiv i32 %38, 1000
  %40 = add nuw nsw i32 %39, 5
  br label %41

41:                                               ; preds = %32, %30, %26, %14, %9, %4
  %42 = phi i32 [ %40, %32 ], [ %29, %26 ], [ %31, %30 ], [ %13, %9 ], [ %18, %14 ], [ -1, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_link_urb_to_ep(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31, !prof !14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_host_endpoint, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12, !prof !9

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 28
  %16 = load i16, ptr %15, align 1
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %31, label %19, !prof !9

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5
  %27 = getelementptr inbounds %struct.usb_host_endpoint, ptr %8, i32 0, i32 4
  %28 = getelementptr inbounds %struct.usb_host_endpoint, ptr %8, i32 0, i32 4, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %26, ptr %28, align 4
  store ptr %27, ptr %26, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %26, ptr %29, align 4
  br label %31

31:                                               ; preds = %24, %19, %12, %6, %2
  %32 = phi i32 [ 0, %24 ], [ -1, %2 ], [ -2, %6 ], [ -113, %12 ], [ -108, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %33 = load i16, ptr @hcd_urb_list_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret i32 %32
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_check_unlink_urb(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_host_endpoint, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %6, %3 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %6
  %12 = icmp eq ptr %10, %7
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %8

14:                                               ; preds = %8
  br i1 %12, label %15, label %20

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %2, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15, %14
  %21 = phi i32 [ 0, %19 ], [ -43, %14 ], [ -16, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_unmap_urb_setup_for_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 8, i32 noundef 1, i32 noundef 0) #16
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %4, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = load i32, ptr %23, align 1
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %20, align 4
  tail call void @hcd_buffer_free(ptr noundef %19, i32 noundef 12, ptr noundef %22, i32 noundef %26) #16
  store ptr %25, ptr %21, align 4
  store i32 0, ptr %20, align 4
  br label %27

27:                                               ; preds = %15, %12, %7
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, -3145729
  store i32 %29, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_unmap_urb_for_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 8, i32 noundef 1, i32 noundef 0) #16
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %4, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = load i32, ptr %23, align 1
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %20, align 4
  tail call void @hcd_buffer_free(ptr noundef %19, i32 noundef 12, ptr noundef %22, i32 noundef %26) #16
  store ptr %25, ptr %21, align 4
  store i32 0, ptr %20, align 4
  br label %27

27:                                               ; preds = %15, %12, %7
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, -3145729
  store i32 %29, ptr %3, align 4
  %30 = and i32 %28, 512
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 2
  %33 = and i32 %28, 262144
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %41 = load i32, ptr %40, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %37, ptr noundef %39, i32 noundef %41, i32 noundef %32, i32 noundef 0) #16
  br label %84

42:                                               ; preds = %27
  %43 = and i32 %28, 131072
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %51 = load i32, ptr %50, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %32, i32 noundef 0) #16
  br label %84

52:                                               ; preds = %42
  %53 = and i32 %28, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %61 = load i32, ptr %60, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %32, i32 noundef 0) #16
  br label %84

62:                                               ; preds = %52
  %63 = and i32 %28, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 12
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %71 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %72 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr i8, ptr %74, i32 %73
  %76 = load i32, ptr %75, align 1
  %77 = inttoptr i32 %76 to ptr
  br i1 %31, label %80, label %78

78:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %74, i32 %73, i1 false) #16
  %79 = load ptr, ptr %71, align 4
  br label %80

80:                                               ; preds = %78, %65
  %81 = phi ptr [ %79, %78 ], [ %74, %65 ]
  %82 = add i32 %73, 4
  %83 = load i32, ptr %70, align 4
  tail call void @hcd_buffer_free(ptr noundef %69, i32 noundef %82, ptr noundef %81, i32 noundef %83) #16
  store ptr %77, ptr %71, align 4
  store i32 0, ptr %70, align 4
  br label %84

84:                                               ; preds = %80, %62, %55, %45, %35
  %85 = load i32, ptr %3, align 4
  %86 = and i32 %85, -983041
  store i32 %86, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_map_urb_for_dma(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %194

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i1, ptr @hcd_alloc_coherent.__already_done, align 1
  br i1 %23, label %194, label %24, !prof !14

24:                                               ; preds = %22
  store i1 true, ptr @hcd_alloc_coherent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1287, i32 noundef 9, ptr noundef null) #16
  br label %194

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %27 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @hcd_buffer_alloc(ptr noundef %30, i32 noundef 12, i32 noundef %2, ptr noundef %26) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %194, label %33

33:                                               ; preds = %25
  %34 = getelementptr i8, ptr %31, i32 8
  %35 = load ptr, ptr %19, align 4
  %36 = ptrtoint ptr %35 to i32
  store i32 %36, ptr %34, align 1
  %37 = load ptr, ptr %19, align 4
  %38 = load i64, ptr %37, align 1
  store i64 %38, ptr %31, align 1
  store ptr %31, ptr %19, align 4
  br label %65

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hc_driver, ptr %41, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 21
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @llvm.thread.pointer() #16
  %50 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, %48
  %53 = getelementptr i8, ptr %51, i32 8192
  %54 = icmp ule ptr %53, %48
  %55 = or i1 %52, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i1, ptr @usb_hcd_map_urb_for_dma.__already_done, align 1
  br i1 %57, label %194, label %58, !prof !14

58:                                               ; preds = %56
  store i1 true, ptr @usb_hcd_map_urb_for_dma.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1433, i32 noundef 9, ptr noundef nonnull @.str.1) #16
  br label %194

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %61, ptr noundef %48, i32 noundef 8, i32 noundef 1)
  %63 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %194, label %65

65:                                               ; preds = %59, %33
  %66 = phi i32 [ 2097152, %33 ], [ 1048576, %59 ]
  %67 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %39, %3
  %71 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 512
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 1, i32 2
  %76 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %77 = load i32, ptr %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = and i32 %72, 4
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %194

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %111, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i1, ptr @hcd_alloc_coherent.__already_done, align 1
  br i1 %91, label %188, label %92, !prof !14

92:                                               ; preds = %90
  store i1 true, ptr @hcd_alloc_coherent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1287, i32 noundef 9, ptr noundef null) #16
  br label %188

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %95 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 12
  %98 = load ptr, ptr %97, align 8
  %99 = add i32 %77, 4
  %100 = tail call ptr @hcd_buffer_alloc(ptr noundef %98, i32 noundef %99, i32 noundef %2, ptr noundef %94) #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %188, label %102

102:                                              ; preds = %93
  %103 = getelementptr i8, ptr %100, i32 %77
  %104 = load ptr, ptr %87, align 4
  %105 = ptrtoint ptr %104 to i32
  store i32 %105, ptr %103, align 1
  br i1 %74, label %106, label %108

106:                                              ; preds = %102
  %107 = load ptr, ptr %87, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %100, ptr align 1 %107, i32 %77, i1 false) #16
  br label %108

108:                                              ; preds = %106, %102
  store ptr %100, ptr %87, align 4
  %109 = load i32, ptr %71, align 4
  %110 = or i32 %109, 524288
  store i32 %110, ptr %71, align 4
  br label %194

111:                                              ; preds = %82
  %112 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.hc_driver, ptr %113, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %194, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %147, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %4, align 4
  %124 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %123, i32 0, i32 3
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, 3
  %127 = icmp eq i8 %126, 1
  br i1 %127, label %146, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %132 = load ptr, ptr %131, align 4
  %133 = tail call i32 @dma_map_sg_attrs(ptr noundef %130, ptr noundef %132, i32 noundef %120, i32 noundef %75, i32 noundef 0) #16
  %134 = icmp slt i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, ptr %71, align 4
  %137 = or i32 %136, 262144
  store i32 %137, ptr %71, align 4
  br label %138

138:                                              ; preds = %135, %128
  %139 = phi i32 [ 0, %135 ], [ -11, %128 ]
  %140 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  store i32 %133, ptr %140, align 4
  %141 = load i32, ptr %119, align 4
  %142 = icmp eq i32 %133, %141
  br i1 %142, label %187, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %71, align 4
  %145 = or i32 %144, 4194304
  store i32 %145, ptr %71, align 4
  br label %187

146:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1467, i32 noundef 9, ptr noundef null) #16
  br label %194

147:                                              ; preds = %118
  %148 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %165, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %149, align 4
  %155 = and i32 %154, -4
  %156 = inttoptr i32 %155 to ptr
  %157 = getelementptr inbounds %struct.scatterlist, ptr %149, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = tail call i32 @dma_map_page_attrs(ptr noundef %153, ptr noundef %156, i32 noundef %158, i32 noundef %77, i32 noundef %75, i32 noundef 0) #16
  %160 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  store i32 %159, ptr %160, align 4
  %161 = icmp eq i32 %159, -1
  br i1 %161, label %188, label %162

162:                                              ; preds = %151
  %163 = load i32, ptr %71, align 4
  %164 = or i32 %163, 131072
  store i32 %164, ptr %71, align 4
  br label %194

165:                                              ; preds = %147
  %166 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = tail call ptr @llvm.thread.pointer() #16
  %169 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = icmp ugt ptr %170, %167
  %172 = getelementptr i8, ptr %170, i32 8192
  %173 = icmp ule ptr %172, %167
  %174 = or i1 %171, %173
  br i1 %174, label %178, label %175

175:                                              ; preds = %165
  %176 = load i1, ptr @usb_hcd_map_urb_for_dma.__already_done.2, align 1
  br i1 %176, label %188, label %177, !prof !14

177:                                              ; preds = %175
  store i1 true, ptr @usb_hcd_map_urb_for_dma.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1498, i32 noundef 9, ptr noundef nonnull @.str.3) #16
  br label %188

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %180, ptr noundef %167, i32 noundef %77, i32 noundef %75)
  %182 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  store i32 %181, ptr %182, align 4
  %183 = icmp eq i32 %181, -1
  br i1 %183, label %188, label %184

184:                                              ; preds = %178
  %185 = load i32, ptr %71, align 4
  %186 = or i32 %185, 65536
  store i32 %186, ptr %71, align 4
  br label %194

187:                                              ; preds = %143, %138
  br i1 %134, label %188, label %194

188:                                              ; preds = %187, %178, %177, %175, %151, %93, %92, %90
  %189 = phi i32 [ %139, %187 ], [ -11, %178 ], [ -11, %175 ], [ -11, %177 ], [ -11, %151 ], [ -12, %93 ], [ -14, %90 ], [ -14, %92 ]
  %190 = load i32, ptr %71, align 4
  %191 = and i32 %190, 3145728
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1)
  br label %194

194:                                              ; preds = %193, %188, %187, %184, %162, %146, %111, %108, %70, %59, %58, %56, %25, %24, %22, %10
  %195 = phi i32 [ -22, %146 ], [ 0, %10 ], [ -11, %58 ], [ -11, %56 ], [ -11, %59 ], [ %189, %193 ], [ %189, %188 ], [ 0, %187 ], [ 0, %70 ], [ -12, %25 ], [ -14, %22 ], [ -14, %24 ], [ 0, %108 ], [ 0, %184 ], [ 0, %111 ], [ 0, %162 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #16
  %6 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %18, !prof !9

9:                                                ; preds = %4
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %10 = tail call ptr @dev_driver_string(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %12, %9 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %10, ptr noundef %17) #16
  br label %18

18:                                               ; preds = %16, %4
  br i1 %5, label %27, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = add i32 %21, 1073741824
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  %25 = and i32 %21, 4095
  %26 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %24, i32 noundef %25, i32 noundef %2, i32 noundef %3, i32 noundef 0) #16
  br label %27

27:                                               ; preds = %19, %18
  %28 = phi i32 [ %26, %19 ], [ -1, %18 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_submit_urb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [100 x i8], align 1
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @usb_get_urb(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !17
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !16
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !17
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %327

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = trunc i8 %22 to i2
  switch i2 %23, label %356 [
    i2 -1, label %24
    i2 0, label %93
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_root_hub_lock) #16
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %91

31:                                               ; preds = %24
  %32 = sdiv i32 %26, 8
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %33
  br i1 %36, label %91, label %37

37:                                               ; preds = %31
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %38 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64, !prof !14

41:                                               ; preds = %37
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr inbounds %struct.usb_host_endpoint, ptr %42, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %64, label %46, !prof !9

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 28
  %49 = load i16, ptr %48, align 1
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %64, label %52, !prof !9

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 1
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5
  %60 = getelementptr inbounds %struct.usb_host_endpoint, ptr %42, i32 0, i32 4
  %61 = getelementptr inbounds %struct.usb_host_endpoint, ptr %42, i32 0, i32 4, i32 1
  %62 = load ptr, ptr %61, align 4
  store ptr %59, ptr %61, align 4
  store ptr %60, ptr %59, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %59, ptr %62, align 4
  br label %64

64:                                               ; preds = %57, %52, %46, %41, %37
  %65 = phi i1 [ false, %37 ], [ false, %41 ], [ false, %46 ], [ false, %52 ], [ true, %57 ]
  %66 = phi i32 [ -1, %37 ], [ -2, %41 ], [ -113, %46 ], [ -108, %52 ], [ 0, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %67 = load i16, ptr @hcd_urb_list_lock, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br i1 %65, label %69, label %91

69:                                               ; preds = %64
  store ptr %0, ptr %28, align 8
  %70 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 2
  store ptr %7, ptr %70, align 4
  %71 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 14
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 32
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 5
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = urem i32 %77, 25
  %79 = add i32 %77, 25
  %80 = sub i32 %79, %78
  %81 = tail call i32 @mod_timer(ptr noundef %76, i32 noundef %80) #16
  br label %91

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 5
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = tail call i32 @mod_timer(ptr noundef %88, i32 noundef %89) #16
  br label %91

91:                                               ; preds = %87, %82, %75, %64, %31, %24
  %92 = phi i32 [ %66, %64 ], [ -22, %31 ], [ -22, %24 ], [ 0, %82 ], [ 0, %87 ], [ 0, %75 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_root_hub_lock, i32 noundef %27) #16
  br label %353

93:                                               ; preds = %18
  %94 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %95 = load ptr, ptr %94, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %96 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  %97 = load volatile i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %122, !prof !14

99:                                               ; preds = %93
  %100 = load ptr, ptr %19, align 4
  %101 = getelementptr inbounds %struct.usb_host_endpoint, ptr %100, i32 0, i32 9
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104, !prof !9

104:                                              ; preds = %99
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr inbounds %struct.usb_device, ptr %105, i32 0, i32 28
  %107 = load i16, ptr %106, align 1
  %108 = and i16 %107, 1
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %122, label %110, !prof !9

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 12
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 1
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5
  %118 = getelementptr inbounds %struct.usb_host_endpoint, ptr %100, i32 0, i32 4
  %119 = getelementptr inbounds %struct.usb_host_endpoint, ptr %100, i32 0, i32 4, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %117, ptr %119, align 4
  store ptr %118, ptr %117, align 4
  %121 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5, i32 1
  store ptr %120, ptr %121, align 4
  store volatile ptr %117, ptr %120, align 4
  br label %122

122:                                              ; preds = %115, %110, %104, %99, %93
  %123 = phi i1 [ false, %93 ], [ false, %99 ], [ false, %104 ], [ false, %110 ], [ true, %115 ]
  %124 = phi i32 [ -1, %93 ], [ -2, %99 ], [ -113, %104 ], [ -108, %110 ], [ 0, %115 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %125 = load i16, ptr @hcd_urb_list_lock, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %127 = load i16, ptr @hcd_root_hub_lock, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br i1 %123, label %129, label %353

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 2
  store ptr %7, ptr %130, align 4
  %131 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 21
  %132 = load ptr, ptr %131, align 4
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i16
  %135 = shl nuw i16 %134, 8
  %136 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %132, i32 0, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i16
  %139 = or i16 %135, %138
  %140 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %132, i32 0, i32 2
  %141 = load i16, ptr %140, align 1
  %142 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %132, i32 0, i32 3
  %143 = load i16, ptr %142, align 1
  %144 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %132, i32 0, i32 4
  %145 = load i16, ptr %144, align 1
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %148 = load i32, ptr %147, align 4
  %149 = icmp ult i32 %148, %146
  br i1 %149, label %313, label %150

150:                                              ; preds = %129
  %151 = tail call i32 @llvm.umax.i32(i32 %146, i32 15) #16
  %152 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %151, i32 noundef 3520) #17
  %153 = icmp eq ptr %152, null
  br i1 %153, label %316, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  store i32 0, ptr %155, align 4
  switch i16 %139, label %278 [
    i16 -32768, label %156
    i16 1, label %171
    i16 3, label %178
    i16 -32760, label %190
    i16 9, label %313
    i16 -32762, label %191
    i16 -32758, label %270
    i16 11, label %313
    i16 5, label %313
    i16 -32256, label %271
    i16 513, label %313
    i16 515, label %313
    i16 -24576, label %273
    i16 -23808, label %274
    i16 -24570, label %277
  ]

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 15, i32 11, i32 1
  %160 = load i16, ptr %159, align 4
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 15, i32 11, i32 6
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  %167 = select i1 %166, i8 1, i8 3
  br label %168

168:                                              ; preds = %163, %156
  %169 = phi i8 [ 1, %156 ], [ %167, %163 ]
  store i8 %169, ptr %152, align 64
  %170 = getelementptr i8, ptr %152, i32 1
  store i8 0, ptr %170, align 1
  br label %295

171:                                              ; preds = %154
  %172 = icmp eq i16 %141, 1
  br i1 %172, label %173, label %313

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 15
  %177 = tail call i32 @device_set_wakeup_enable(ptr noundef %176, i1 noundef zeroext false) #16
  br label %313

178:                                              ; preds = %154
  %179 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.usb_device, ptr %180, i32 0, i32 15, i32 11, i32 1
  %182 = load i16, ptr %181, align 4
  %183 = and i16 %182, 1
  %184 = icmp ne i16 %183, 0
  %185 = icmp eq i16 %141, 1
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %187, label %313

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.usb_device, ptr %180, i32 0, i32 15
  %189 = tail call i32 @device_set_wakeup_enable(ptr noundef %188, i1 noundef zeroext true) #16
  br label %313

190:                                              ; preds = %154
  store i8 1, ptr %152, align 64
  br label %295

191:                                              ; preds = %154
  %192 = and i16 %141, -256
  switch i16 %192, label %313 [
    i16 256, label %193
    i16 512, label %206
    i16 768, label %223
    i16 3840, label %278
  ]

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 3
  %195 = load i32, ptr %194, align 8
  %196 = add i32 %195, -16
  %197 = tail call i32 @llvm.fshl.i32(i32 %196, i32 %196, i32 28) #16
  %198 = icmp ult i32 %197, 6
  br i1 %198, label %199, label %313

199:                                              ; preds = %193
  %200 = getelementptr inbounds [6 x ptr], ptr @switch.table.usb_hcd_submit_urb, i32 0, i32 %197
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 14
  %203 = load i16, ptr %202, align 8
  %204 = and i16 %203, 128
  %205 = icmp ne i16 %204, 0
  br label %295

206:                                              ; preds = %191
  %207 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 3
  %208 = load i32, ptr %207, align 8
  %209 = add i32 %208, -16
  %210 = tail call i32 @llvm.fshl.i32(i32 %209, i32 %209, i32 28) #16
  %211 = icmp ult i32 %210, 6
  br i1 %211, label %212, label %313

212:                                              ; preds = %206
  %213 = getelementptr inbounds [6 x i32], ptr @switch.table.usb_hcd_submit_urb.30, i32 0, i32 %210
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds [6 x ptr], ptr @switch.table.usb_hcd_submit_urb.31, i32 0, i32 %210
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %218 = load ptr, ptr %217, align 8
  %219 = getelementptr inbounds %struct.usb_device, ptr %218, i32 0, i32 15, i32 11, i32 1
  %220 = load i16, ptr %219, align 4
  %221 = and i16 %220, 1
  %222 = icmp ne i16 %221, 0
  br label %295

223:                                              ; preds = %191
  %224 = and i16 %141, 252
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %313

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %3, i8 0, i32 100, i1 false) #16, !annotation !8
  %227 = trunc i16 %141 to i8
  switch i8 %227, label %268 [
    i8 0, label %228
    i8 1, label %230
    i8 2, label %233
    i8 3, label %236
  ]

228:                                              ; preds = %226
  %229 = tail call i32 @llvm.umin.i32(i32 %146, i32 4) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr nonnull align 1 @rh_string.langids, i32 %229, i1 false) #16
  br label %268

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  br label %241

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  br label %241

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 9
  %238 = load ptr, ptr %237, align 4
  %239 = load ptr, ptr %238, align 4
  %240 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 100, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_uts_ns, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef %239) #16
  br label %241

241:                                              ; preds = %236, %233, %230
  %242 = phi ptr [ %3, %236 ], [ %235, %233 ], [ %232, %230 ]
  %243 = call i32 @strlen(ptr noundef %242) #16
  %244 = shl i32 %243, 1
  %245 = add i32 %244, 2
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 254) #16
  %247 = tail call i32 @llvm.umin.i32(i32 %246, i32 %146) #16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %268, label %249

249:                                              ; preds = %241
  %250 = or i32 %246, 768
  br label %251

251:                                              ; preds = %258, %249
  %252 = phi i32 [ %266, %258 ], [ %250, %249 ]
  %253 = phi i32 [ %259, %258 ], [ %247, %249 ]
  %254 = phi ptr [ %263, %258 ], [ %95, %249 ]
  %255 = phi ptr [ %264, %258 ], [ %242, %249 ]
  %256 = trunc i32 %252 to i8
  store i8 %256, ptr %254, align 1
  %257 = icmp eq i32 %253, 1
  br i1 %257, label %268, label %258

258:                                              ; preds = %251
  %259 = add i32 %253, -2
  %260 = getelementptr i8, ptr %254, i32 1
  %261 = lshr i32 %252, 8
  %262 = trunc i32 %261 to i8
  %263 = getelementptr i8, ptr %254, i32 2
  store i8 %262, ptr %260, align 1
  %264 = getelementptr i8, ptr %255, i32 1
  %265 = load i8, ptr %255, align 1
  %266 = zext i8 %265 to i32
  %267 = icmp eq i32 %259, 0
  br i1 %267, label %268, label %251

268:                                              ; preds = %258, %251, %241, %228, %226
  %269 = phi i32 [ %229, %228 ], [ 0, %226 ], [ 0, %241 ], [ %247, %251 ], [ %247, %258 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #16
  store i32 %269, ptr %155, align 4
  br label %313

270:                                              ; preds = %154
  store i8 0, ptr %152, align 64
  br label %295

271:                                              ; preds = %154
  store i8 0, ptr %152, align 64
  %272 = getelementptr i8, ptr %152, i32 1
  store i8 0, ptr %272, align 1
  br label %295

273:                                              ; preds = %154
  br label %278

274:                                              ; preds = %154
  %275 = icmp eq i16 %141, 0
  %276 = select i1 %275, i32 4, i32 8
  br label %278

277:                                              ; preds = %154
  br label %278

278:                                              ; preds = %277, %274, %273, %191, %154
  %279 = phi i32 [ 15, %277 ], [ 4, %273 ], [ 0, %154 ], [ %276, %274 ], [ 0, %191 ]
  %280 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 9
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.hc_driver, ptr %281, i32 0, i32 19
  %283 = load ptr, ptr %282, align 4
  %284 = tail call i32 %283(ptr noundef %7, i16 noundef zeroext %139, i16 noundef zeroext %141, i16 noundef zeroext %143, ptr noundef nonnull %152, i16 noundef zeroext %145) #16
  %285 = icmp eq i16 %139, -24570
  br i1 %285, label %286, label %289

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 11
  %288 = load ptr, ptr %287, align 8
  tail call void @usb_hub_adjust_deviceremovable(ptr noundef %288, ptr noundef nonnull %152) #16
  br label %289

289:                                              ; preds = %286, %278
  %290 = icmp eq i32 %284, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %289
  %292 = icmp slt i32 %284, 0
  br i1 %292, label %313, label %295

293:                                              ; preds = %289
  %294 = icmp eq i32 %279, 0
  br i1 %294, label %313, label %295

295:                                              ; preds = %293, %291, %271, %270, %212, %199, %190, %168
  %296 = phi i32 [ %279, %293 ], [ %284, %291 ], [ %214, %212 ], [ 18, %199 ], [ 2, %168 ], [ 1, %190 ], [ 1, %270 ], [ 2, %271 ]
  %297 = phi ptr [ %152, %293 ], [ %152, %291 ], [ %216, %212 ], [ %201, %199 ], [ %152, %168 ], [ %152, %190 ], [ %152, %270 ], [ %152, %271 ]
  %298 = phi i1 [ false, %293 ], [ false, %291 ], [ false, %212 ], [ %205, %199 ], [ false, %168 ], [ false, %190 ], [ false, %270 ], [ false, %271 ]
  %299 = phi i1 [ false, %293 ], [ false, %291 ], [ %222, %212 ], [ false, %199 ], [ false, %168 ], [ false, %190 ], [ false, %270 ], [ false, %271 ]
  %300 = load i32, ptr %147, align 4
  %301 = tail call i32 @llvm.umin.i32(i32 %300, i32 %296) #16
  store i32 %301, ptr %155, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr nonnull align 1 %297, i32 %301, i1 false) #16
  %302 = icmp ugt i32 %301, 7
  %303 = select i1 %299, i1 %302, i1 false
  br i1 %303, label %304, label %308

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.usb_config_descriptor, ptr %95, i32 0, i32 6
  %306 = load i8, ptr %305, align 1
  %307 = or i8 %306, 32
  store i8 %307, ptr %305, align 1
  br label %308

308:                                              ; preds = %304, %295
  %309 = icmp ugt i32 %301, 6
  %310 = select i1 %298, i1 %309, i1 false
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.usb_device_descriptor, ptr %95, i32 0, i32 5
  store i8 1, ptr %312, align 1
  br label %313

313:                                              ; preds = %311, %308, %293, %291, %268, %223, %206, %193, %191, %187, %178, %173, %171, %154, %154, %154, %154, %154, %129
  %314 = phi i32 [ 0, %308 ], [ 0, %311 ], [ 0, %293 ], [ %284, %291 ], [ -32, %129 ], [ -32, %171 ], [ -32, %178 ], [ -32, %193 ], [ -32, %206 ], [ -32, %223 ], [ -32, %191 ], [ 0, %268 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %187 ], [ 0, %173 ]
  %315 = phi ptr [ %152, %308 ], [ %152, %311 ], [ %152, %293 ], [ %152, %291 ], [ null, %129 ], [ %152, %171 ], [ %152, %178 ], [ %152, %193 ], [ %152, %206 ], [ %152, %223 ], [ %152, %191 ], [ %152, %268 ], [ %152, %154 ], [ %152, %154 ], [ %152, %154 ], [ %152, %154 ], [ %152, %154 ], [ %152, %187 ], [ %152, %173 ]
  tail call void @kfree(ptr noundef %315) #16
  br label %316

316:                                              ; preds = %313, %150
  %317 = phi i32 [ %314, %313 ], [ -12, %150 ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %318 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5
  %319 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = load ptr, ptr %318, align 4
  %322 = getelementptr inbounds %struct.list_head, ptr %321, i32 0, i32 1
  store ptr %320, ptr %322, align 4
  store volatile ptr %321, ptr %320, align 4
  store volatile ptr %318, ptr %318, align 4
  store ptr %318, ptr %319, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %323 = load i16, ptr @hcd_urb_list_lock, align 4
  %324 = add i16 %323, 1
  store i16 %324, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void @usb_hcd_giveback_urb(ptr noundef %7, ptr noundef %0, i32 noundef %317) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %325 = load i16, ptr @hcd_root_hub_lock, align 4
  %326 = add i16 %325, 1
  store i16 %326, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %353

327:                                              ; preds = %2
  %328 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 9
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.hc_driver, ptr %329, i32 0, i32 14
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %327
  %334 = tail call i32 %331(ptr noundef %7, ptr noundef %0, i32 noundef %1) #16
  br label %337

335:                                              ; preds = %327
  %336 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %7, ptr noundef %0, i32 noundef %1) #16
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i32 [ %334, %333 ], [ %336, %335 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %356, !prof !14

340:                                              ; preds = %337
  %341 = load ptr, ptr %328, align 4
  %342 = getelementptr inbounds %struct.hc_driver, ptr %341, i32 0, i32 12
  %343 = load ptr, ptr %342, align 4
  %344 = tail call i32 %343(ptr noundef %7, ptr noundef %0, i32 noundef %1) #16
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %370, label %346, !prof !14

346:                                              ; preds = %340
  %347 = load ptr, ptr %328, align 4
  %348 = getelementptr inbounds %struct.hc_driver, ptr %347, i32 0, i32 15
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %352, label %351

351:                                              ; preds = %346
  tail call void %349(ptr noundef %7, ptr noundef %0) #16
  br label %356

352:                                              ; preds = %346
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %7, ptr noundef %0) #16
  br label %356

353:                                              ; preds = %316, %122, %91
  %354 = phi i32 [ %92, %91 ], [ %124, %122 ], [ %124, %316 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %370, label %356, !prof !14

356:                                              ; preds = %353, %352, %351, %337, %18
  %357 = phi i32 [ %354, %353 ], [ %344, %352 ], [ %344, %351 ], [ -22, %18 ], [ %338, %337 ]
  %358 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 2
  store ptr null, ptr %358, align 4
  %359 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5
  store volatile ptr %359, ptr %359, align 4
  %360 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 5, i32 1
  store ptr %359, ptr %360, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !16
  %361 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  %362 = load ptr, ptr %4, align 4
  %363 = getelementptr inbounds %struct.usb_device, ptr %362, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %363) #16, !srcloc !16
  %364 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %363, ptr %363, i32 1, ptr elementtype(i32) %363) #16, !srcloc !23
  %365 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  %366 = load volatile i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %356
  tail call void @__wake_up(ptr noundef nonnull @usb_kill_urb_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %369

369:                                              ; preds = %368, %356
  tail call void @usb_free_urb(ptr noundef %0) #16
  br label %370

370:                                              ; preds = %369, %353, %340
  %371 = phi i32 [ %357, %369 ], [ 0, %353 ], [ 0, %340 ]
  ret i32 %371
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_unlink_urb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_urb_unlink_lock) #16
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_urb_unlink_lock, i32 noundef %5) #16
  br label %18

10:                                               ; preds = %2
  %11 = tail call ptr @usb_get_dev(ptr noundef %4) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_urb_unlink_lock, i32 noundef %5) #16
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @unlink1(ptr noundef %14, ptr noundef %0, i32 noundef %1)
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 -115, i32 %15
  tail call void @usb_put_dev(ptr noundef %4) #16
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi i32 [ %17, %10 ], [ -43, %9 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unlink1(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %52

9:                                                ; preds = %3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_root_hub_lock) #16
  %11 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_host_endpoint, ptr %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi ptr [ %13, %9 ], [ %17, %15 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %13
  %19 = icmp eq ptr %17, %14
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %15

21:                                               ; preds = %15
  br i1 %19, label %22, label %50

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  store i32 %2, ptr %23, align 4
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %38 = tail call i32 @del_timer(ptr noundef %37) #16
  br label %39

39:                                               ; preds = %36, %31
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  store ptr null, ptr %40, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %44 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 5, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %48 = load i16, ptr @hcd_urb_list_lock, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void @usb_hcd_giveback_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %50

50:                                               ; preds = %43, %39, %26, %22, %21
  %51 = phi i32 [ 0, %26 ], [ 0, %43 ], [ 0, %39 ], [ -16, %22 ], [ -43, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_root_hub_lock, i32 noundef %10) #16
  br label %58

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hc_driver, ptr %54, i32 0, i32 13
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  br label %58

58:                                               ; preds = %52, %50
  %59 = phi i32 [ %51, %50 ], [ %57, %52 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__usb_hcd_giveback_urb(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  %21 = icmp eq i32 %9, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %15, %1
  %25 = phi i32 [ -121, %23 ], [ %9, %15 ], [ %9, %1 ]
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.hc_driver, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void %29(ptr noundef %5, ptr noundef %0) #16
  br label %33

32:                                               ; preds = %24
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %5, ptr noundef %0) #16
  br label %33

33:                                               ; preds = %32, %31
  tail call void @usb_anchor_suspend_wakeups(ptr noundef %7) #16
  tail call void @usb_unanchor_urb(ptr noundef %0) #16
  %34 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  store i32 %25, ptr %34, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 28
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %0) #16
  tail call void @usb_anchor_resume_wakeups(ptr noundef %7) #16
  %37 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #16, !srcloc !16
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #16, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  %39 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 4
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !14

42:                                               ; preds = %33
  tail call void @__wake_up(ptr noundef nonnull @usb_kill_urb_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %43

43:                                               ; preds = %42, %33
  tail call void @usb_free_urb(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_flush_endpoint(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_urb_list_lock) #16
  %7 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %30, label %11

11:                                               ; preds = %28, %4
  %12 = phi ptr [ %29, %28 ], [ %9, %4 ]
  %13 = getelementptr i8, ptr %12, i32 -16
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -20
  %18 = tail call ptr @usb_get_urb(ptr noundef %17) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %19 = load i16, ptr @hcd_urb_list_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %21 = tail call fastcc i32 @unlink1(ptr noundef %6, ptr noundef %17, i32 noundef -108)
  tail call void @usb_free_urb(ptr noundef %17) #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @hcd_urb_list_lock) #16
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, %7
  br i1 %23, label %30, label %28

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %7
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %16
  %29 = phi ptr [ %26, %24 ], [ %22, %16 ]
  br label %11

30:                                               ; preds = %24, %16, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %31 = load i16, ptr @hcd_urb_list_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %33 = load volatile ptr, ptr %7, align 4
  %34 = icmp eq ptr %33, %7
  br i1 %34, label %51, label %35

35:                                               ; preds = %48, %30
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_urb_list_lock) #16
  %36 = load volatile ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 -20
  %41 = tail call ptr @usb_get_urb(ptr noundef %40) #16
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi ptr [ null, %35 ], [ %40, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %44 = load i16, ptr @hcd_urb_list_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @hcd_urb_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %46 = icmp eq ptr %43, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void @usb_kill_urb(ptr noundef nonnull %43) #16
  tail call void @usb_free_urb(ptr noundef nonnull %43) #16
  br label %48

48:                                               ; preds = %47, %42
  %49 = load volatile ptr, ptr %7, align 4
  %50 = icmp eq ptr %49, %7
  br i1 %50, label %51, label %35

51:                                               ; preds = %48, %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hc_driver, ptr %8, i32 0, i32 33
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %178, label %12

12:                                               ; preds = %4
  %13 = icmp ne ptr %1, null
  %14 = icmp ne ptr %2, null
  %15 = or i1 %13, %14
  br i1 %15, label %43, label %16

16:                                               ; preds = %35, %12
  %17 = phi i32 [ %36, %35 ], [ 1, %12 ]
  %18 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.hc_driver, ptr %22, i32 0, i32 32
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %19) #16
  br label %26

26:                                               ; preds = %21, %16
  %27 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.hc_driver, ptr %31, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %28) #16
  br label %35

35:                                               ; preds = %30, %26
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %16

38:                                               ; preds = %35
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.hc_driver, ptr %39, i32 0, i32 33
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %6, ptr noundef %0) #16
  br label %178

43:                                               ; preds = %12
  br i1 %13, label %44, label %107

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  br label %50

48:                                               ; preds = %71
  %49 = icmp eq i8 %46, 0
  br i1 %49, label %107, label %74

50:                                               ; preds = %71, %44
  %51 = phi i32 [ 1, %44 ], [ %72, %71 ]
  %52 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.hc_driver, ptr %56, i32 0, i32 32
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %53) #16
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %173, label %61

61:                                               ; preds = %55, %50
  %62 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %51
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.hc_driver, ptr %66, i32 0, i32 32
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %63) #16
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %173, label %71

71:                                               ; preds = %65, %61
  %72 = add nuw nsw i32 %51, 1
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %48, label %50

74:                                               ; preds = %104, %48
  %75 = phi i32 [ %105, %104 ], [ 0, %48 ]
  %76 = getelementptr %struct.usb_host_config, ptr %1, i32 0, i32 4, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_interface_cache, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  %81 = zext i8 %80 to i32
  %82 = tail call ptr @usb_find_alt_setting(ptr noundef nonnull %1, i32 noundef %81, i32 noundef 0) #16
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, ptr %78, ptr %82
  %85 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %84, i32 0, i32 4
  %86 = load i8, ptr %85, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.usb_host_interface, ptr %84, i32 0, i32 3
  br label %95

90:                                               ; preds = %95
  %91 = add nuw nsw i32 %96, 1
  %92 = load i8, ptr %85, align 4
  %93 = zext i8 %92 to i32
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %90, %88
  %96 = phi i32 [ 0, %88 ], [ %91, %90 ]
  %97 = load ptr, ptr %7, align 4
  %98 = getelementptr inbounds %struct.hc_driver, ptr %97, i32 0, i32 31
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %89, align 4
  %101 = getelementptr %struct.usb_host_endpoint, ptr %100, i32 %96
  %102 = tail call i32 %99(ptr noundef %6, ptr noundef %0, ptr noundef %101) #16
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %173, label %90

104:                                              ; preds = %90, %74
  %105 = add nuw nsw i32 %75, 1
  %106 = icmp eq i32 %105, %47
  br i1 %106, label %107, label %74

107:                                              ; preds = %104, %48, %43
  %108 = icmp ne ptr %3, null
  %109 = and i1 %14, %108
  br i1 %109, label %110, label %167

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 2
  %112 = load i8, ptr %111, align 2
  %113 = zext i8 %112 to i32
  %114 = tail call ptr @usb_ifnum_to_if(ptr noundef %0, i32 noundef %113) #16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %178, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.usb_interface, ptr %114, i32 0, i32 6
  %118 = load i8, ptr %117, align 8
  %119 = and i8 %118, 64
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = tail call ptr @usb_altnum_to_altsetting(ptr noundef nonnull %114, i32 noundef 0) #16
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load ptr, ptr %114, align 8
  br label %126

126:                                              ; preds = %124, %121, %116
  %127 = phi ptr [ %122, %121 ], [ %125, %124 ], [ %2, %116 ]
  %128 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %127, i32 0, i32 4
  %129 = load i8, ptr %128, align 4
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.usb_host_interface, ptr %127, i32 0, i32 3
  br label %144

133:                                              ; preds = %144
  %134 = add nuw nsw i32 %145, 1
  %135 = load i8, ptr %128, align 4
  %136 = zext i8 %135 to i32
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %133, %126
  %139 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %140 = load i8, ptr %139, align 4
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %167, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  br label %158

144:                                              ; preds = %133, %131
  %145 = phi i32 [ 0, %131 ], [ %134, %133 ]
  %146 = load ptr, ptr %7, align 4
  %147 = getelementptr inbounds %struct.hc_driver, ptr %146, i32 0, i32 32
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %132, align 4
  %150 = getelementptr %struct.usb_host_endpoint, ptr %149, i32 %145
  %151 = tail call i32 %148(ptr noundef %6, ptr noundef %0, ptr noundef %150) #16
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %173, label %133

153:                                              ; preds = %158
  %154 = add nuw nsw i32 %159, 1
  %155 = load i8, ptr %139, align 4
  %156 = zext i8 %155 to i32
  %157 = icmp ult i32 %154, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %153, %142
  %159 = phi i32 [ 0, %142 ], [ %154, %153 ]
  %160 = load ptr, ptr %7, align 4
  %161 = getelementptr inbounds %struct.hc_driver, ptr %160, i32 0, i32 31
  %162 = load ptr, ptr %161, align 4
  %163 = load ptr, ptr %143, align 4
  %164 = getelementptr %struct.usb_host_endpoint, ptr %163, i32 %159
  %165 = tail call i32 %162(ptr noundef %6, ptr noundef %0, ptr noundef %164) #16
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %173, label %153

167:                                              ; preds = %153, %138, %107
  %168 = load ptr, ptr %7, align 4
  %169 = getelementptr inbounds %struct.hc_driver, ptr %168, i32 0, i32 33
  %170 = load ptr, ptr %169, align 4
  %171 = tail call i32 %170(ptr noundef %6, ptr noundef %0) #16
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %167, %158, %144, %95, %65, %55
  %174 = phi i32 [ %171, %167 ], [ %165, %158 ], [ %151, %144 ], [ %102, %95 ], [ %59, %55 ], [ %69, %65 ]
  %175 = load ptr, ptr %7, align 4
  %176 = getelementptr inbounds %struct.hc_driver, ptr %175, i32 0, i32 34
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %6, ptr noundef %0) #16
  br label %178

178:                                              ; preds = %173, %167, %110, %38, %4
  %179 = phi i32 [ 0, %38 ], [ 0, %4 ], [ %174, %173 ], [ %171, %167 ], [ -22, %110 ]
  ret i32 %179
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_alt_setting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_disable_endpoint(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hc_driver, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void %8(ptr noundef %4, ptr noundef %1) #16
  br label %11

11:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_reset_endpoint(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hc_driver, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void %8(ptr noundef %4, ptr noundef %1) #16
  br label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = zext i8 %14 to i32
  %16 = xor i8 %13, -1
  %17 = lshr i8 %16, 7
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 10, i32 %18
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw nsw i32 1, %15
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, ptr %23, align 4
  br i1 %22, label %28, label %34

28:                                               ; preds = %11
  %29 = lshr i8 %13, 7
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 10, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %26
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %28, %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_alloc_streams(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr i8, ptr %7, i32 -64
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hc_driver, ptr %12, i32 0, i32 29
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hc_driver, ptr %12, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %7, i32 -100
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %7, i32 -104
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %57, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %45, label %33

30:                                               ; preds = %41
  %31 = add nuw i32 %34, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %45, label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %31, %30 ], [ 0, %28 ]
  %35 = getelementptr ptr, ptr %1, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %36, i32 0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.usb_host_endpoint, ptr %36, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %30, label %57

45:                                               ; preds = %30, %28
  %46 = tail call i32 %14(ptr noundef %10, ptr noundef %8, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %47 = icmp sgt i32 %46, -1
  %48 = icmp ne i32 %2, 0
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %55, %50 ], [ 0, %45 ]
  %52 = getelementptr ptr, ptr %1, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_host_endpoint, ptr %53, i32 0, i32 10
  store i32 %46, ptr %54, align 4
  %55 = add nuw i32 %51, 1
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %45, %41, %33, %24, %20, %16, %5
  %58 = phi i32 [ -22, %16 ], [ -22, %5 ], [ -22, %20 ], [ -19, %24 ], [ %46, %45 ], [ %46, %50 ], [ -22, %33 ], [ -22, %41 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_free_streams(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -128
  %8 = getelementptr i8, ptr %6, i32 -64
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %6, i32 -100
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %43, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %18

15:                                               ; preds = %23
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %27, label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %20 = getelementptr ptr, ptr %1, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.usb_host_endpoint, ptr %21, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %15

27:                                               ; preds = %15, %13
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 30
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %9, ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %33 = icmp sgt i32 %32, -1
  %34 = icmp ne i32 %2, 0
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %36, %27
  %37 = phi i32 [ %41, %36 ], [ 0, %27 ]
  %38 = getelementptr ptr, ptr %1, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_host_endpoint, ptr %39, i32 0, i32 10
  store i32 0, ptr %40, align 4
  %41 = add nuw i32 %37, 1
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %36

43:                                               ; preds = %36, %27, %23, %18, %4
  %44 = phi i32 [ -22, %4 ], [ %32, %27 ], [ %32, %36 ], [ -22, %23 ], [ -22, %18 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_synchronize_unlinks(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_urb_unlink_lock) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %2 = load i16, ptr @hcd_urb_unlink_lock, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr @hcd_urb_unlink_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_get_frame_number(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3) #16
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %13, %8 ], [ -108, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hcd_bus_suspend(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = extractvalue [1 x i32] %1, 0
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 27
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hc_driver, ptr %15, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %9) #16
  store i32 133, ptr %7, align 8
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.hc_driver, ptr %20, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %6) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef 8) #16
  store i32 4, ptr %7, align 8
  %26 = and i32 %4, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @usb_phy_roothub_suspend(ptr noundef %30, ptr noundef %32) #16
  br label %34

34:                                               ; preds = %28, %25
  %35 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.hc_driver, ptr %40, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 %42(ptr noundef %6, ptr noundef nonnull %3) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 @hcd_bus_resume(ptr noundef %0, [1 x i32] [i32 1040])
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ -16, %45 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #16
  br label %58

49:                                               ; preds = %19, %13
  %50 = phi i32 [ %23, %19 ], [ -2, %13 ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  %51 = load i32, ptr %9, align 8
  %52 = and i32 %51, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void @_set_bit(i32 noundef 5, ptr noundef %9) #16
  store i32 %8, ptr %7, align 8
  br label %55

55:                                               ; preds = %54, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %56 = load i16, ptr @hcd_root_hub_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  br label %58

58:                                               ; preds = %55, %47, %34, %2
  %59 = phi i32 [ 0, %2 ], [ %48, %47 ], [ 0, %34 ], [ %50, %55 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_set_device_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_suspend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hcd_bus_resume(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 27
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %2
  %12 = extractvalue [1 x i32] %1, 0
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @usb_phy_roothub_resume(ptr noundef %17, ptr noundef %19) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hc_driver, ptr %24, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %85, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %7, align 8
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  store i32 132, ptr %5, align 8
  %33 = load ptr, ptr %25, align 4
  %34 = tail call i32 %33(ptr noundef %4) #16
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %7) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @usb_phy_roothub_calibrate(ptr noundef %38) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %36
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  %42 = load i32, ptr %7, align 8
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, i32 6, i32 7
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef %49) #16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %7) #16
  store i32 1, ptr %5, align 8
  br label %50

50:                                               ; preds = %45, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %51 = load i16, ptr @hcd_root_hub_lock, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %53 = tail call ptr @usb_hub_find_child(ptr noundef %0, i32 noundef 1) #16
  %54 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %55 = load i32, ptr %54, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %85, label %57

57:                                               ; preds = %71, %50
  %58 = phi i32 [ %72, %71 ], [ 1, %50 ]
  %59 = phi ptr [ %73, %71 ], [ %53, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 3
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 40
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #16
  br label %85

71:                                               ; preds = %65, %61, %57
  %72 = add i32 %58, 1
  %73 = tail call ptr @usb_hub_find_child(ptr noundef %0, i32 noundef %72) #16
  %74 = load i32, ptr %54, align 4
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %85, label %57

76:                                               ; preds = %36, %32
  %77 = phi i32 [ %39, %36 ], [ %34, %32 ]
  store i32 %6, ptr %5, align 8
  %78 = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 @usb_phy_roothub_suspend(ptr noundef %79, ptr noundef %81) #16
  %83 = icmp eq i32 %77, -108
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  tail call void @usb_hc_died(ptr noundef %4)
  br label %85

85:                                               ; preds = %84, %76, %71, %70, %50, %28, %22, %15, %2
  %86 = phi i32 [ 0, %2 ], [ %20, %15 ], [ -2, %22 ], [ 0, %28 ], [ 0, %70 ], [ -108, %76 ], [ %77, %84 ], [ 0, %50 ], [ 0, %71 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_calibrate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hc_died(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #18
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_root_hub_lock) #16
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %4) #16
  tail call void @_set_bit(i32 noundef 6, ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %4) #16
  %10 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  tail call void @usb_set_device_state(ptr noundef %11, i32 noundef 0) #16
  %12 = load ptr, ptr %10, align 8
  tail call void @usb_kick_hub_wq(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %15, %0
  %18 = and i1 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 24
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %21, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %24) #16
  tail call void @_set_bit(i32 noundef 6, ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %21, i32 0, i32 14
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %24) #16
  %30 = getelementptr inbounds %struct.usb_bus, ptr %21, i32 0, i32 11
  %31 = load ptr, ptr %30, align 8
  tail call void @usb_set_device_state(ptr noundef %31, i32 noundef 0) #16
  %32 = load ptr, ptr %30, align 8
  tail call void @usb_kick_hub_wq(ptr noundef %32) #16
  br label %33

33:                                               ; preds = %29, %23, %19, %13
  %34 = phi ptr [ %21, %29 ], [ %21, %23 ], [ %0, %19 ], [ %0, %13 ]
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %34, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = icmp ne ptr %36, %34
  %39 = and i1 %37, %38
  %40 = select i1 %39, ptr %36, ptr %34
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr @system_wq, align 4
  %43 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %42, ptr noundef %41) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_root_hub_lock, i32 noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_resume_root_hub(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hcd_root_hub_lock) #16
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %10, i32 noundef 0, i1 noundef zeroext false) #16
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %11) #16
  %12 = load ptr, ptr @pm_wq, align 4
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 7
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %13) #16
  br label %15

15:                                               ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hcd_root_hub_lock, i32 noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_bus_start_enum(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hc_driver, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 1
  %17 = tail call i32 @mod_timer(ptr noundef %14, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %13, %10, %4, %2
  %19 = phi i32 [ 0, %13 ], [ %11, %10 ], [ -95, %4 ], [ -95, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_irq(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15, !prof !14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hc_driver, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %1) #16
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kick_hub_wq(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp eq ptr %3, %0
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__usb_create_hcd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 352
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %70, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %4, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 20) #19
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 22
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %9) #16
  br label %70

19:                                               ; preds = %13
  tail call void @__mutex_init(ptr noundef nonnull %15, ptr noundef nonnull @.str.5, ptr noundef nonnull @__usb_create_hcd.__key) #16
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 20) #19
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 23
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %25) #16
  tail call void @kfree(ptr noundef nonnull %9) #16
  br label %70

26:                                               ; preds = %19
  tail call void @__mutex_init(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, ptr noundef nonnull @__usb_create_hcd.__key.6) #16
  %27 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  store ptr %9, ptr %27, align 8
  br label %39

28:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 22
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 22
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 23
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 23
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 25
  store ptr %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 25
  store ptr %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 24
  store ptr %4, ptr %37, align 64
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 24
  store ptr %9, ptr %38, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #16
  br label %39

39:                                               ; preds = %28, %26
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 1
  store volatile i32 1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 16 dereferenceable(16) %41, i8 0, i32 16, i1 false) #16
  %42 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 8
  store i32 1, ptr %42, align 8
  %43 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 11
  store ptr null, ptr %43, align 64
  %44 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 2
  store i32 -1, ptr %44, align 8
  %45 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 13
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 14
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 15
  store i32 0, ptr %47, align 16
  %48 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %48, ptr noundef nonnull @.str.18, ptr noundef nonnull @usb_bus_init.__key) #16
  store ptr %2, ptr %9, align 64
  %49 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 1
  store ptr %1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 3
  store ptr %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %51, ptr noundef nonnull @rh_timer_func, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 7
  store i32 -32, ptr %52, align 4
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 7, i32 1
  store volatile ptr %53, ptr %53, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 7, i32 1, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 7, i32 2
  store ptr @hcd_resume_work, ptr %55, align 32
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 8
  store i32 -32, ptr %56, align 4
  %57 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 8, i32 1
  store volatile ptr %57, ptr %57, align 8
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 8, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 8, i32 2
  store ptr @hcd_died_work, ptr %59, align 16
  %60 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 9
  store ptr %0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 112
  %64 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 3
  store i32 %63, ptr %64, align 32
  %65 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr @.str.8, ptr %66
  %69 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 2
  store ptr %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %39, %24, %18, %5
  %71 = phi ptr [ %9, %39 ], [ null, %24 ], [ null, %18 ], [ null, %5 ]
  ret ptr %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rh_timer_func(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -124
  tail call void @usb_hcd_poll_rh_status(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hcd_resume_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @usb_remote_wakeup(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hcd_died_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %5 = tail call i32 @kobject_uevent_env(ptr noundef %4, i32 noundef 5, ptr noundef nonnull @hcd_died_work.env) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_create_shared_hcd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @__usb_create_hcd(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_create_hcd(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @__usb_create_hcd(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_hcd(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !26
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !9

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !14

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #16
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_hcd(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !28
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %24, label %10, !prof !14

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #16
  br label %24

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  tail call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %12 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 24
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 0, i32 24
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 0, i32 25
  store ptr null, ptr %17, align 4
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 8
  tail call void @kfree(ptr noundef %20) #16
  %21 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #16
  br label %23

23:                                               ; preds = %18, %15
  tail call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #16
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %24

24:                                               ; preds = %23, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_find_raw_port_number(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hc_driver, ptr %4, i32 0, i32 43
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef %1) #16
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %1, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_add_hcd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %10, %0
  %13 = and i1 %11, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @usb_phy_roothub_alloc(ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 11
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = ptrtoint ptr %17 to i32
  br label %178

22:                                               ; preds = %14
  %23 = tail call i32 @usb_phy_roothub_init(ptr noundef %17) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %178

25:                                               ; preds = %22
  %26 = load ptr, ptr %18, align 4
  %27 = tail call i32 @usb_phy_roothub_set_mode(ptr noundef %26, i32 noundef 5) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %18, align 4
  %31 = tail call i32 @usb_phy_roothub_set_mode(ptr noundef %30, i32 noundef 1) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %173

33:                                               ; preds = %29, %25
  %34 = load ptr, ptr %18, align 4
  %35 = tail call i32 @usb_phy_roothub_power_on(ptr noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %173

37:                                               ; preds = %33, %8, %3
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef %40) #18
  %41 = load i32, ptr @authorized_default, align 4
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i16, ptr %4, align 8
  %45 = lshr i16 %44, 6
  %46 = and i16 %45, 1
  %47 = xor i16 %46, 1
  %48 = zext i16 %47 to i32
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %52) #16
  tail call void @_set_bit(i32 noundef 7, ptr noundef %52) #16
  %53 = tail call i32 @hcd_buffer_create(ptr noundef %0) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %169

55:                                               ; preds = %49
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %56 = tail call i32 @idr_alloc(ptr noundef nonnull @usb_bus_idr, ptr noundef %0, i32 noundef 1, i32 noundef 64, i32 noundef 3264) #16
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr @usbcore_name, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %59) #18
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  br label %167

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  store i32 %56, ptr %62, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  tail call void @usb_notify_add_bus(ptr noundef %0) #16
  %63 = load ptr, ptr %0, align 4
  %64 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.21, i32 noundef %64) #18
  %65 = tail call ptr @usb_alloc_dev(ptr noundef null, ptr noundef %0, i32 noundef 0) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.10) #18
  br label %161

70:                                               ; preds = %61
  tail call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %71 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  store ptr %65, ptr %71, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %72 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 5
  store i32 1, ptr %72, align 8
  %73 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 6
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 7
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %76 = load i32, ptr %75, align 8
  %77 = add i32 %76, -16
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 28)
  switch i32 %78, label %158 [
    i32 0, label %84
    i32 1, label %79
    i32 2, label %80
    i32 3, label %81
    i32 5, label %82
    i32 4, label %83
  ]

79:                                               ; preds = %70
  br label %84

80:                                               ; preds = %70
  br label %84

81:                                               ; preds = %70
  br label %84

82:                                               ; preds = %70
  store i32 2, ptr %72, align 8
  store i32 2, ptr %73, align 4
  store i32 3, ptr %74, align 8
  br label %84

83:                                               ; preds = %70
  store i32 1, ptr %74, align 8
  br label %84

84:                                               ; preds = %83, %82, %81, %80, %79, %70
  %85 = phi i32 [ 6, %83 ], [ 6, %82 ], [ 5, %81 ], [ 4, %80 ], [ 3, %79 ], [ 2, %70 ]
  %86 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 4
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  tail call void @device_set_wakeup_capable(ptr noundef %87, i1 noundef zeroext true) #16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %52) #16
  %88 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.hc_driver, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = tail call i32 %91(ptr noundef %0) #16
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.11, i32 noundef %94) #18
  br label %158

98:                                               ; preds = %93, %84
  %99 = load i16, ptr %4, align 8
  %100 = or i16 %99, 2
  store i16 %100, ptr %4, align 8
  %101 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 11
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @usb_phy_roothub_calibrate(ptr noundef %102) #16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %158

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 20, i32 1
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 20, i32 2
  store volatile ptr %107, ptr %107, align 4
  %108 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 20, i32 2, i32 1
  store ptr %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 20, i32 3
  tail call void @tasklet_setup(ptr noundef %109, ptr noundef nonnull @usb_giveback_urb_bh) #16
  %110 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 21, i32 2
  store volatile ptr %111, ptr %111, align 4
  %112 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 21, i32 2, i32 1
  store ptr %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 21, i32 3
  tail call void @tasklet_setup(ptr noundef %113, ptr noundef nonnull @usb_giveback_urb_bh) #16
  %114 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  %117 = icmp eq ptr %115, %0
  %118 = or i1 %116, %117
  %119 = icmp ne i32 %1, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %124

121:                                              ; preds = %105
  %122 = tail call fastcc i32 @usb_hcd_request_irqs(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %121, %105
  %125 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 1, ptr %125, align 8
  %126 = load ptr, ptr %88, align 4
  %127 = getelementptr inbounds %struct.hc_driver, ptr %126, i32 0, i32 6
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 %128(ptr noundef %0) #16
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.12, i32 noundef %129) #18
  br label %146

133:                                              ; preds = %124
  %134 = tail call fastcc i32 @register_root_hub(ptr noundef %0)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load i16, ptr %4, align 8
  %138 = and i16 %137, 32
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %178, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %52, align 8
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %178, label %144

144:                                              ; preds = %140
  tail call void @usb_hcd_poll_rh_status(ptr noundef %0)
  br label %178

145:                                              ; preds = %133
  tail call fastcc void @usb_stop_hcd(ptr noundef %0)
  br label %146

146:                                              ; preds = %145, %131
  %147 = phi i32 [ %129, %131 ], [ %134, %145 ]
  %148 = load ptr, ptr %114, align 4
  %149 = icmp ne ptr %148, null
  %150 = icmp ne ptr %148, %0
  %151 = and i1 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %0) #16
  br label %158

158:                                              ; preds = %156, %152, %146, %121, %98, %96, %70
  %159 = phi i32 [ %94, %96 ], [ %103, %98 ], [ %122, %121 ], [ %147, %156 ], [ %147, %152 ], [ %147, %146 ], [ -22, %70 ]
  tail call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %160 = load ptr, ptr %71, align 8
  store ptr null, ptr %71, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #16
  tail call void @usb_put_dev(ptr noundef %160) #16
  br label %161

161:                                              ; preds = %158, %67
  %162 = phi i32 [ -12, %67 ], [ %159, %158 ]
  %163 = load ptr, ptr %0, align 4
  %164 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %163, ptr noundef nonnull @.str.29, i32 noundef %164) #18
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %165 = load i32, ptr %62, align 4
  %166 = tail call ptr @idr_remove(ptr noundef nonnull @usb_bus_idr, i32 noundef %165) #16
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  tail call void @usb_notify_remove_bus(ptr noundef %0) #16
  br label %167

167:                                              ; preds = %161, %58
  %168 = phi i32 [ %162, %161 ], [ -7, %58 ]
  tail call void @hcd_buffer_destroy(ptr noundef %0) #16
  br label %169

169:                                              ; preds = %167, %49
  %170 = phi i32 [ %53, %49 ], [ %168, %167 ]
  %171 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 11
  %172 = load ptr, ptr %171, align 4
  tail call void @usb_phy_roothub_power_off(ptr noundef %172) #16
  br label %173

173:                                              ; preds = %169, %33, %29
  %174 = phi i32 [ %170, %169 ], [ %31, %29 ], [ %35, %33 ]
  %175 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 11
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 @usb_phy_roothub_exit(ptr noundef %176) #16
  br label %178

178:                                              ; preds = %173, %144, %140, %136, %22, %20
  %179 = phi i32 [ %174, %173 ], [ %21, %20 ], [ %23, %22 ], [ 0, %144 ], [ 0, %140 ], [ 0, %136 ]
  ret i32 %179
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_phy_roothub_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hcd_buffer_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_hcd_request_irqs(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hc_driver, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %10, i32 noundef 24, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %13)
  %15 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @usb_hcd_irq, ptr noundef null, i32 noundef %2, ptr noundef %10, ptr noundef %0) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %1) #18
  br label %44

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  store i32 %1, ptr %20, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.hc_driver, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.26, ptr @.str.25
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %1, ptr noundef nonnull %27, i64 noundef %30) #18
  br label %44

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 17
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.hc_driver, ptr %5, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.26, ptr @.str.25
  %43 = zext i32 %34 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.27, ptr noundef nonnull %42, i64 noundef %43) #18
  br label %44

44:                                               ; preds = %36, %31, %19, %17
  %45 = phi i32 [ %15, %17 ], [ 0, %31 ], [ 0, %36 ], [ 0, %19 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @register_root_hub(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 8
  store i32 2, ptr %7, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %9) #16
  tail call void @usb_set_device_state(ptr noundef %4, i32 noundef 6) #16
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %10 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 13, i32 0, i32 4
  store i16 64, ptr %10, align 4
  %11 = tail call i32 @usb_get_device_descriptor(ptr noundef %4, i32 noundef 18) #16
  %12 = icmp eq i32 %11, 18
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %14 = icmp slt i32 %11, 0
  %15 = select i1 %14, i32 %11, i32 -90
  br label %61

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 16, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = icmp ugt i16 %18, 512
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = tail call i32 @usb_get_bos_descriptor(ptr noundef %4) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = tail call i32 @usb_device_supports_lpm(ptr noundef %4) #16
  %25 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 28
  %26 = trunc i32 %24 to i16
  %27 = load i16, ptr %25, align 1
  %28 = shl i16 %26, 6
  %29 = and i16 %28, 64
  %30 = and i16 %27, -65
  %31 = or i16 %29, %30
  store i16 %31, ptr %25, align 1
  br label %37

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  br label %61

37:                                               ; preds = %32, %23, %16
  %38 = tail call i32 @usb_new_device(ptr noundef %4) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi ptr [ %46, %44 ], [ %42, %40 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %48, i32 noundef %38) #18
  br label %60

49:                                               ; preds = %37
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %51 = load i16, ptr %50, align 8
  %52 = or i16 %51, 1
  store i16 %52, ptr %50, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %53 = load i16, ptr @hcd_root_hub_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  tail call void @usb_hc_died(ptr noundef %0)
  br label %60

60:                                               ; preds = %59, %49, %47
  tail call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  br label %61

61:                                               ; preds = %60, %36, %13
  %62 = phi i32 [ %15, %13 ], [ %21, %36 ], [ %38, %60 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_stop_hcd(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, -3
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %7 = tail call i32 @del_timer_sync(ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hc_driver, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  store i32 0, ptr %12, align 8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %5) #16
  %13 = tail call i32 @del_timer_sync(ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hcd_buffer_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_roothub_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_phy_roothub_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_remove_hcd(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 27
  %7 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %7) #18
  %8 = tail call ptr @usb_get_dev(ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %9) #16
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 133, ptr %6, align 8
  br label %14

14:                                               ; preds = %13, %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @hcd_root_hub_lock) #16
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, -2
  store i16 %17, ptr %15, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %18 = load i16, ptr @hcd_root_hub_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @hcd_root_hub_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 7
  %21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %20) #16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 8
  %23 = tail call zeroext i1 @cancel_work_sync(ptr noundef %22) #16
  tail call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #16
  call void @usb_disconnect(ptr noundef nonnull %2) #16
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %24 = load i16, ptr %15, align 8
  %25 = and i16 %24, -3
  store i16 %25, ptr %15, align 8
  call void @_clear_bit(i32 noundef 2, ptr noundef %9) #16
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %27 = call i32 @del_timer_sync(ptr noundef %26) #16
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  call void %31(ptr noundef %0) #16
  store i32 0, ptr %6, align 8
  call void @_clear_bit(i32 noundef 2, ptr noundef %9) #16
  %32 = call i32 @del_timer_sync(ptr noundef %26) #16
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ne ptr %34, null
  %36 = icmp ne ptr %34, %0
  %37 = and i1 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call ptr @free_irq(i32 noundef %40, ptr noundef %0) #16
  br label %44

44:                                               ; preds = %42, %38, %14
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.29, i32 noundef %47) #18
  call void @mutex_lock(ptr noundef nonnull @usb_bus_idr_lock) #16
  %48 = load i32, ptr %46, align 4
  %49 = call ptr @idr_remove(ptr noundef nonnull @usb_bus_idr, i32 noundef %48) #16
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #16
  call void @usb_notify_remove_bus(ptr noundef %0) #16
  call void @hcd_buffer_destroy(ptr noundef %0) #16
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  call void @usb_phy_roothub_power_off(ptr noundef %51) #16
  %52 = load ptr, ptr %50, align 4
  %53 = call i32 @usb_phy_roothub_exit(ptr noundef %52) #16
  call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #16
  %54 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #16
  call void @usb_put_dev(ptr noundef %54) #16
  store i32 0, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hcd_platform_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #16
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hc_driver, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %3) #16
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hcd_setup_local_mem(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 4
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %11, %10 ], [ %8, %4 ]
  %14 = tail call ptr @devm_gen_pool_create(ptr noundef %6, i32 noundef 4, i32 noundef -1, ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i32
  br label %32

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  %21 = tail call ptr @devm_memremap(ptr noundef %20, i32 noundef %1, i32 noundef %3, i32 noundef 4) #16
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  br label %32

25:                                               ; preds = %19
  %26 = load ptr, ptr %15, align 4
  %27 = ptrtoint ptr %21 to i32
  %28 = tail call i32 @gen_pool_add_owner(ptr noundef %26, i32 noundef %27, i32 noundef %2, i32 noundef %3, i32 noundef -1, ptr noundef null) #16
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef %28) #18
  br label %32

32:                                               ; preds = %30, %25, %23, %17
  %33 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %28, %30 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gen_pool_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hcd_buffer_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hcd_buffer_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hub_adjust_deviceremovable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_suspend_wakeups(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_resume_wakeups(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_remote_wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_add_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_giveback_urb_bh(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %4 = getelementptr i8, ptr %0, i32 -12
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #16
  store i8 1, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %5, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = phi ptr [ %30, %29 ], [ %9, %1 ]
  store ptr %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = load ptr, ptr %6, align 4
  store ptr %13, ptr %7, align 4
  store ptr %2, ptr %13, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %16 = load volatile ptr, ptr %2, align 8
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %29, label %18

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %27, %18 ], [ %16, %10 ]
  %20 = getelementptr i8, ptr %19, i32 -20
  %21 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %21, align 4
  %25 = getelementptr i8, ptr %19, i32 24
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %8, align 4
  call fastcc void @__usb_hcd_giveback_urb(ptr noundef %20)
  store ptr null, ptr %8, align 4
  %27 = load volatile ptr, ptr %2, align 8
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %18

29:                                               ; preds = %18, %10
  call void @_raw_spin_lock_irq(ptr noundef %4) #16
  %30 = load volatile ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %32, label %10

32:                                               ; preds = %29
  store i8 0, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %33 = load i16, ptr %4, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_device_descriptor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_bos_descriptor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_device_supports_lpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_new_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_notify_remove_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149016329}
!11 = !{i64 2149012153}
!12 = !{i64 2149012228, i64 2149012255, i64 2149012302, i64 2149012324, i64 2149012352, i64 2149012372}
!13 = !{i64 2149039332}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
!16 = !{i64 631804, i64 2148121775, i64 2148121801, i64 2148121848, i64 2148121870, i64 2148121898, i64 2148121918}
!17 = !{i64 2148133190, i64 2148133216, i64 2148133245, i64 2148133279, i64 2148133310, i64 2148133333}
!18 = !{i64 2148132697}
!19 = !{i64 618373, i64 618398, i64 618420, i64 618436, i64 618448, i64 618468, i64 618492, i64 618508, i64 618520}
!20 = !{i64 2148132823}
!21 = !{i64 537727}
!22 = !{i64 2149040473}
!23 = !{i64 2148135547, i64 2148135573, i64 2148135602, i64 2148135636, i64 2148135667, i64 2148135690}
!24 = !{i64 2154498353}
!25 = !{i64 2154499850}
!26 = !{i64 2148134648, i64 2148134680, i64 2148134709, i64 2148134743, i64 2148134774, i64 2148134797}
!27 = !{i64 2148234870}
!28 = !{i64 2148137005, i64 2148137037, i64 2148137066, i64 2148137100, i64 2148137131, i64 2148137154}
!29 = !{i64 2149084317}
