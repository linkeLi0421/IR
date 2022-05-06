; ModuleID = '/llk/IR/drivers/firmware/qcom_scm.c_pt.bc'
source_filename = "../drivers/firmware/qcom_scm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_set_warm_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_set_warm_boot_addr\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_set_warm_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_set_cold_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_set_cold_boot_addr\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_set_cold_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_cpu_power_down:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_cpu_power_down\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_cpu_power_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_set_remote_state:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_set_remote_state\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_set_remote_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_pas_init_image:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_pas_init_image\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_pas_init_image:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_pas_mem_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_pas_mem_setup\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_pas_mem_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_pas_auth_and_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_pas_auth_and_reset\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_pas_auth_and_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_pas_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_pas_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_pas_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_pas_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_pas_supported\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_pas_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_io_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_io_readl\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_io_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_io_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_io_writel\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_io_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_restore_sec_cfg_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_restore_sec_cfg_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_restore_sec_cfg_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_restore_sec_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_restore_sec_cfg\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_restore_sec_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_iommu_secure_ptbl_size:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_iommu_secure_ptbl_size\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_iommu_secure_ptbl_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_iommu_secure_ptbl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_iommu_secure_ptbl_init\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_iommu_secure_ptbl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_mem_protect_video_var:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_mem_protect_video_var\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_mem_protect_video_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_assign_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_assign_mem\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_assign_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ocmem_lock_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ocmem_lock_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ocmem_lock_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ocmem_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ocmem_lock\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ocmem_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ocmem_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ocmem_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ocmem_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ice_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ice_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ice_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ice_invalidate_key:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ice_invalidate_key\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ice_invalidate_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_ice_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_ice_set_key\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_ice_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_hdcp_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_hdcp_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_hdcp_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_hdcp_req:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_hdcp_req\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_hdcp_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_qsmmu500_wait_safe_toggle:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_qsmmu500_wait_safe_toggle\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_qsmmu500_wait_safe_toggle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_lmh_dcvsh_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_lmh_dcvsh_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_lmh_dcvsh_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_lmh_profile_change:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_lmh_profile_change\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_lmh_profile_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_lmh_dcvsh:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_lmh_dcvsh\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_lmh_dcvsh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_scm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_scm_is_available\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_scm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.qcom_scm_wb_entry = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.qcom_scm_desc = type { i32, i32, i32, [10 x i64], i32 }
%struct.qcom_scm_res = type { [3 x i64] }
%struct.qcom_scm = type { ptr, ptr, ptr, ptr, %struct.reset_controller_dev, i64 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.qcom_scm_mem_map_info = type { i64, i64 }
%struct.qcom_scm_vmperm = type { i32, i32 }
%struct.qcom_scm_current_perm_info = type { i32, i32, i64, i32, i32 }
%struct.qcom_scm_hdcp_req = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_download_mode = internal constant [23 x i8] c"qcom_scm.download_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@download_mode = internal global i8 0, align 1
@__param_download_mode = internal constant %struct.kernel_param { ptr @__param_str_download_mode, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @download_mode } }, section "__param", align 4
@__UNIQUE_ID_download_modetype221 = internal constant [37 x i8] c"qcom_scm.parmtype=download_mode:bool\00", section ".modinfo", align 1
@qcom_scm_convention = dso_local local_unnamed_addr global i32 0, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@qcom_scm_wb = internal unnamed_addr global [4 x %struct.qcom_scm_wb_entry] [%struct.qcom_scm_wb_entry { i32 4, ptr null }, %struct.qcom_scm_wb_entry { i32 2, ptr null }, %struct.qcom_scm_wb_entry { i32 16, ptr null }, %struct.qcom_scm_wb_entry { i32 64, ptr null }], align 4
@__scm = internal unnamed_addr global ptr null, align 4
@__kstrtab_qcom_scm_set_warm_boot_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_set_warm_boot_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_set_warm_boot_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_set_warm_boot_addr to i32), ptr @__kstrtab_qcom_scm_set_warm_boot_addr, ptr @__kstrtabns_qcom_scm_set_warm_boot_addr }, section "___ksymtab+qcom_scm_set_warm_boot_addr", align 4
@__const.qcom_scm_set_cold_boot_addr.scm_cb_flags = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 8, i32 32], align 4
@__kstrtab_qcom_scm_set_cold_boot_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_set_cold_boot_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_set_cold_boot_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_set_cold_boot_addr to i32), ptr @__kstrtab_qcom_scm_set_cold_boot_addr, ptr @__kstrtabns_qcom_scm_set_cold_boot_addr }, section "___ksymtab+qcom_scm_set_cold_boot_addr", align 4
@__kstrtab_qcom_scm_cpu_power_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_cpu_power_down = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_cpu_power_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_cpu_power_down to i32), ptr @__kstrtab_qcom_scm_cpu_power_down, ptr @__kstrtabns_qcom_scm_cpu_power_down }, section "___ksymtab+qcom_scm_cpu_power_down", align 4
@__kstrtab_qcom_scm_set_remote_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_set_remote_state = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_set_remote_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_set_remote_state to i32), ptr @__kstrtab_qcom_scm_set_remote_state, ptr @__kstrtabns_qcom_scm_set_remote_state }, section "___ksymtab+qcom_scm_set_remote_state", align 4
@.str = private unnamed_addr constant [39 x i8] c"Allocation of metadata buffer failed.\0A\00", align 1
@__kstrtab_qcom_scm_pas_init_image = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_pas_init_image = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_pas_init_image = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_pas_init_image to i32), ptr @__kstrtab_qcom_scm_pas_init_image, ptr @__kstrtabns_qcom_scm_pas_init_image }, section "___ksymtab+qcom_scm_pas_init_image", align 4
@__kstrtab_qcom_scm_pas_mem_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_pas_mem_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_pas_mem_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_pas_mem_setup to i32), ptr @__kstrtab_qcom_scm_pas_mem_setup, ptr @__kstrtabns_qcom_scm_pas_mem_setup }, section "___ksymtab+qcom_scm_pas_mem_setup", align 4
@__kstrtab_qcom_scm_pas_auth_and_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_pas_auth_and_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_pas_auth_and_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_pas_auth_and_reset to i32), ptr @__kstrtab_qcom_scm_pas_auth_and_reset, ptr @__kstrtabns_qcom_scm_pas_auth_and_reset }, section "___ksymtab+qcom_scm_pas_auth_and_reset", align 4
@__kstrtab_qcom_scm_pas_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_pas_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_pas_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_pas_shutdown to i32), ptr @__kstrtab_qcom_scm_pas_shutdown, ptr @__kstrtabns_qcom_scm_pas_shutdown }, section "___ksymtab+qcom_scm_pas_shutdown", align 4
@__kstrtab_qcom_scm_pas_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_pas_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_pas_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_pas_supported to i32), ptr @__kstrtab_qcom_scm_pas_supported, ptr @__kstrtabns_qcom_scm_pas_supported }, section "___ksymtab+qcom_scm_pas_supported", align 4
@__kstrtab_qcom_scm_io_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_io_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_io_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_io_readl to i32), ptr @__kstrtab_qcom_scm_io_readl, ptr @__kstrtabns_qcom_scm_io_readl }, section "___ksymtab+qcom_scm_io_readl", align 4
@__kstrtab_qcom_scm_io_writel = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_io_writel = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_io_writel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_io_writel to i32), ptr @__kstrtab_qcom_scm_io_writel, ptr @__kstrtabns_qcom_scm_io_writel }, section "___ksymtab+qcom_scm_io_writel", align 4
@__kstrtab_qcom_scm_restore_sec_cfg_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_restore_sec_cfg_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_restore_sec_cfg_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_restore_sec_cfg_available to i32), ptr @__kstrtab_qcom_scm_restore_sec_cfg_available, ptr @__kstrtabns_qcom_scm_restore_sec_cfg_available }, section "___ksymtab+qcom_scm_restore_sec_cfg_available", align 4
@__kstrtab_qcom_scm_restore_sec_cfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_restore_sec_cfg = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_restore_sec_cfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_restore_sec_cfg to i32), ptr @__kstrtab_qcom_scm_restore_sec_cfg, ptr @__kstrtabns_qcom_scm_restore_sec_cfg }, section "___ksymtab+qcom_scm_restore_sec_cfg", align 4
@__kstrtab_qcom_scm_iommu_secure_ptbl_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_iommu_secure_ptbl_size = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_iommu_secure_ptbl_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_iommu_secure_ptbl_size to i32), ptr @__kstrtab_qcom_scm_iommu_secure_ptbl_size, ptr @__kstrtabns_qcom_scm_iommu_secure_ptbl_size }, section "___ksymtab+qcom_scm_iommu_secure_ptbl_size", align 4
@__kstrtab_qcom_scm_iommu_secure_ptbl_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_iommu_secure_ptbl_init = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_iommu_secure_ptbl_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_iommu_secure_ptbl_init to i32), ptr @__kstrtab_qcom_scm_iommu_secure_ptbl_init, ptr @__kstrtabns_qcom_scm_iommu_secure_ptbl_init }, section "___ksymtab+qcom_scm_iommu_secure_ptbl_init", align 4
@__kstrtab_qcom_scm_mem_protect_video_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_mem_protect_video_var = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_mem_protect_video_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_mem_protect_video_var to i32), ptr @__kstrtab_qcom_scm_mem_protect_video_var, ptr @__kstrtabns_qcom_scm_mem_protect_video_var }, section "___ksymtab+qcom_scm_mem_protect_video_var", align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Assign memory protection call failed %d\0A\00", align 1
@__kstrtab_qcom_scm_assign_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_assign_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_assign_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_assign_mem to i32), ptr @__kstrtab_qcom_scm_assign_mem, ptr @__kstrtabns_qcom_scm_assign_mem }, section "___ksymtab+qcom_scm_assign_mem", align 4
@__kstrtab_qcom_scm_ocmem_lock_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ocmem_lock_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ocmem_lock_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ocmem_lock_available to i32), ptr @__kstrtab_qcom_scm_ocmem_lock_available, ptr @__kstrtabns_qcom_scm_ocmem_lock_available }, section "___ksymtab+qcom_scm_ocmem_lock_available", align 4
@__kstrtab_qcom_scm_ocmem_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ocmem_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ocmem_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ocmem_lock to i32), ptr @__kstrtab_qcom_scm_ocmem_lock, ptr @__kstrtabns_qcom_scm_ocmem_lock }, section "___ksymtab+qcom_scm_ocmem_lock", align 4
@__kstrtab_qcom_scm_ocmem_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ocmem_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ocmem_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ocmem_unlock to i32), ptr @__kstrtab_qcom_scm_ocmem_unlock, ptr @__kstrtabns_qcom_scm_ocmem_unlock }, section "___ksymtab+qcom_scm_ocmem_unlock", align 4
@__kstrtab_qcom_scm_ice_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ice_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ice_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ice_available to i32), ptr @__kstrtab_qcom_scm_ice_available, ptr @__kstrtabns_qcom_scm_ice_available }, section "___ksymtab+qcom_scm_ice_available", align 4
@__kstrtab_qcom_scm_ice_invalidate_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ice_invalidate_key = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ice_invalidate_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ice_invalidate_key to i32), ptr @__kstrtab_qcom_scm_ice_invalidate_key, ptr @__kstrtabns_qcom_scm_ice_invalidate_key }, section "___ksymtab+qcom_scm_ice_invalidate_key", align 4
@__kstrtab_qcom_scm_ice_set_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_ice_set_key = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_ice_set_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_ice_set_key to i32), ptr @__kstrtab_qcom_scm_ice_set_key, ptr @__kstrtabns_qcom_scm_ice_set_key }, section "___ksymtab+qcom_scm_ice_set_key", align 4
@__kstrtab_qcom_scm_hdcp_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_hdcp_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_hdcp_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_hdcp_available to i32), ptr @__kstrtab_qcom_scm_hdcp_available, ptr @__kstrtabns_qcom_scm_hdcp_available }, section "___ksymtab+qcom_scm_hdcp_available", align 4
@__kstrtab_qcom_scm_hdcp_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_hdcp_req = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_hdcp_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_hdcp_req to i32), ptr @__kstrtab_qcom_scm_hdcp_req, ptr @__kstrtabns_qcom_scm_hdcp_req }, section "___ksymtab+qcom_scm_hdcp_req", align 4
@__kstrtab_qcom_scm_qsmmu500_wait_safe_toggle = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_qsmmu500_wait_safe_toggle = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_qsmmu500_wait_safe_toggle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_qsmmu500_wait_safe_toggle to i32), ptr @__kstrtab_qcom_scm_qsmmu500_wait_safe_toggle, ptr @__kstrtabns_qcom_scm_qsmmu500_wait_safe_toggle }, section "___ksymtab+qcom_scm_qsmmu500_wait_safe_toggle", align 4
@__kstrtab_qcom_scm_lmh_dcvsh_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_lmh_dcvsh_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_lmh_dcvsh_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_lmh_dcvsh_available to i32), ptr @__kstrtab_qcom_scm_lmh_dcvsh_available, ptr @__kstrtabns_qcom_scm_lmh_dcvsh_available }, section "___ksymtab+qcom_scm_lmh_dcvsh_available", align 4
@__kstrtab_qcom_scm_lmh_profile_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_lmh_profile_change = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_lmh_profile_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_lmh_profile_change to i32), ptr @__kstrtab_qcom_scm_lmh_profile_change, ptr @__kstrtabns_qcom_scm_lmh_profile_change }, section "___ksymtab+qcom_scm_lmh_profile_change", align 4
@__kstrtab_qcom_scm_lmh_dcvsh = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_lmh_dcvsh = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_lmh_dcvsh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_lmh_dcvsh to i32), ptr @__kstrtab_qcom_scm_lmh_dcvsh, ptr @__kstrtabns_qcom_scm_lmh_dcvsh }, section "___ksymtab+qcom_scm_lmh_dcvsh", align 4
@__kstrtab_qcom_scm_is_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_scm_is_available = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_scm_is_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_scm_is_available to i32), ptr @__kstrtab_qcom_scm_is_available, ptr @__kstrtabns_qcom_scm_is_available }, section "___ksymtab+qcom_scm_is_available", align 4
@__initcall__kmod_qcom_scm__222_1380_qcom_scm_init4 = internal global ptr @qcom_scm_init, section ".initcall4.init", align 4
@__UNIQUE_ID_description223 = internal constant [60 x i8] c"qcom_scm.description=Qualcomm Technologies, Inc. SCM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file224 = internal constant [40 x i8] c"qcom_scm.file=drivers/firmware/qcom-scm\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [24 x i8] c"qcom_scm.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\013Unknown current SCM calling convention.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"qcom,scm-sc7180\00", align 1
@scm_query_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\016qcom_scm: convention: %s%s\0A\00", align 1
@qcom_scm_convention_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" (forced)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"smc legacy\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"smc arm 32\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"smc arm 64\00", align 1
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"\013Unknown SMC convention being used\0A\00", align 1
@qcom_scm_driver = internal global %struct.platform_driver { ptr @qcom_scm_probe, ptr null, ptr @qcom_scm_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qcom_scm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"qcom_scm\00", align 1
@qcom_scm_dt_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-apq8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-ipq4019\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-mdm9607\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8953\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm-msm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to acquire core clk\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to acquire iface clk\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"failed to acquire bus clk\0A\00", align 1
@qcom_scm_pas_reset_ops = internal constant %struct.reset_control_ops { ptr null, ptr @qcom_scm_pas_reset_assert, ptr @qcom_scm_pas_reset_deassert, ptr null }, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"qcom,dload-mode\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"No available mechanism for setting download mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"failed to set download mode: %d\0A\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_description223, ptr @__UNIQUE_ID_download_modetype221, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__initcall__kmod_qcom_scm__222_1380_qcom_scm_init4, ptr @__ksymtab_qcom_scm_assign_mem, ptr @__ksymtab_qcom_scm_cpu_power_down, ptr @__ksymtab_qcom_scm_hdcp_available, ptr @__ksymtab_qcom_scm_hdcp_req, ptr @__ksymtab_qcom_scm_ice_available, ptr @__ksymtab_qcom_scm_ice_invalidate_key, ptr @__ksymtab_qcom_scm_ice_set_key, ptr @__ksymtab_qcom_scm_io_readl, ptr @__ksymtab_qcom_scm_io_writel, ptr @__ksymtab_qcom_scm_iommu_secure_ptbl_init, ptr @__ksymtab_qcom_scm_iommu_secure_ptbl_size, ptr @__ksymtab_qcom_scm_is_available, ptr @__ksymtab_qcom_scm_lmh_dcvsh, ptr @__ksymtab_qcom_scm_lmh_dcvsh_available, ptr @__ksymtab_qcom_scm_lmh_profile_change, ptr @__ksymtab_qcom_scm_mem_protect_video_var, ptr @__ksymtab_qcom_scm_ocmem_lock, ptr @__ksymtab_qcom_scm_ocmem_lock_available, ptr @__ksymtab_qcom_scm_ocmem_unlock, ptr @__ksymtab_qcom_scm_pas_auth_and_reset, ptr @__ksymtab_qcom_scm_pas_init_image, ptr @__ksymtab_qcom_scm_pas_mem_setup, ptr @__ksymtab_qcom_scm_pas_shutdown, ptr @__ksymtab_qcom_scm_pas_supported, ptr @__ksymtab_qcom_scm_qsmmu500_wait_safe_toggle, ptr @__ksymtab_qcom_scm_restore_sec_cfg, ptr @__ksymtab_qcom_scm_restore_sec_cfg_available, ptr @__ksymtab_qcom_scm_set_cold_boot_addr, ptr @__ksymtab_qcom_scm_set_remote_state, ptr @__ksymtab_qcom_scm_set_warm_boot_addr, ptr @__param_download_mode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_set_warm_boot_addr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 96, i1 false)
  store i32 1, ptr %3, align 8
  %5 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %3, i32 0, i32 2
  store i32 2, ptr %6, align 8
  %7 = load i32, ptr @nr_cpu_ids, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = phi i32 [ %22, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %13, %19 ], [ -1, %2 ]
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi i32 [ %13, %15 ], [ %10, %8 ]
  %13 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef %1) #11
  %14 = icmp ult i32 %13, %7
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr [4 x %struct.qcom_scm_wb_entry], ptr @qcom_scm_wb, i32 0, i32 %13, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %11, label %19

19:                                               ; preds = %15
  %20 = getelementptr [4 x %struct.qcom_scm_wb_entry], ptr @qcom_scm_wb, i32 0, i32 %13
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %9
  br label %8

23:                                               ; preds = %11
  %24 = icmp eq i32 %9, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %23
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  store i64 %26, ptr %27, align 8
  %28 = ptrtoint ptr %0 to i32
  %29 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %28, i32 -2130706432, i32 8454144) #12, !srcloc !8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 1
  store i64 %30, ptr %31, align 8
  %32 = load ptr, ptr @__scm, align 4
  %33 = load ptr, ptr %32, align 8
  %34 = tail call fastcc i32 @__get_convention() #10
  switch i32 %34, label %40 [
    i32 2, label %35
    i32 3, label %35
    i32 1, label %38
  ]

35:                                               ; preds = %25, %25
  %36 = load i32, ptr @qcom_scm_convention, align 4
  %37 = call i32 @__scm_smc_call(ptr noundef %33, ptr noundef nonnull %3, i32 noundef %36, ptr noundef null, i1 noundef zeroext false) #10
  br label %42

38:                                               ; preds = %25
  %39 = call i32 @scm_legacy_call(ptr noundef %33, ptr noundef nonnull %3, ptr noundef null) #10
  br label %42

40:                                               ; preds = %25
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %54

42:                                               ; preds = %38, %35
  %43 = phi i32 [ %39, %38 ], [ %37, %35 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #11
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %49, label %54

49:                                               ; preds = %49, %45
  %50 = phi i32 [ %52, %49 ], [ %47, %45 ]
  %51 = getelementptr [4 x %struct.qcom_scm_wb_entry], ptr @qcom_scm_wb, i32 0, i32 %50, i32 1
  store ptr %0, ptr %51, align 4
  %52 = call i32 @cpumask_next(i32 noundef %50, ptr noundef %1) #11
  %53 = icmp ult i32 %52, %46
  br i1 %53, label %49, label %54

54:                                               ; preds = %49, %45, %42, %40, %23
  %55 = phi i32 [ 0, %23 ], [ %43, %42 ], [ -22, %40 ], [ 0, %45 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_set_cold_boot_addr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 96, i1 false)
  store i32 1, ptr %3, align 8
  %5 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %3, i32 0, i32 2
  store i32 2, ptr %6, align 8
  %7 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %3, i32 0, i32 5
  store i32 2, ptr %7, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %1) #11
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %28, %13
  %18 = phi i32 [ %29, %28 ], [ %15, %13 ]
  %19 = phi i32 [ %31, %28 ], [ %14, %13 ]
  %20 = phi i32 [ %30, %28 ], [ 0, %13 ]
  %21 = icmp ult i32 %19, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr [4 x i32], ptr @__const.qcom_scm_set_cold_boot_addr.scm_cb_flags, i32 0, i32 %19
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %20
  br label %28

26:                                               ; preds = %17
  tail call void @_clear_bit(i32 noundef %19, ptr noundef nonnull @__cpu_present_mask) #10
  %27 = load i32, ptr @nr_cpu_ids, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %18, %22 ], [ %27, %26 ]
  %30 = phi i32 [ %25, %22 ], [ %20, %26 ]
  %31 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull %1) #11
  %32 = icmp ult i32 %31, %29
  br i1 %32, label %17, label %33

33:                                               ; preds = %28, %13
  %34 = phi i32 [ 0, %13 ], [ %30, %28 ]
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  store i64 %35, ptr %36, align 8
  %37 = ptrtoint ptr %0 to i32
  %38 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %37, i32 -2130706432, i32 8454144) #12, !srcloc !8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 1
  store i64 %39, ptr %40, align 8
  %41 = load ptr, ptr @__scm, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = load ptr, ptr %41, align 8
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi ptr [ %44, %43 ], [ null, %33 ]
  %47 = tail call fastcc i32 @__get_convention() #10
  switch i32 %47, label %53 [
    i32 2, label %48
    i32 3, label %48
    i32 1, label %51
  ]

48:                                               ; preds = %45, %45
  %49 = load i32, ptr @qcom_scm_convention, align 4
  %50 = call i32 @__scm_smc_call(ptr noundef %46, ptr noundef nonnull %3, i32 noundef %49, ptr noundef null, i1 noundef zeroext true) #10
  br label %55

51:                                               ; preds = %45
  %52 = call i32 @scm_legacy_call_atomic(ptr noundef %46, ptr noundef nonnull %3, ptr noundef null) #10
  br label %55

53:                                               ; preds = %45
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %55

55:                                               ; preds = %53, %51, %48, %9, %2
  %56 = phi i32 [ -22, %9 ], [ -22, %2 ], [ -22, %53 ], [ %52, %51 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %56
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @qcom_scm_cpu_power_down(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store i32 1, ptr %2, align 8
  %4 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %7 = and i32 %0, 3
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %9, align 8
  %10 = load ptr, ptr @__scm, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ null, %1 ]
  %16 = tail call fastcc i32 @__get_convention() #10
  switch i32 %16, label %22 [
    i32 2, label %17
    i32 3, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %14, %14
  %18 = load i32, ptr @qcom_scm_convention, align 4
  %19 = call i32 @__scm_smc_call(ptr noundef %15, ptr noundef nonnull %2, i32 noundef %18, ptr noundef null, i1 noundef zeroext true) #10
  br label %24

20:                                               ; preds = %14
  %21 = call i32 @scm_legacy_call_atomic(ptr noundef %15, ptr noundef nonnull %2, ptr noundef null) #10
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %24

24:                                               ; preds = %22, %20, %17
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_set_remote_state(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  %4 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 96, i1 false), !annotation !9
  store i32 1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 1
  store i32 10, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 2
  store i32 2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %9, i8 0, i64 64, i1 false)
  %10 = zext i32 %0 to i64
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 1
  %12 = zext i32 %1 to i64
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 4
  store i32 2, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %14 = load ptr, ptr @__scm, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call fastcc i32 @__get_convention() #10
  switch i32 %16, label %22 [
    i32 2, label %17
    i32 3, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %2, %2
  %18 = load i32, ptr @qcom_scm_convention, align 4
  %19 = call i32 @__scm_smc_call(ptr noundef %15, ptr noundef nonnull %3, i32 noundef %18, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  br label %24

20:                                               ; preds = %2
  %21 = call i32 @scm_legacy_call(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br label %24

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %31

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %21, %20 ], [ %19, %17 ]
  %26 = icmp eq i32 %25, 0
  %27 = zext i32 %25 to i64
  %28 = load i64, ptr %4, align 8
  %29 = select i1 %26, i64 %28, i64 %27
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %24, %22
  %32 = phi i32 [ -22, %22 ], [ %30, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_pas_init_image(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_scm_desc, align 8
  %6 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  store i32 2, ptr %5, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 1
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 2
  store i32 130, ptr %9, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3
  %11 = zext i32 %0 to i64
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 4
  store i32 2, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %13 = load ptr, ptr @__scm, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 3264, i32 noundef 0) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load ptr, ptr @__scm, align 4
  %19 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #13
  br label %58

20:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %15, ptr align 1 %1, i32 %2, i1 false)
  %21 = call fastcc i32 @qcom_scm_clk_enable()
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i32, ptr %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 1
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr @__scm, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = call fastcc i32 @__get_convention() #10
  switch i32 %29, label %35 [
    i32 2, label %30
    i32 3, label %30
    i32 1, label %33
  ]

30:                                               ; preds = %23, %23
  %31 = load i32, ptr @qcom_scm_convention, align 4
  %32 = call i32 @__scm_smc_call(ptr noundef %28, ptr noundef nonnull %5, i32 noundef %31, ptr noundef nonnull %6, i1 noundef zeroext false) #10
  br label %37

33:                                               ; preds = %23
  %34 = call i32 @scm_legacy_call(ptr noundef %28, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  br label %37

35:                                               ; preds = %23
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %37

37:                                               ; preds = %35, %33, %30
  %38 = phi i32 [ -22, %35 ], [ %34, %33 ], [ %32, %30 ]
  %39 = load ptr, ptr @__scm, align 4
  %40 = getelementptr inbounds %struct.qcom_scm, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  call void @clk_disable(ptr noundef %41) #10
  call void @clk_unprepare(ptr noundef %41) #10
  %42 = load ptr, ptr @__scm, align 4
  %43 = getelementptr inbounds %struct.qcom_scm, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  call void @clk_disable(ptr noundef %44) #10
  call void @clk_unprepare(ptr noundef %44) #10
  %45 = load ptr, ptr @__scm, align 4
  %46 = getelementptr inbounds %struct.qcom_scm, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  call void @clk_disable(ptr noundef %47) #10
  call void @clk_unprepare(ptr noundef %47) #10
  br label %48

48:                                               ; preds = %37, %20
  %49 = phi i32 [ %21, %20 ], [ %38, %37 ]
  %50 = load ptr, ptr @__scm, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %4, align 4
  call void @dma_free_attrs(ptr noundef %51, i32 noundef %2, ptr noundef nonnull %15, i32 noundef %52, i32 noundef 0) #10
  %53 = icmp eq i32 %49, 0
  %54 = zext i32 %49 to i64
  %55 = load i64, ptr %6, align 8
  %56 = select i1 %53, i64 %55, i64 %54
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %48, %17
  %59 = phi i32 [ %57, %48 ], [ -12, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qcom_scm_clk_enable() unnamed_addr #0 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = getelementptr inbounds %struct.qcom_scm, ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %0
  %7 = tail call i32 @clk_enable(ptr noundef %3) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load ptr, ptr @__scm, align 4
  %11 = getelementptr inbounds %struct.qcom_scm, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = tail call i32 @clk_enable(ptr noundef %12) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load ptr, ptr @__scm, align 4
  %20 = getelementptr inbounds %struct.qcom_scm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = tail call i32 @clk_enable(ptr noundef %21) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #10
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i32 [ %25, %27 ], [ %22, %18 ]
  %30 = load ptr, ptr @__scm, align 4
  %31 = getelementptr inbounds %struct.qcom_scm, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  tail call void @clk_disable(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi ptr [ %32, %28 ], [ %12, %15 ]
  %35 = phi i32 [ %29, %28 ], [ %16, %15 ]
  tail call void @clk_unprepare(ptr noundef %34) #10
  br label %36

36:                                               ; preds = %33, %9
  %37 = phi i32 [ %13, %9 ], [ %35, %33 ]
  %38 = load ptr, ptr @__scm, align 4
  %39 = getelementptr inbounds %struct.qcom_scm, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #10
  br label %41

41:                                               ; preds = %36, %6
  %42 = phi ptr [ %40, %36 ], [ %3, %6 ]
  %43 = phi i32 [ %37, %36 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %42) #10
  br label %44

44:                                               ; preds = %41, %24, %0
  %45 = phi i32 [ 0, %24 ], [ %4, %0 ], [ %43, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_pas_mem_setup(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qcom_scm_desc, align 8
  %5 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 96, i1 false), !annotation !9
  store i32 2, ptr %4, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 1
  store i32 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 2
  store i32 3, ptr %8, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3
  %10 = zext i32 %0 to i64
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 1
  %12 = zext i32 %1 to i64
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 2
  %14 = zext i32 %2 to i64
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %15, i8 0, i32 56, i1 false)
  %16 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 4
  store i32 2, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %17 = call fastcc i32 @qcom_scm_clk_enable()
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load ptr, ptr @__scm, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = call fastcc i32 @__get_convention() #10
  switch i32 %22, label %28 [
    i32 2, label %23
    i32 3, label %23
    i32 1, label %26
  ]

23:                                               ; preds = %19, %19
  %24 = load i32, ptr @qcom_scm_convention, align 4
  %25 = call i32 @__scm_smc_call(ptr noundef %21, ptr noundef nonnull %4, i32 noundef %24, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  br label %30

26:                                               ; preds = %19
  %27 = call i32 @scm_legacy_call(ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %30

28:                                               ; preds = %19
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %30

30:                                               ; preds = %28, %26, %23
  %31 = phi i32 [ -22, %28 ], [ %27, %26 ], [ %25, %23 ]
  %32 = load ptr, ptr @__scm, align 4
  %33 = getelementptr inbounds %struct.qcom_scm, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %34) #10
  call void @clk_unprepare(ptr noundef %34) #10
  %35 = load ptr, ptr @__scm, align 4
  %36 = getelementptr inbounds %struct.qcom_scm, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  call void @clk_disable(ptr noundef %37) #10
  call void @clk_unprepare(ptr noundef %37) #10
  %38 = load ptr, ptr @__scm, align 4
  %39 = getelementptr inbounds %struct.qcom_scm, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  call void @clk_disable(ptr noundef %40) #10
  call void @clk_unprepare(ptr noundef %40) #10
  %41 = icmp eq i32 %31, 0
  %42 = zext i32 %31 to i64
  %43 = load i64, ptr %5, align 8
  %44 = select i1 %41, i64 %43, i64 %42
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %30, %3
  %47 = phi i32 [ %45, %30 ], [ %17, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  %3 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store i32 2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %8 = zext i32 %0 to i64
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %10 = tail call fastcc i32 @qcom_scm_clk_enable()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load ptr, ptr @__scm, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @__get_convention() #10
  switch i32 %15, label %21 [
    i32 2, label %16
    i32 3, label %16
    i32 1, label %19
  ]

16:                                               ; preds = %12, %12
  %17 = load i32, ptr @qcom_scm_convention, align 4
  %18 = call i32 @__scm_smc_call(ptr noundef %14, ptr noundef nonnull %2, i32 noundef %17, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %23

19:                                               ; preds = %12
  %20 = call i32 @scm_legacy_call(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  br label %23

21:                                               ; preds = %12
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi i32 [ -22, %21 ], [ %20, %19 ], [ %18, %16 ]
  %25 = load ptr, ptr @__scm, align 4
  %26 = getelementptr inbounds %struct.qcom_scm, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @clk_disable(ptr noundef %27) #10
  call void @clk_unprepare(ptr noundef %27) #10
  %28 = load ptr, ptr @__scm, align 4
  %29 = getelementptr inbounds %struct.qcom_scm, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  call void @clk_disable(ptr noundef %30) #10
  call void @clk_unprepare(ptr noundef %30) #10
  %31 = load ptr, ptr @__scm, align 4
  %32 = getelementptr inbounds %struct.qcom_scm, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  call void @clk_disable(ptr noundef %33) #10
  call void @clk_unprepare(ptr noundef %33) #10
  %34 = icmp eq i32 %24, 0
  %35 = zext i32 %24 to i64
  %36 = load i64, ptr %3, align 8
  %37 = select i1 %34, i64 %36, i64 %35
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %23, %1
  %40 = phi i32 [ %38, %23 ], [ %10, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_pas_shutdown(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  %3 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store i32 2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 6, ptr %5, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %8 = zext i32 %0 to i64
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %10 = tail call fastcc i32 @qcom_scm_clk_enable()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load ptr, ptr @__scm, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @__get_convention() #10
  switch i32 %15, label %21 [
    i32 2, label %16
    i32 3, label %16
    i32 1, label %19
  ]

16:                                               ; preds = %12, %12
  %17 = load i32, ptr @qcom_scm_convention, align 4
  %18 = call i32 @__scm_smc_call(ptr noundef %14, ptr noundef nonnull %2, i32 noundef %17, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %23

19:                                               ; preds = %12
  %20 = call i32 @scm_legacy_call(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  br label %23

21:                                               ; preds = %12
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi i32 [ -22, %21 ], [ %20, %19 ], [ %18, %16 ]
  %25 = load ptr, ptr @__scm, align 4
  %26 = getelementptr inbounds %struct.qcom_scm, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @clk_disable(ptr noundef %27) #10
  call void @clk_unprepare(ptr noundef %27) #10
  %28 = load ptr, ptr @__scm, align 4
  %29 = getelementptr inbounds %struct.qcom_scm, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  call void @clk_disable(ptr noundef %30) #10
  call void @clk_unprepare(ptr noundef %30) #10
  %31 = load ptr, ptr @__scm, align 4
  %32 = getelementptr inbounds %struct.qcom_scm, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  call void @clk_disable(ptr noundef %33) #10
  call void @clk_unprepare(ptr noundef %33) #10
  %34 = icmp eq i32 %24, 0
  %35 = zext i32 %24 to i64
  %36 = load i64, ptr %3, align 8
  %37 = select i1 %34, i64 %36, i64 %35
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %23, %1
  %40 = phi i32 [ %38, %23 ], [ %10, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_pas_supported(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  %3 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store i32 2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 7, ptr %5, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %8 = zext i32 %0 to i64
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %10 = load ptr, ptr @__scm, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %11, i32 noundef 2, i32 noundef 7)
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load ptr, ptr @__scm, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call fastcc i32 @__get_convention() #10
  switch i32 %16, label %22 [
    i32 2, label %17
    i32 3, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %13, %13
  %18 = load i32, ptr @qcom_scm_convention, align 4
  %19 = call i32 @__scm_smc_call(ptr noundef %15, ptr noundef nonnull %2, i32 noundef %18, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %24

20:                                               ; preds = %13
  %21 = call i32 @scm_legacy_call(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  br label %24

22:                                               ; preds = %13
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %24

24:                                               ; preds = %22, %20, %17
  %25 = phi i32 [ -22, %22 ], [ %21, %20 ], [ %19, %17 ]
  %26 = icmp eq i32 %25, 0
  %27 = load i64, ptr %3, align 8
  %28 = icmp ne i64 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ %29, %24 ], [ false, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.qcom_scm_desc, align 8
  %5 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 96, i1 false)
  store i32 6, ptr %4, align 8
  %7 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %4, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds { i32, i32, i32, [4 x i8], [10 x i64], i32, [4 x i8] }, ptr %4, i32 0, i32 5
  store i32 2, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 2
  store i32 1, ptr %9, align 8
  %10 = tail call fastcc i32 @__get_convention()
  switch i32 %10, label %21 [
    i32 2, label %11
    i32 3, label %11
    i32 1, label %17
  ]

11:                                               ; preds = %3, %3
  %12 = shl i32 %1, 8
  %13 = and i32 %12, 65280
  %14 = and i32 %2, 255
  %15 = or i32 %14, %13
  %16 = or i32 %15, 33554432
  br label %23

17:                                               ; preds = %3
  %18 = shl i32 %1, 10
  %19 = and i32 %2, 1023
  %20 = or i32 %19, %18
  br label %23

21:                                               ; preds = %3
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %41

23:                                               ; preds = %17, %11
  %24 = phi i32 [ %20, %17 ], [ %16, %11 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3
  store i64 %25, ptr %26, align 8
  %27 = tail call fastcc i32 @__get_convention() #10
  switch i32 %27, label %33 [
    i32 2, label %28
    i32 3, label %28
    i32 1, label %31
  ]

28:                                               ; preds = %23, %23
  %29 = load i32, ptr @qcom_scm_convention, align 4
  %30 = call i32 @__scm_smc_call(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %29, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  br label %35

31:                                               ; preds = %23
  %32 = call i32 @scm_legacy_call(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %35

33:                                               ; preds = %23
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %35

35:                                               ; preds = %33, %31, %28
  %36 = phi i32 [ -22, %33 ], [ %32, %31 ], [ %30, %28 ]
  %37 = icmp eq i32 %36, 0
  %38 = load i64, ptr %5, align 8
  %39 = icmp ne i64 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br label %41

41:                                               ; preds = %35, %21
  %42 = phi i1 [ false, %21 ], [ %40, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_io_readl(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  %4 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  store i32 5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 2
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  %9 = zext i32 %0 to i64
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 4
  store i32 2, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %11 = load ptr, ptr @__scm, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @__get_convention() #10
  switch i32 %13, label %19 [
    i32 2, label %14
    i32 3, label %14
    i32 1, label %17
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, ptr @qcom_scm_convention, align 4
  %16 = call i32 @__scm_smc_call(ptr noundef %12, ptr noundef nonnull %3, i32 noundef %15, ptr noundef nonnull %4, i1 noundef zeroext true) #10
  br label %21

17:                                               ; preds = %2
  %18 = call i32 @scm_legacy_call_atomic(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br label %21

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %27

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %18, %17 ], [ %16, %14 ]
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, ptr %4, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %24, %21, %19
  %28 = phi i32 [ -22, %19 ], [ %22, %24 ], [ %22, %21 ]
  %29 = call i32 @llvm.smin.i32(i32 %28, i32 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_io_writel(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 96, i1 false), !annotation !9
  store i32 5, ptr %3, align 8
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 1
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 2
  store i32 2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %8, i8 0, i64 64, i1 false)
  %9 = zext i32 %0 to i64
  store i64 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 1
  %11 = zext i32 %1 to i64
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 4
  store i32 2, ptr %12, align 8
  %13 = load ptr, ptr @__scm, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @__get_convention() #10
  switch i32 %15, label %21 [
    i32 2, label %16
    i32 3, label %16
    i32 1, label %19
  ]

16:                                               ; preds = %2, %2
  %17 = load i32, ptr @qcom_scm_convention, align 4
  %18 = call i32 @__scm_smc_call(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %17, ptr noundef null, i1 noundef zeroext true) #10
  br label %23

19:                                               ; preds = %2
  %20 = call i32 @scm_legacy_call_atomic(ptr noundef %14, ptr noundef nonnull %3, ptr noundef null) #10
  br label %23

21:                                               ; preds = %2
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi i32 [ -22, %21 ], [ %20, %19 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_restore_sec_cfg_available() #0 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = load ptr, ptr %1, align 8
  %3 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %2, i32 noundef 12, i32 noundef 2)
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_restore_sec_cfg(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  %4 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 96, i1 false), !annotation !9
  store i32 12, ptr %3, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 1
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 2
  store i32 2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %9, i8 0, i64 64, i1 false)
  %10 = zext i32 %0 to i64
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3, i32 1
  %12 = zext i32 %1 to i64
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 4
  store i32 2, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %14 = load ptr, ptr @__scm, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call fastcc i32 @__get_convention() #10
  switch i32 %16, label %22 [
    i32 2, label %17
    i32 3, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %2, %2
  %18 = load i32, ptr @qcom_scm_convention, align 4
  %19 = call i32 @__scm_smc_call(ptr noundef %15, ptr noundef nonnull %3, i32 noundef %18, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  br label %24

20:                                               ; preds = %2
  %21 = call i32 @scm_legacy_call(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br label %24

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %31

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %21, %20 ], [ %19, %17 ]
  %26 = icmp eq i32 %25, 0
  %27 = zext i32 %25 to i64
  %28 = load i64, ptr %4, align 8
  %29 = select i1 %26, i64 %28, i64 %27
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %24, %22
  %32 = phi i32 [ -22, %22 ], [ %30, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_iommu_secure_ptbl_size(i32 noundef %0, ptr noundef writeonly %1) #0 {
  %3 = alloca %struct.qcom_scm_desc, align 8
  %4 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #10
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  store i32 12, ptr %3, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 1
  store i32 3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 2
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 3
  %9 = zext i32 %0 to i64
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %3, i32 0, i32 4
  store i32 2, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %11 = load ptr, ptr @__scm, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @__get_convention() #10
  switch i32 %13, label %19 [
    i32 2, label %14
    i32 3, label %14
    i32 1, label %17
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, ptr @qcom_scm_convention, align 4
  %16 = call i32 @__scm_smc_call(ptr noundef %12, ptr noundef nonnull %3, i32 noundef %15, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  br label %21

17:                                               ; preds = %2
  %18 = call i32 @scm_legacy_call(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br label %21

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %21

21:                                               ; preds = %19, %17, %14
  %22 = phi i32 [ -22, %19 ], [ %18, %17 ], [ %16, %14 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %4, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = icmp eq i32 %22, 0
  %29 = zext i32 %22 to i64
  %30 = getelementptr inbounds [3 x i64], ptr %4, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = select i1 %28, i64 %31, i64 %29
  %33 = trunc i64 %32 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_iommu_secure_ptbl_init(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 96, i1 false), !annotation !9
  store i32 12, ptr %4, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 1
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 1
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 2
  %12 = zext i32 %2 to i64
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %13, i8 0, i32 56, i1 false)
  %14 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 4
  store i32 2, ptr %14, align 8
  store i64 %0, ptr %8, align 8
  store i64 %10, ptr %9, align 8
  store i64 %12, ptr %11, align 8
  store i32 35, ptr %7, align 8
  %15 = load ptr, ptr @__scm, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = call fastcc i32 @__get_convention() #10
  switch i32 %17, label %23 [
    i32 2, label %18
    i32 3, label %18
    i32 1, label %21
  ]

18:                                               ; preds = %3, %3
  %19 = load i32, ptr @qcom_scm_convention, align 4
  %20 = call i32 @__scm_smc_call(ptr noundef %16, ptr noundef nonnull %4, i32 noundef %19, ptr noundef null, i1 noundef zeroext false) #10
  br label %25

21:                                               ; preds = %3
  %22 = call i32 @scm_legacy_call(ptr noundef %16, ptr noundef nonnull %4, ptr noundef null) #10
  br label %25

23:                                               ; preds = %3
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %29

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %22, %21 ], [ %20, %18 ]
  %27 = icmp eq i32 %26, -1
  %28 = select i1 %27, i32 0, i32 %26
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ -22, %23 ], [ %28, %25 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_mem_protect_video_var(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.qcom_scm_desc, align 8
  %6 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i32 96, i1 false), !annotation !9
  store i32 12, ptr %5, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 1
  store i32 8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 2
  store i32 4, ptr %9, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3
  %11 = zext i32 %0 to i64
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 1
  %13 = zext i32 %1 to i64
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 2
  %15 = zext i32 %2 to i64
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 3
  %17 = zext i32 %3 to i64
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %18, i8 0, i32 48, i1 false)
  %19 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 4
  store i32 2, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %20 = load ptr, ptr @__scm, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = call fastcc i32 @__get_convention() #10
  switch i32 %22, label %28 [
    i32 2, label %23
    i32 3, label %23
    i32 1, label %26
  ]

23:                                               ; preds = %4, %4
  %24 = load i32, ptr @qcom_scm_convention, align 4
  %25 = call i32 @__scm_smc_call(ptr noundef %21, ptr noundef nonnull %5, i32 noundef %24, ptr noundef nonnull %6, i1 noundef zeroext false) #10
  br label %30

26:                                               ; preds = %4
  %27 = call i32 @scm_legacy_call(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  br label %30

28:                                               ; preds = %4
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %37

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %27, %26 ], [ %25, %23 ]
  %32 = icmp eq i32 %31, 0
  %33 = zext i32 %31 to i64
  %34 = load i64, ptr %6, align 8
  %35 = select i1 %32, i64 %34, i64 %33
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %30, %28
  %38 = phi i32 [ -22, %28 ], [ %36, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #10
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_assign_mem(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.qcom_scm_desc, align 8
  %7 = alloca %struct.qcom_scm_res, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr %9, align 4
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #10
  %12 = shl i32 %11, 2
  %13 = mul i32 %4, 24
  %14 = add i32 %12, 63
  %15 = and i32 %14, -64
  %16 = add i32 %15, 64
  %17 = add i32 %13, 63
  %18 = and i32 %17, -64
  %19 = add i32 %16, %18
  %20 = load ptr, ptr @__scm, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @dma_alloc_attrs(ptr noundef %21, i32 noundef %19, ptr noundef nonnull %8, i32 noundef 3264, i32 noundef 0) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %112, label %24

24:                                               ; preds = %5
  %25 = call i32 @_find_next_bit_le(ptr noundef nonnull %9, i32 noundef 32, i32 noundef 0) #10
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %35

27:                                               ; preds = %27, %24
  %28 = phi i32 [ %33, %27 ], [ %25, %24 ]
  %29 = phi i32 [ %30, %27 ], [ 0, %24 ]
  %30 = add i32 %29, 1
  %31 = getelementptr i32, ptr %22, i32 %29
  store i32 %28, ptr %31, align 4
  %32 = add nsw i32 %28, 1
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %9, i32 noundef 32, i32 noundef %32) #10
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %27, label %35

35:                                               ; preds = %27, %24
  %36 = getelementptr i8, ptr %22, i32 %15
  %37 = load i32, ptr %8, align 4
  %38 = add i32 %37, %15
  %39 = zext i32 %0 to i64
  store i64 %39, ptr %36, align 8
  %40 = zext i32 %1 to i64
  %41 = getelementptr inbounds %struct.qcom_scm_mem_map_info, ptr %36, i32 0, i32 1
  store i64 %40, ptr %41, align 8
  %42 = add i32 %16, %37
  %43 = icmp eq i32 %4, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %35
  %45 = getelementptr i8, ptr %22, i32 64
  %46 = getelementptr i8, ptr %45, i32 %15
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i32 [ %61, %47 ], [ 0, %44 ]
  %49 = phi i32 [ %60, %47 ], [ 0, %44 ]
  %50 = phi ptr [ %62, %47 ], [ %46, %44 ]
  %51 = phi ptr [ %63, %47 ], [ %3, %44 ]
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %51, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.qcom_scm_current_perm_info, ptr %50, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.qcom_scm_current_perm_info, ptr %50, i32 0, i32 2
  store i64 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.qcom_scm_current_perm_info, ptr %50, i32 0, i32 3
  store i32 0, ptr %57, align 8
  %58 = load i32, ptr %51, align 4
  %59 = shl nuw i32 1, %58
  %60 = or i32 %59, %49
  %61 = add nuw i32 %48, 1
  %62 = getelementptr %struct.qcom_scm_current_perm_info, ptr %50, i32 1
  %63 = getelementptr %struct.qcom_scm_vmperm, ptr %51, i32 1
  %64 = icmp eq i32 %61, %4
  br i1 %64, label %65, label %47

65:                                               ; preds = %47
  %66 = load i32, ptr %8, align 4
  br label %67

67:                                               ; preds = %65, %35
  %68 = phi i32 [ %37, %35 ], [ %66, %65 ]
  %69 = phi i32 [ 0, %35 ], [ %60, %65 ]
  %70 = load ptr, ptr @__scm, align 4
  %71 = load ptr, ptr %70, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #10
  %72 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %72, i8 0, i32 96, i1 false) #10, !annotation !9
  store i32 12, ptr %6, align 8
  %73 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 1
  store i32 22, ptr %73, align 4
  store i32 4375, ptr %72, align 8
  %74 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3
  %75 = zext i32 %38 to i64
  store i64 %75, ptr %74, align 8
  %76 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 1
  store i64 16, ptr %76, align 8
  %77 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 2
  %78 = zext i32 %68 to i64
  store i64 %78, ptr %77, align 8
  %79 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 3
  %80 = zext i32 %12 to i64
  store i64 %80, ptr %79, align 8
  %81 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 4
  %82 = zext i32 %42 to i64
  store i64 %82, ptr %81, align 8
  %83 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 5
  %84 = zext i32 %13 to i64
  store i64 %84, ptr %83, align 8
  %85 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 6
  %86 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %85, i8 0, i64 32, i1 false) #10
  store i32 2, ptr %86, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #10, !annotation !9
  %87 = call fastcc i32 @__get_convention() #10
  switch i32 %87, label %93 [
    i32 2, label %88
    i32 3, label %88
    i32 1, label %91
  ]

88:                                               ; preds = %67, %67
  %89 = load i32, ptr @qcom_scm_convention, align 4
  %90 = call i32 @__scm_smc_call(ptr noundef %71, ptr noundef nonnull %6, i32 noundef %89, ptr noundef nonnull %7, i1 noundef zeroext false) #10
  br label %95

91:                                               ; preds = %67
  %92 = call i32 @scm_legacy_call(ptr noundef %71, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  br label %95

93:                                               ; preds = %67
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %102

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %92, %91 ], [ %90, %88 ]
  %97 = icmp eq i32 %96, 0
  %98 = zext i32 %96 to i64
  %99 = load i64, ptr %7, align 8
  %100 = select i1 %97, i64 %99, i64 %98
  %101 = trunc i64 %100 to i32
  br label %102

102:                                              ; preds = %95, %93
  %103 = phi i32 [ -22, %93 ], [ %101, %95 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #10
  %104 = load ptr, ptr @__scm, align 4
  %105 = load ptr, ptr %104, align 8
  %106 = load i32, ptr %8, align 4
  call void @dma_free_attrs(ptr noundef %105, i32 noundef %19, ptr noundef nonnull %22, i32 noundef %106, i32 noundef 0) #10
  %107 = icmp eq i32 %103, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr @__scm, align 4
  %110 = load ptr, ptr %109, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.1, i32 noundef %103) #13
  br label %112

111:                                              ; preds = %102
  store i32 %69, ptr %2, align 4
  br label %112

112:                                              ; preds = %111, %108, %5
  %113 = phi i32 [ -22, %108 ], [ 0, %111 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_ocmem_lock_available() #0 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = load ptr, ptr %1, align 8
  %3 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %2, i32 noundef 15, i32 noundef 1)
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_ocmem_lock(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 96, i1 false), !annotation !9
  store i32 15, ptr %5, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 2
  store i32 4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3
  %10 = zext i32 %0 to i64
  store i64 %10, ptr %9, align 8
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 1
  %12 = zext i32 %1 to i64
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 2
  %14 = zext i32 %2 to i64
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 3
  %16 = zext i32 %3 to i64
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds %struct.qcom_scm_desc, ptr %5, i32 0, i32 3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(52) %17, i8 0, i64 52, i1 false)
  %18 = load ptr, ptr @__scm, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = call fastcc i32 @__get_convention() #10
  switch i32 %20, label %26 [
    i32 2, label %21
    i32 3, label %21
    i32 1, label %24
  ]

21:                                               ; preds = %4, %4
  %22 = load i32, ptr @qcom_scm_convention, align 4
  %23 = call i32 @__scm_smc_call(ptr noundef %19, ptr noundef nonnull %5, i32 noundef %22, ptr noundef null, i1 noundef zeroext false) #10
  br label %28

24:                                               ; preds = %4
  %25 = call i32 @scm_legacy_call(ptr noundef %19, ptr noundef nonnull %5, ptr noundef null) #10
  br label %28

26:                                               ; preds = %4
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %28

28:                                               ; preds = %26, %24, %21
  %29 = phi i32 [ -22, %26 ], [ %25, %24 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_ocmem_unlock(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 96, i1 false), !annotation !9
  store i32 15, ptr %4, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 1
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 2
  store i32 3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3
  %9 = zext i32 %0 to i64
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 1
  %11 = zext i32 %1 to i64
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 2
  %13 = zext i32 %2 to i64
  store i64 %13, ptr %12, align 8
  %14 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(60) %14, i8 0, i64 60, i1 false)
  %15 = load ptr, ptr @__scm, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = call fastcc i32 @__get_convention() #10
  switch i32 %17, label %23 [
    i32 2, label %18
    i32 3, label %18
    i32 1, label %21
  ]

18:                                               ; preds = %3, %3
  %19 = load i32, ptr @qcom_scm_convention, align 4
  %20 = call i32 @__scm_smc_call(ptr noundef %16, ptr noundef nonnull %4, i32 noundef %19, ptr noundef null, i1 noundef zeroext false) #10
  br label %25

21:                                               ; preds = %3
  %22 = call i32 @scm_legacy_call(ptr noundef %16, ptr noundef nonnull %4, ptr noundef null) #10
  br label %25

23:                                               ; preds = %3
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %25

25:                                               ; preds = %23, %21, %18
  %26 = phi i32 [ -22, %23 ], [ %22, %21 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_ice_available() #0 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = load ptr, ptr %1, align 8
  %3 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %2, i32 noundef 16, i32 noundef 3)
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load ptr, ptr @__scm, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %6, i32 noundef 16, i32 noundef 4)
  br label %8

8:                                                ; preds = %4, %0
  %9 = phi i1 [ false, %0 ], [ %7, %4 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_ice_invalidate_key(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store i32 16, ptr %2, align 8
  %4 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %7 = zext i32 %0 to i64
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %8, align 8
  %9 = load ptr, ptr @__scm, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @__get_convention() #10
  switch i32 %11, label %17 [
    i32 2, label %12
    i32 3, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, ptr @qcom_scm_convention, align 4
  %14 = call i32 @__scm_smc_call(ptr noundef %10, ptr noundef nonnull %2, i32 noundef %13, ptr noundef null, i1 noundef zeroext false) #10
  br label %19

15:                                               ; preds = %1
  %16 = call i32 @scm_legacy_call(ptr noundef %10, ptr noundef nonnull %2, ptr noundef null) #10
  br label %19

17:                                               ; preds = %1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %19

19:                                               ; preds = %17, %15, %12
  %20 = phi i32 [ -22, %17 ], [ %16, %15 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_ice_set_key(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.qcom_scm_desc, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %6) #10
  %8 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %8, i8 0, i32 96, i1 false), !annotation !9
  store i32 16, ptr %6, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 1
  store i32 4, ptr %9, align 4
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 2
  store i32 133, ptr %10, align 8
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3
  %12 = zext i32 %0 to i64
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 2
  %14 = zext i32 %2 to i64
  store i64 %14, ptr %13, align 8
  %15 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 3
  %16 = zext i32 %3 to i64
  store i64 %16, ptr %15, align 8
  %17 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 4
  %18 = zext i32 %4 to i64
  store i64 %18, ptr %17, align 8
  %19 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %19, i8 0, i32 40, i1 false)
  %20 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 4
  store i32 2, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %21 = load ptr, ptr @__scm, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @dma_alloc_attrs(ptr noundef %22, i32 noundef %2, ptr noundef nonnull %7, i32 noundef 3264, i32 noundef 0) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.qcom_scm_desc, ptr %6, i32 0, i32 3, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %23, ptr align 1 %1, i32 %2, i1 false)
  %27 = load i32, ptr %7, align 4
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %26, align 8
  %29 = load ptr, ptr @__scm, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = call fastcc i32 @__get_convention() #10
  switch i32 %31, label %37 [
    i32 2, label %32
    i32 3, label %32
    i32 1, label %35
  ]

32:                                               ; preds = %25, %25
  %33 = load i32, ptr @qcom_scm_convention, align 4
  %34 = call i32 @__scm_smc_call(ptr noundef %30, ptr noundef nonnull %6, i32 noundef %33, ptr noundef null, i1 noundef zeroext false) #10
  br label %39

35:                                               ; preds = %25
  %36 = call i32 @scm_legacy_call(ptr noundef %30, ptr noundef nonnull %6, ptr noundef null) #10
  br label %39

37:                                               ; preds = %25
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %39

39:                                               ; preds = %37, %35, %32
  %40 = phi i32 [ -22, %37 ], [ %36, %35 ], [ %34, %32 ]
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %23, i8 0, i32 %2, i1 false) #10
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %23) #10, !srcloc !10
  %41 = load ptr, ptr @__scm, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %7, align 4
  call void @dma_free_attrs(ptr noundef %42, i32 noundef %2, ptr noundef nonnull %23, i32 noundef %43, i32 noundef 0) #10
  br label %44

44:                                               ; preds = %39, %5
  %45 = phi i32 [ %40, %39 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %6) #10
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_hdcp_available() #0 {
  %1 = tail call fastcc i32 @qcom_scm_clk_enable()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load ptr, ptr @__scm, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %5, i32 noundef 17, i32 noundef 1)
  %7 = load ptr, ptr @__scm, align 4
  %8 = getelementptr inbounds %struct.qcom_scm, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %10 = load ptr, ptr @__scm, align 4
  %11 = getelementptr inbounds %struct.qcom_scm, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  tail call void @clk_disable(ptr noundef %12) #10
  tail call void @clk_unprepare(ptr noundef %12) #10
  %13 = load ptr, ptr @__scm, align 4
  %14 = getelementptr inbounds %struct.qcom_scm, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  br label %16

16:                                               ; preds = %3, %0
  %17 = phi i1 [ %6, %3 ], [ true, %0 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_hdcp_req(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.qcom_scm_desc, align 8
  %5 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #10
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i32 96, i1 false), !annotation !9
  store i32 17, ptr %4, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 2
  store i32 10, ptr %8, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %0, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 1
  %13 = getelementptr inbounds %struct.qcom_scm_hdcp_req, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 2
  %17 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  store i64 %19, ptr %16, align 8
  %20 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 3
  %21 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %20, align 8
  %24 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 4
  %25 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, ptr %24, align 8
  %28 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 5
  %29 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %28, align 8
  %32 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 6
  %33 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = zext i32 %34 to i64
  store i64 %35, ptr %32, align 8
  %36 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 7
  %37 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 3, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %36, align 8
  %40 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 8
  %41 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %40, align 8
  %44 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 3, i32 9
  %45 = getelementptr %struct.qcom_scm_hdcp_req, ptr %0, i32 4, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, ptr %44, align 8
  %48 = getelementptr inbounds %struct.qcom_scm_desc, ptr %4, i32 0, i32 4
  store i32 2, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %49 = icmp ugt i32 %1, 5
  br i1 %49, label %77, label %50

50:                                               ; preds = %3
  %51 = tail call fastcc i32 @qcom_scm_clk_enable()
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load ptr, ptr @__scm, align 4
  %55 = load ptr, ptr %54, align 8
  %56 = tail call fastcc i32 @__get_convention() #10
  switch i32 %56, label %62 [
    i32 2, label %57
    i32 3, label %57
    i32 1, label %60
  ]

57:                                               ; preds = %53, %53
  %58 = load i32, ptr @qcom_scm_convention, align 4
  %59 = call i32 @__scm_smc_call(ptr noundef %55, ptr noundef nonnull %4, i32 noundef %58, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  br label %64

60:                                               ; preds = %53
  %61 = call i32 @scm_legacy_call(ptr noundef %55, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %64

62:                                               ; preds = %53
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %64

64:                                               ; preds = %62, %60, %57
  %65 = phi i32 [ -22, %62 ], [ %61, %60 ], [ %59, %57 ]
  %66 = load i64, ptr %5, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, ptr %2, align 4
  %68 = load ptr, ptr @__scm, align 4
  %69 = getelementptr inbounds %struct.qcom_scm, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  call void @clk_disable(ptr noundef %70) #10
  call void @clk_unprepare(ptr noundef %70) #10
  %71 = load ptr, ptr @__scm, align 4
  %72 = getelementptr inbounds %struct.qcom_scm, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  call void @clk_disable(ptr noundef %73) #10
  call void @clk_unprepare(ptr noundef %73) #10
  %74 = load ptr, ptr @__scm, align 4
  %75 = getelementptr inbounds %struct.qcom_scm, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  call void @clk_disable(ptr noundef %76) #10
  call void @clk_unprepare(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %64, %50, %3
  %78 = phi i32 [ %65, %64 ], [ -34, %3 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #10
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_qsmmu500_wait_safe_toggle(i1 noundef zeroext %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i32 96, i1 false), !annotation !9
  store i32 21, ptr %2, align 8
  %4 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 2, ptr %5, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(80) %7, i8 0, i64 64, i1 false)
  store i64 2, ptr %6, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3, i32 1
  %9 = zext i1 %0 to i64
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %10, align 8
  %11 = load ptr, ptr @__scm, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @__get_convention() #10
  switch i32 %13, label %19 [
    i32 2, label %14
    i32 3, label %14
    i32 1, label %17
  ]

14:                                               ; preds = %1, %1
  %15 = load i32, ptr @qcom_scm_convention, align 4
  %16 = call i32 @__scm_smc_call(ptr noundef %12, ptr noundef nonnull %2, i32 noundef %15, ptr noundef null, i1 noundef zeroext true) #10
  br label %21

17:                                               ; preds = %1
  %18 = call i32 @scm_legacy_call_atomic(ptr noundef %12, ptr noundef nonnull %2, ptr noundef null) #10
  br label %21

19:                                               ; preds = %1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %21

21:                                               ; preds = %19, %17, %14
  %22 = phi i32 [ -22, %19 ], [ %18, %17 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @qcom_scm_lmh_dcvsh_available() #0 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = load ptr, ptr %1, align 8
  %3 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %2, i32 noundef 19, i32 noundef 16)
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_lmh_profile_change(i32 noundef %0) #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store i32 19, ptr %2, align 8
  %4 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %7 = zext i32 %0 to i64
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %8, align 8
  %9 = load ptr, ptr @__scm, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @__get_convention() #10
  switch i32 %11, label %17 [
    i32 2, label %12
    i32 3, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %1, %1
  %13 = load i32, ptr @qcom_scm_convention, align 4
  %14 = call i32 @__scm_smc_call(ptr noundef %10, ptr noundef nonnull %2, i32 noundef %13, ptr noundef null, i1 noundef zeroext false) #10
  br label %19

15:                                               ; preds = %1
  %16 = call i32 @scm_legacy_call(ptr noundef %10, ptr noundef nonnull %2, ptr noundef null) #10
  br label %19

17:                                               ; preds = %1
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %19

19:                                               ; preds = %17, %15, %12
  %20 = phi i32 [ -22, %17 ], [ %16, %15 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_scm_lmh_dcvsh(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qcom_scm_desc, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #10
  %9 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %9, i8 0, i32 96, i1 false), !annotation !9
  store i32 19, ptr %8, align 8
  %10 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 1
  store i32 16, ptr %10, align 4
  %11 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 2
  store i32 21, ptr %11, align 8
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3, i32 1
  store i64 20, ptr %12, align 8
  %13 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3, i32 2
  store i64 %3, ptr %13, align 8
  %14 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3, i32 3
  %15 = zext i32 %4 to i64
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3, i32 4
  store i64 %5, ptr %16, align 8
  %17 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %17, i8 0, i32 40, i1 false)
  %18 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 4
  store i32 2, ptr %18, align 8
  %19 = load ptr, ptr @__scm, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef 20, ptr noundef nonnull %7, i32 noundef 3264, i32 noundef 0) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.qcom_scm_desc, ptr %8, i32 0, i32 3
  store i32 %0, ptr %21, align 4
  %25 = getelementptr i32, ptr %21, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr i32, ptr %21, i32 2
  store i32 %1, ptr %26, align 4
  %27 = getelementptr i32, ptr %21, i32 3
  store i32 1, ptr %27, align 4
  %28 = getelementptr i32, ptr %21, i32 4
  store i32 %2, ptr %28, align 4
  %29 = load i32, ptr %7, align 4
  %30 = zext i32 %29 to i64
  store i64 %30, ptr %24, align 8
  %31 = load ptr, ptr @__scm, align 4
  %32 = load ptr, ptr %31, align 8
  %33 = call fastcc i32 @__get_convention() #10
  switch i32 %33, label %39 [
    i32 2, label %34
    i32 3, label %34
    i32 1, label %37
  ]

34:                                               ; preds = %23, %23
  %35 = load i32, ptr @qcom_scm_convention, align 4
  %36 = call i32 @__scm_smc_call(ptr noundef %32, ptr noundef nonnull %8, i32 noundef %35, ptr noundef null, i1 noundef zeroext false) #10
  br label %41

37:                                               ; preds = %23
  %38 = call i32 @scm_legacy_call(ptr noundef %32, ptr noundef nonnull %8, ptr noundef null) #10
  br label %41

39:                                               ; preds = %23
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %41

41:                                               ; preds = %39, %37, %34
  %42 = phi i32 [ -22, %39 ], [ %38, %37 ], [ %36, %34 ]
  %43 = load ptr, ptr @__scm, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %7, align 4
  call void @dma_free_attrs(ptr noundef %44, i32 noundef 20, ptr noundef nonnull %21, i32 noundef %45, i32 noundef 0) #10
  br label %46

46:                                               ; preds = %41, %6
  %47 = phi i32 [ %42, %41 ], [ -12, %6 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i32 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @qcom_scm_is_available() #7 {
  %1 = load ptr, ptr @__scm, align 4
  %2 = icmp ne ptr %1, null
  ret i1 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_scm_init() #8 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_scm_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__get_convention() unnamed_addr #0 {
  %1 = alloca %struct.qcom_scm_desc, align 8
  %2 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %1) #10
  %3 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i32 96, i1 false)
  store i32 6, ptr %1, align 8
  %4 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %1, i32 0, i32 1
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %1, i32 0, i32 2
  store i32 1, ptr %5, align 8
  %6 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %1, i32 0, i32 4
  store i64 33555969, ptr %6, align 8
  %7 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %1, i32 0, i32 5
  store i32 2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !9
  %8 = load i32, ptr @qcom_scm_convention, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46, !prof !11

10:                                               ; preds = %0
  %11 = call i32 @__scm_smc_call(ptr noundef null, ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull %2, i1 noundef zeroext true) #10
  %12 = icmp eq i32 %11, 0
  %13 = load i64, ptr %2, align 8
  %14 = icmp eq i64 %13, 1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @__scm, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi ptr [ %22, %19 ], [ null, %16 ]
  %25 = call i32 @of_device_is_compatible(ptr noundef %24, ptr noundef nonnull @.str.3) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = call i32 @__scm_smc_call(ptr noundef null, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %2, i1 noundef zeroext true) #10
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %2, align 8
  %31 = icmp eq i64 %30, 1
  %32 = select i1 %29, i1 %31, i1 false
  %33 = select i1 %32, i32 2, i32 1
  br label %34

34:                                               ; preds = %27, %23, %10
  %35 = phi i32 [ 3, %10 ], [ 3, %23 ], [ %33, %27 ]
  %36 = phi ptr [ @.str.6, %10 ], [ @.str.5, %23 ], [ @.str.6, %27 ]
  %37 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @scm_query_lock) #10
  %38 = load i32, ptr @qcom_scm_convention, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  store i32 %35, ptr @qcom_scm_convention, align 4
  %41 = getelementptr [4 x ptr], ptr @qcom_scm_convention_names, i32 0, i32 %35
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %42, ptr noundef nonnull %36) #13
  br label %44

44:                                               ; preds = %40, %34
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @scm_query_lock, i32 noundef %37) #10
  %45 = load i32, ptr @qcom_scm_convention, align 4
  br label %46

46:                                               ; preds = %44, %0
  %47 = phi i32 [ %45, %44 ], [ %8, %0 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %1) #10
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scm_smc_call(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scm_legacy_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scm_legacy_call_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_scm_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.resource, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 72, i32 noundef 3520) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #10, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #10, !annotation !9
  %12 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #10
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #10
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %8
  %18 = call i32 @of_address_to_resource(ptr noundef nonnull %14, i32 noundef 0, ptr noundef nonnull %3) #10
  call void @of_node_put(ptr noundef nonnull %14) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = call i32 @of_property_read_u32_index(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %4) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %86

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4
  %26 = load i32, ptr %4, align 4
  %27 = add i32 %26, %25
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %9, align 8
  br label %29

29:                                               ; preds = %24, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  br label %32

30:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #10
  %31 = icmp slt i32 %18, 0
  br i1 %31, label %86, label %32

32:                                               ; preds = %30, %29
  %33 = call ptr @of_device_get_match_data(ptr noundef %5) #10
  %34 = ptrtoint ptr %33 to i32
  %35 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.13) #10
  %36 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %39, label %86, label %40

40:                                               ; preds = %38
  %41 = and i32 %34, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #13
  %44 = ptrtoint ptr %35 to i32
  br label %86

45:                                               ; preds = %40
  store ptr null, ptr %36, align 4
  br label %46

46:                                               ; preds = %45, %32
  %47 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.15) #10
  %48 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 2
  store ptr %47, ptr %48, align 8
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = icmp eq ptr %47, inttoptr (i32 -517 to ptr)
  br i1 %51, label %86, label %52

52:                                               ; preds = %50
  %53 = and i32 %34, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16) #13
  %56 = ptrtoint ptr %47 to i32
  br label %86

57:                                               ; preds = %52
  store ptr null, ptr %48, align 8
  br label %58

58:                                               ; preds = %57, %46
  %59 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.17) #10
  %60 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 3
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = icmp eq ptr %59, inttoptr (i32 -517 to ptr)
  br i1 %63, label %86, label %64

64:                                               ; preds = %62
  %65 = and i32 %34, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18) #13
  %68 = ptrtoint ptr %59 to i32
  br label %86

69:                                               ; preds = %64
  store ptr null, ptr %60, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 4
  store ptr @qcom_scm_pas_reset_ops, ptr %71, align 8
  %72 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 4, i32 8
  store i32 1, ptr %72, align 8
  %73 = load ptr, ptr %10, align 8
  %74 = getelementptr inbounds %struct.qcom_scm, ptr %6, i32 0, i32 4, i32 5
  store ptr %73, ptr %74, align 4
  %75 = call i32 @devm_reset_controller_register(ptr noundef %5, ptr noundef %71) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load ptr, ptr %36, align 4
  %79 = call i32 @clk_set_rate(ptr noundef %78, i32 noundef 2147483647) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  store ptr %6, ptr @__scm, align 4
  store ptr %5, ptr %6, align 8
  %82 = call fastcc i32 @__get_convention()
  %83 = load i8, ptr @download_mode, align 1, !range !12
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call fastcc void @qcom_scm_set_download_mode(i1 noundef zeroext true)
  br label %86

86:                                               ; preds = %85, %81, %77, %70, %67, %62, %55, %50, %43, %38, %30, %23, %1
  %87 = phi i32 [ %44, %43 ], [ %56, %55 ], [ %68, %67 ], [ -12, %1 ], [ %18, %30 ], [ %75, %70 ], [ %79, %77 ], [ 0, %85 ], [ 0, %81 ], [ %21, %23 ], [ -517, %38 ], [ -517, %50 ], [ -517, %62 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qcom_scm_shutdown(ptr nocapture noundef readnone %0) #0 {
  %2 = load i8, ptr @download_mode, align 1, !range !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @qcom_scm_set_download_mode(i1 noundef zeroext false)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qcom_scm_set_download_mode(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  %3 = load ptr, ptr @__scm, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc zeroext i1 @__qcom_scm_is_call_available(ptr noundef %4, i32 noundef 1, i32 noundef 16)
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i32 96, i1 false) #10
  store i32 1, ptr %2, align 8
  %8 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %2, i32 0, i32 1
  store i32 16, ptr %8, align 4
  store i32 2, ptr %7, align 8
  %9 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %2, i32 0, i32 4
  store i64 16, ptr %9, align 8
  %10 = getelementptr inbounds { i32, i32, i32, [4 x i8], <{ i64, [9 x i64] }>, i32, [4 x i8] }, ptr %2, i32 0, i32 5
  store i32 2, ptr %10, align 8
  %11 = select i1 %0, i64 16, i64 0
  %12 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3, i32 1
  store i64 %11, ptr %12, align 8
  %13 = load ptr, ptr @__scm, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc i32 @__get_convention() #10
  switch i32 %15, label %21 [
    i32 2, label %16
    i32 3, label %16
    i32 1, label %19
  ]

16:                                               ; preds = %6, %6
  %17 = load i32, ptr @qcom_scm_convention, align 4
  %18 = call i32 @__scm_smc_call(ptr noundef %14, ptr noundef nonnull %2, i32 noundef %17, ptr noundef null, i1 noundef zeroext true) #10
  br label %23

19:                                               ; preds = %6
  %20 = call i32 @scm_legacy_call_atomic(ptr noundef %14, ptr noundef nonnull %2, ptr noundef null) #10
  br label %23

21:                                               ; preds = %6
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi i32 [ -22, %21 ], [ %20, %19 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  br label %36

25:                                               ; preds = %1
  %26 = load ptr, ptr @__scm, align 4
  %27 = getelementptr inbounds %struct.qcom_scm, ptr %26, i32 0, i32 5
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = trunc i64 %28 to i32
  %32 = select i1 %0, i32 16, i32 0
  %33 = tail call i32 @qcom_scm_io_writel(i32 noundef %31, i32 noundef %32)
  br label %36

34:                                               ; preds = %25
  %35 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20) #13
  br label %42

36:                                               ; preds = %30, %23
  %37 = phi i32 [ %24, %23 ], [ %33, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @__scm, align 4
  %41 = load ptr, ptr %40, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef %37) #13
  br label %42

42:                                               ; preds = %39, %36, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_scm_pas_reset_assert(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @__qcom_scm_pas_mss_reset(i1 noundef zeroext true)
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_scm_pas_reset_deassert(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @__qcom_scm_pas_mss_reset(i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__qcom_scm_pas_mss_reset(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca %struct.qcom_scm_desc, align 8
  %3 = alloca %struct.qcom_scm_res, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store i32 2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 1
  store i32 10, ptr %5, align 4
  %6 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 2
  store i32 2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 3
  %8 = zext i1 %0 to i64
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.qcom_scm_desc, ptr %2, i32 0, i32 4
  store i32 2, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %10 = load ptr, ptr @__scm, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call fastcc i32 @__get_convention() #10
  switch i32 %12, label %18 [
    i32 2, label %13
    i32 3, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %1, %1
  %14 = load i32, ptr @qcom_scm_convention, align 4
  %15 = call i32 @__scm_smc_call(ptr noundef %11, ptr noundef nonnull %2, i32 noundef %14, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %20

16:                                               ; preds = %1
  %17 = call i32 @scm_legacy_call(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  br label %20

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %27

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %17, %16 ], [ %15, %13 ]
  %22 = icmp eq i32 %21, 0
  %23 = zext i32 %21 to i64
  %24 = load i64, ptr %3, align 8
  %25 = select i1 %22, i64 %24, i64 %23
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %20, %18
  %28 = phi i32 [ -22, %18 ], [ %26, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %2) #10
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2148814577, i64 2148814600, i64 2148814632, i64 2148814664, i64 2148814702, i64 2148814732}
!9 = !{!"auto-init"}
!10 = !{i64 2148984475}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
