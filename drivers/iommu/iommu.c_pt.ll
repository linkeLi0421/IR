; ModuleID = '/llk/IR/drivers/iommu/iommu.c_pt.bc'
source_filename = "../drivers/iommu/iommu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_get_group_resv_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_get_group_resv_regions\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_get_group_resv_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_get_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_get_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_get_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_get_iommudata:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_get_iommudata\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_get_iommudata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_set_iommudata:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_set_iommudata\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_set_iommudata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_for_each_dev\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_get:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_get\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_ref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_ref_get\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_ref_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_put:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_put\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_register_device_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_register_device_fault_handler\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_register_device_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_unregister_device_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_unregister_device_fault_handler\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_unregister_device_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_report_device_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_report_device_fault\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_report_device_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_page_response:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_page_response\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_page_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_group_id\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_group_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_device_group\22\09\09\09\09\09"
module asm "__kstrtabns_generic_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_device_group\22\09\09\09\09\09"
module asm "__kstrtabns_pci_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_device_group\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_device_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bus_set_iommu:\09\09\09\09\09"
module asm "\09.asciz \09\22bus_set_iommu\22\09\09\09\09\09"
module asm "__kstrtabns_bus_set_iommu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_present:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_present\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_capable\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_set_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_set_fault_handler\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_set_fault_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_domain_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_domain_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_domain_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_domain_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_domain_free\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_domain_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_attach_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_uapi_cache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_uapi_cache_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_uapi_cache_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_uapi_sva_bind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_uapi_sva_bind_gpasid\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_uapi_sva_bind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_sva_unbind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_sva_unbind_gpasid\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_sva_unbind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_uapi_sva_unbind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_uapi_sva_unbind_gpasid\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_uapi_sva_unbind_gpasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_detach_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_get_domain_for_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_get_domain_for_dev\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_get_domain_for_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_attach_group:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_attach_group\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_attach_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_detach_group:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_detach_group\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_detach_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_iova_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_iova_to_phys\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_iova_to_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_map:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_map\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_map_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_map_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_map_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_unmap_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_unmap_fast\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_unmap_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_map_sg\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_report_iommu_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22report_iommu_fault\22\09\09\09\09\09"
module asm "__kstrtabns_report_iommu_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_enable_nesting:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_enable_nesting\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_enable_nesting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_set_pgtable_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_set_pgtable_quirks\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_set_pgtable_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_iommu_put_resv_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_iommu_put_resv_regions\22\09\09\09\09\09"
module asm "__kstrtabns_generic_iommu_put_resv_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_alloc_resv_region:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_alloc_resv_region\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_alloc_resv_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_default_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_default_passthrough\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_default_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_fwspec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_fwspec_init\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_fwspec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_fwspec_free:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_fwspec_free\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_fwspec_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_fwspec_add_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_fwspec_add_ids\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_fwspec_add_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_dev_enable_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_dev_enable_feature\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_dev_enable_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_dev_disable_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_dev_disable_feature\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_dev_disable_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_dev_feature_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_dev_feature_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_dev_feature_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_aux_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_aux_attach_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_aux_attach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_aux_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_aux_detach_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_aux_detach_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_aux_get_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_aux_get_pasid\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_aux_get_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_sva_bind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_sva_bind_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_sva_bind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_sva_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_sva_unbind_device\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_sva_unbind_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_sva_get_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_sva_get_pasid\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_sva_get_pasid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_group_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.sysfs_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iommu_group = type { %struct.kobject, ptr, %struct.list_head, %struct.mutex, %struct.blocking_notifier_head, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.iommu_resv_region = type { %struct.list_head, i32, i32, i32, i32 }
%struct.group_device = type { %struct.list_head, ptr, ptr }
%struct.iommu_fault_param = type { ptr, ptr, %struct.list_head, %struct.mutex }
%struct.iommu_fault = type { i32, i32, %union.anon.61 }
%union.anon.61 = type { %struct.iommu_fault_page_request, [16 x i8] }
%struct.iommu_fault_page_request = type { i32, i32, i32, i32, i64, [2 x i64] }
%struct.iommu_fault_event = type { %struct.iommu_fault, %struct.list_head }
%struct.iommu_page_response = type { i32, i32, i32, i32, i32, i32 }
%struct.group_for_pci_data = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.iommu_cache_invalidate_info = type { i32, i32, i8, i8, [6 x i8], %union.anon.62 }
%union.anon.62 = type { %struct.iommu_inv_addr_info }
%struct.iommu_inv_addr_info = type { i32, i32, i64, i64, i64, i64 }
%struct.iommu_gpasid_bind_data = type { i32, i32, i32, i32, i64, i64, i64, i64, [8 x i8], %union.anon.63 }
%union.anon.63 = type { %struct.iommu_gpasid_bind_data_vtd }
%struct.iommu_gpasid_bind_data_vtd = type { i64, i32, i32 }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_iommu__243_156_iommu_subsys_init4 = internal global ptr @iommu_subsys_init, section ".initcall4.init", align 4
@.str = private unnamed_addr constant [22 x i8] c"drivers/iommu/iommu.c\00", align 1
@iommu_device_lock = internal global %struct.spinlock zeroinitializer, align 4
@iommu_device_list = internal global %struct.list_head { ptr @iommu_device_list, ptr @iommu_device_list }, align 4
@__kstrtab_iommu_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_register to i32), ptr @__kstrtab_iommu_device_register, ptr @__kstrtabns_iommu_device_register }, section "___ksymtab_gpl+iommu_device_register", align 4
@__kstrtab_iommu_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_unregister to i32), ptr @__kstrtab_iommu_device_unregister, ptr @__kstrtabns_iommu_device_unregister }, section "___ksymtab_gpl+iommu_device_unregister", align 4
@__setup_str_iommu_set_def_domain_type = internal constant [18 x i8] c"iommu.passthrough\00", section ".init.rodata", align 1
@__setup_iommu_set_def_domain_type = internal global %struct.obs_kernel_param { ptr @__setup_str_iommu_set_def_domain_type, ptr @iommu_set_def_domain_type, i32 1 }, section ".init.setup", align 4
@__setup_str_iommu_dma_setup = internal constant [13 x i8] c"iommu.strict\00", section ".init.rodata", align 1
@__setup_iommu_dma_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_iommu_dma_setup, ptr @iommu_dma_setup, i32 1 }, section ".init.setup", align 4
@iommu_dma_strict = internal global i8 1, section ".data..read_mostly", align 1
@iommu_def_domain_type = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__kstrtab_iommu_get_group_resv_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_get_group_resv_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_get_group_resv_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_get_group_resv_regions to i32), ptr @__kstrtab_iommu_get_group_resv_regions, ptr @__kstrtabns_iommu_get_group_resv_regions }, section "___ksymtab_gpl+iommu_get_group_resv_regions", align 4
@iommu_group_kset = internal unnamed_addr global ptr null, align 4
@iommu_group_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"&group->mutex\00", align 1
@iommu_group_alloc.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"&(&group->notifier)->rwsem\00", align 1
@iommu_group_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@iommu_group_ktype = internal global %struct.kobj_type { ptr @iommu_group_release, ptr @iommu_group_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@iommu_group_attr_reserved_regions = internal global %struct.iommu_group_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @iommu_group_show_resv_regions, ptr null }, align 4
@iommu_group_attr_type = internal global %struct.iommu_group_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @iommu_group_show_type, ptr @iommu_group_store_type }, align 4
@__kstrtab_iommu_group_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_alloc to i32), ptr @__kstrtab_iommu_group_alloc, ptr @__kstrtabns_iommu_group_alloc }, section "___ksymtab_gpl+iommu_group_alloc", align 4
@__kstrtab_iommu_group_get_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_get_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_get_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_get_by_id to i32), ptr @__kstrtab_iommu_group_get_by_id, ptr @__kstrtabns_iommu_group_get_by_id }, section "___ksymtab_gpl+iommu_group_get_by_id", align 4
@__kstrtab_iommu_group_get_iommudata = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_get_iommudata = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_get_iommudata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_get_iommudata to i32), ptr @__kstrtab_iommu_group_get_iommudata, ptr @__kstrtabns_iommu_group_get_iommudata }, section "___ksymtab_gpl+iommu_group_get_iommudata", align 4
@__kstrtab_iommu_group_set_iommudata = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_set_iommudata = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_set_iommudata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_set_iommudata to i32), ptr @__kstrtab_iommu_group_set_iommudata, ptr @__kstrtabns_iommu_group_set_iommudata }, section "___ksymtab_gpl+iommu_group_set_iommudata", align 4
@iommu_group_attr_name = internal global %struct.iommu_group_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @iommu_group_show_name, ptr null }, align 4
@__kstrtab_iommu_group_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_set_name to i32), ptr @__kstrtab_iommu_group_set_name, ptr @__kstrtabns_iommu_group_set_name }, section "___ksymtab_gpl+iommu_group_set_name", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"iommu_group\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Adding to iommu group %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to add to iommu group %d: %d\0A\00", align 1
@__kstrtab_iommu_group_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_add_device to i32), ptr @__kstrtab_iommu_group_add_device, ptr @__kstrtabns_iommu_group_add_device }, section "___ksymtab_gpl+iommu_group_add_device", align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Removing from iommu group %d\0A\00", align 1
@__kstrtab_iommu_group_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_remove_device to i32), ptr @__kstrtab_iommu_group_remove_device, ptr @__kstrtabns_iommu_group_remove_device }, section "___ksymtab_gpl+iommu_group_remove_device", align 4
@__kstrtab_iommu_group_for_each_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_for_each_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_for_each_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_for_each_dev to i32), ptr @__kstrtab_iommu_group_for_each_dev, ptr @__kstrtabns_iommu_group_for_each_dev }, section "___ksymtab_gpl+iommu_group_for_each_dev", align 4
@__kstrtab_iommu_group_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_get = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_get to i32), ptr @__kstrtab_iommu_group_get, ptr @__kstrtabns_iommu_group_get }, section "___ksymtab_gpl+iommu_group_get", align 4
@__kstrtab_iommu_group_ref_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_ref_get = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_ref_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_ref_get to i32), ptr @__kstrtab_iommu_group_ref_get, ptr @__kstrtabns_iommu_group_ref_get }, section "___ksymtab_gpl+iommu_group_ref_get", align 4
@__kstrtab_iommu_group_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_put = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_put to i32), ptr @__kstrtab_iommu_group_put, ptr @__kstrtabns_iommu_group_put }, section "___ksymtab_gpl+iommu_group_put", align 4
@__kstrtab_iommu_group_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_register_notifier to i32), ptr @__kstrtab_iommu_group_register_notifier, ptr @__kstrtabns_iommu_group_register_notifier }, section "___ksymtab_gpl+iommu_group_register_notifier", align 4
@__kstrtab_iommu_group_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_unregister_notifier to i32), ptr @__kstrtab_iommu_group_unregister_notifier, ptr @__kstrtabns_iommu_group_unregister_notifier }, section "___ksymtab_gpl+iommu_group_unregister_notifier", align 4
@iommu_register_device_fault_handler.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"&param->fault_param->lock\00", align 1
@__kstrtab_iommu_register_device_fault_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_register_device_fault_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_register_device_fault_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_register_device_fault_handler to i32), ptr @__kstrtab_iommu_register_device_fault_handler, ptr @__kstrtabns_iommu_register_device_fault_handler }, section "___ksymtab_gpl+iommu_register_device_fault_handler", align 4
@__kstrtab_iommu_unregister_device_fault_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_unregister_device_fault_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_unregister_device_fault_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_unregister_device_fault_handler to i32), ptr @__kstrtab_iommu_unregister_device_fault_handler, ptr @__kstrtabns_iommu_unregister_device_fault_handler }, section "___ksymtab_gpl+iommu_unregister_device_fault_handler", align 4
@__kstrtab_iommu_report_device_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_report_device_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_report_device_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_report_device_fault to i32), ptr @__kstrtab_iommu_report_device_fault, ptr @__kstrtabns_iommu_report_device_fault }, section "___ksymtab_gpl+iommu_report_device_fault", align 4
@iommu_page_response._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.iommu_page_response = private unnamed_addr constant [20 x i8] c"iommu_page_response\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"no pending PRQ, drop response\0A\00", align 1
@__kstrtab_iommu_page_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_page_response = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_page_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_page_response to i32), ptr @__kstrtab_iommu_page_response, ptr @__kstrtabns_iommu_page_response }, section "___ksymtab_gpl+iommu_page_response", align 4
@__kstrtab_iommu_group_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_group_id = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_group_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_group_id to i32), ptr @__kstrtab_iommu_group_id, ptr @__kstrtabns_iommu_group_id }, section "___ksymtab_gpl+iommu_group_id", align 4
@__kstrtab_generic_device_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_device_group = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_device_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_device_group to i32), ptr @__kstrtab_generic_device_group, ptr @__kstrtabns_generic_device_group }, section "___ksymtab_gpl+generic_device_group", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_pci_device_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_device_group = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_device_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_device_group to i32), ptr @__kstrtab_pci_device_group, ptr @__kstrtabns_pci_device_group }, section "___ksymtab_gpl+pci_device_group", align 4
@__kstrtab_fsl_mc_device_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_device_group = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_device_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_device_group to i32), ptr @__kstrtab_fsl_mc_device_group, ptr @__kstrtabns_fsl_mc_device_group }, section "___ksymtab_gpl+fsl_mc_device_group", align 4
@__kstrtab_bus_set_iommu = external dso_local constant [0 x i8], align 1
@__kstrtabns_bus_set_iommu = external dso_local constant [0 x i8], align 1
@__ksymtab_bus_set_iommu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bus_set_iommu to i32), ptr @__kstrtab_bus_set_iommu, ptr @__kstrtabns_bus_set_iommu }, section "___ksymtab_gpl+bus_set_iommu", align 4
@__kstrtab_iommu_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_present = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_present to i32), ptr @__kstrtab_iommu_present, ptr @__kstrtabns_iommu_present }, section "___ksymtab_gpl+iommu_present", align 4
@__kstrtab_iommu_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_capable to i32), ptr @__kstrtab_iommu_capable, ptr @__kstrtabns_iommu_capable }, section "___ksymtab_gpl+iommu_capable", align 4
@__kstrtab_iommu_set_fault_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_set_fault_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_set_fault_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_set_fault_handler to i32), ptr @__kstrtab_iommu_set_fault_handler, ptr @__kstrtabns_iommu_set_fault_handler }, section "___ksymtab_gpl+iommu_set_fault_handler", align 4
@__kstrtab_iommu_domain_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_domain_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_domain_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_domain_alloc to i32), ptr @__kstrtab_iommu_domain_alloc, ptr @__kstrtabns_iommu_domain_alloc }, section "___ksymtab_gpl+iommu_domain_alloc", align 4
@__kstrtab_iommu_domain_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_domain_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_domain_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_domain_free to i32), ptr @__kstrtab_iommu_domain_free, ptr @__kstrtabns_iommu_domain_free }, section "___ksymtab_gpl+iommu_domain_free", align 4
@__kstrtab_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_attach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_attach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_attach_device to i32), ptr @__kstrtab_iommu_attach_device, ptr @__kstrtabns_iommu_attach_device }, section "___ksymtab_gpl+iommu_attach_device", align 4
@__kstrtab_iommu_uapi_cache_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_uapi_cache_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_uapi_cache_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_uapi_cache_invalidate to i32), ptr @__kstrtab_iommu_uapi_cache_invalidate, ptr @__kstrtabns_iommu_uapi_cache_invalidate }, section "___ksymtab_gpl+iommu_uapi_cache_invalidate", align 4
@__kstrtab_iommu_uapi_sva_bind_gpasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_uapi_sva_bind_gpasid = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_uapi_sva_bind_gpasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_uapi_sva_bind_gpasid to i32), ptr @__kstrtab_iommu_uapi_sva_bind_gpasid, ptr @__kstrtabns_iommu_uapi_sva_bind_gpasid }, section "___ksymtab_gpl+iommu_uapi_sva_bind_gpasid", align 4
@__kstrtab_iommu_sva_unbind_gpasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_sva_unbind_gpasid = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_sva_unbind_gpasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_sva_unbind_gpasid to i32), ptr @__kstrtab_iommu_sva_unbind_gpasid, ptr @__kstrtabns_iommu_sva_unbind_gpasid }, section "___ksymtab_gpl+iommu_sva_unbind_gpasid", align 4
@__kstrtab_iommu_uapi_sva_unbind_gpasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_uapi_sva_unbind_gpasid = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_uapi_sva_unbind_gpasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_uapi_sva_unbind_gpasid to i32), ptr @__kstrtab_iommu_uapi_sva_unbind_gpasid, ptr @__kstrtabns_iommu_uapi_sva_unbind_gpasid }, section "___ksymtab_gpl+iommu_uapi_sva_unbind_gpasid", align 4
@__kstrtab_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_detach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_detach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_detach_device to i32), ptr @__kstrtab_iommu_detach_device, ptr @__kstrtabns_iommu_detach_device }, section "___ksymtab_gpl+iommu_detach_device", align 4
@__kstrtab_iommu_get_domain_for_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_get_domain_for_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_get_domain_for_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_get_domain_for_dev to i32), ptr @__kstrtab_iommu_get_domain_for_dev, ptr @__kstrtabns_iommu_get_domain_for_dev }, section "___ksymtab_gpl+iommu_get_domain_for_dev", align 4
@__kstrtab_iommu_attach_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_attach_group = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_attach_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_attach_group to i32), ptr @__kstrtab_iommu_attach_group, ptr @__kstrtabns_iommu_attach_group }, section "___ksymtab_gpl+iommu_attach_group", align 4
@__kstrtab_iommu_detach_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_detach_group = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_detach_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_detach_group to i32), ptr @__kstrtab_iommu_detach_group, ptr @__kstrtabns_iommu_detach_group }, section "___ksymtab_gpl+iommu_detach_group", align 4
@__kstrtab_iommu_iova_to_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_iova_to_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_iova_to_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_iova_to_phys to i32), ptr @__kstrtab_iommu_iova_to_phys, ptr @__kstrtabns_iommu_iova_to_phys }, section "___ksymtab_gpl+iommu_iova_to_phys", align 4
@__kstrtab_iommu_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_map = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_map to i32), ptr @__kstrtab_iommu_map, ptr @__kstrtabns_iommu_map }, section "___ksymtab_gpl+iommu_map", align 4
@__kstrtab_iommu_map_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_map_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_map_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_map_atomic to i32), ptr @__kstrtab_iommu_map_atomic, ptr @__kstrtabns_iommu_map_atomic }, section "___ksymtab_gpl+iommu_map_atomic", align 4
@__kstrtab_iommu_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_unmap to i32), ptr @__kstrtab_iommu_unmap, ptr @__kstrtabns_iommu_unmap }, section "___ksymtab_gpl+iommu_unmap", align 4
@__kstrtab_iommu_unmap_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_unmap_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_unmap_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_unmap_fast to i32), ptr @__kstrtab_iommu_unmap_fast, ptr @__kstrtabns_iommu_unmap_fast }, section "___ksymtab_gpl+iommu_unmap_fast", align 4
@__kstrtab_iommu_map_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_map_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_map_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_map_sg to i32), ptr @__kstrtab_iommu_map_sg, ptr @__kstrtabns_iommu_map_sg }, section "___ksymtab_gpl+iommu_map_sg", align 4
@__kstrtab_report_iommu_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_report_iommu_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_report_iommu_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @report_iommu_fault to i32), ptr @__kstrtab_report_iommu_fault, ptr @__kstrtabns_report_iommu_fault }, section "___ksymtab_gpl+report_iommu_fault", align 4
@__initcall__kmod_iommu__250_2770_iommu_init1 = internal global ptr @iommu_init, section ".initcall1.init", align 4
@__kstrtab_iommu_enable_nesting = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_enable_nesting = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_enable_nesting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_enable_nesting to i32), ptr @__kstrtab_iommu_enable_nesting, ptr @__kstrtabns_iommu_enable_nesting }, section "___ksymtab_gpl+iommu_enable_nesting", align 4
@__kstrtab_iommu_set_pgtable_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_set_pgtable_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_set_pgtable_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_set_pgtable_quirks to i32), ptr @__kstrtab_iommu_set_pgtable_quirks, ptr @__kstrtabns_iommu_set_pgtable_quirks }, section "___ksymtab_gpl+iommu_set_pgtable_quirks", align 4
@__kstrtab_generic_iommu_put_resv_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_iommu_put_resv_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_iommu_put_resv_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_iommu_put_resv_regions to i32), ptr @__kstrtab_generic_iommu_put_resv_regions, ptr @__kstrtabns_generic_iommu_put_resv_regions }, section "___ksymtab+generic_iommu_put_resv_regions", align 4
@__kstrtab_iommu_alloc_resv_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_alloc_resv_region = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_alloc_resv_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_alloc_resv_region to i32), ptr @__kstrtab_iommu_alloc_resv_region, ptr @__kstrtabns_iommu_alloc_resv_region }, section "___ksymtab_gpl+iommu_alloc_resv_region", align 4
@iommu_cmd_line = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__kstrtab_iommu_default_passthrough = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_default_passthrough = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_default_passthrough = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_default_passthrough to i32), ptr @__kstrtab_iommu_default_passthrough, ptr @__kstrtabns_iommu_default_passthrough }, section "___ksymtab_gpl+iommu_default_passthrough", align 4
@__kstrtab_iommu_fwspec_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_fwspec_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_fwspec_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_fwspec_init to i32), ptr @__kstrtab_iommu_fwspec_init, ptr @__kstrtabns_iommu_fwspec_init }, section "___ksymtab_gpl+iommu_fwspec_init", align 4
@__kstrtab_iommu_fwspec_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_fwspec_free = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_fwspec_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_fwspec_free to i32), ptr @__kstrtab_iommu_fwspec_free, ptr @__kstrtabns_iommu_fwspec_free }, section "___ksymtab_gpl+iommu_fwspec_free", align 4
@__kstrtab_iommu_fwspec_add_ids = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_fwspec_add_ids = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_fwspec_add_ids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_fwspec_add_ids to i32), ptr @__kstrtab_iommu_fwspec_add_ids, ptr @__kstrtabns_iommu_fwspec_add_ids }, section "___ksymtab_gpl+iommu_fwspec_add_ids", align 4
@__kstrtab_iommu_dev_enable_feature = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_dev_enable_feature = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_dev_enable_feature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_dev_enable_feature to i32), ptr @__kstrtab_iommu_dev_enable_feature, ptr @__kstrtabns_iommu_dev_enable_feature }, section "___ksymtab_gpl+iommu_dev_enable_feature", align 4
@__kstrtab_iommu_dev_disable_feature = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_dev_disable_feature = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_dev_disable_feature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_dev_disable_feature to i32), ptr @__kstrtab_iommu_dev_disable_feature, ptr @__kstrtabns_iommu_dev_disable_feature }, section "___ksymtab_gpl+iommu_dev_disable_feature", align 4
@__kstrtab_iommu_dev_feature_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_dev_feature_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_dev_feature_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_dev_feature_enabled to i32), ptr @__kstrtab_iommu_dev_feature_enabled, ptr @__kstrtabns_iommu_dev_feature_enabled }, section "___ksymtab_gpl+iommu_dev_feature_enabled", align 4
@__kstrtab_iommu_aux_attach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_aux_attach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_aux_attach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_aux_attach_device to i32), ptr @__kstrtab_iommu_aux_attach_device, ptr @__kstrtabns_iommu_aux_attach_device }, section "___ksymtab_gpl+iommu_aux_attach_device", align 4
@__kstrtab_iommu_aux_detach_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_aux_detach_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_aux_detach_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_aux_detach_device to i32), ptr @__kstrtab_iommu_aux_detach_device, ptr @__kstrtabns_iommu_aux_detach_device }, section "___ksymtab_gpl+iommu_aux_detach_device", align 4
@__kstrtab_iommu_aux_get_pasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_aux_get_pasid = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_aux_get_pasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_aux_get_pasid to i32), ptr @__kstrtab_iommu_aux_get_pasid, ptr @__kstrtabns_iommu_aux_get_pasid }, section "___ksymtab_gpl+iommu_aux_get_pasid", align 4
@__kstrtab_iommu_sva_bind_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_sva_bind_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_sva_bind_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_sva_bind_device to i32), ptr @__kstrtab_iommu_sva_bind_device, ptr @__kstrtabns_iommu_sva_bind_device }, section "___ksymtab_gpl+iommu_sva_bind_device", align 4
@__kstrtab_iommu_sva_unbind_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_sva_unbind_device = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_sva_unbind_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_sva_unbind_device to i32), ptr @__kstrtab_iommu_sva_unbind_device, ptr @__kstrtabns_iommu_sva_unbind_device }, section "___ksymtab_gpl+iommu_sva_unbind_device", align 4
@__kstrtab_iommu_sva_get_pasid = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_sva_get_pasid = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_sva_get_pasid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_sva_get_pasid to i32), ptr @__kstrtab_iommu_sva_get_pasid, ptr @__kstrtabns_iommu_sva_get_pasid }, section "___ksymtab_gpl+iommu_sva_get_pasid", align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"\016iommu: Default domain type: %s %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"(set via kernel command line)\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"\016iommu: DMA domain TLB invalidation policy: %s mode %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"lazy\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Blocked\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Passthrough\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Unmanaged\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Translated\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@iommu_group_get_for_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iommu_group_sysfs_ops = internal constant %struct.sysfs_ops { ptr @iommu_group_attr_show, ptr @iommu_group_attr_store }, align 4
@.str.26 = private unnamed_addr constant [17 x i8] c"reserved_regions\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"0x%016llx 0x%016llx %s\0A\00", align 1
@iommu_group_resv_type_string = internal unnamed_addr constant [5 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.31], align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"direct-relaxable\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"blocked\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"identity\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"unmanaged\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"DMA\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"DMA-FQ\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"DMA-FQ\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@iommu_group_store_type._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.iommu_group_store_type = private unnamed_addr constant [23 x i8] c"iommu_group_store_type\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"\013iommu: Cannot change default domain: Group has more than one device\0A\00", align 1
@iommu_group_store_type._rs.44 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.45 = private unnamed_addr constant [42 x i8] c"\013iommu: Device is still bound to driver\0A\00", align 1
@iommu_change_dev_def_domain._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.iommu_change_dev_def_domain = private unnamed_addr constant [28 x i8] c"iommu_change_dev_def_domain\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Group not assigned to default domain\0A\00", align 1
@iommu_change_dev_def_domain._rs.47 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [62 x i8] c"Cannot change default domain: Group has more than one device\0A\00", align 1
@iommu_change_dev_def_domain._rs.49 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [55 x i8] c"Cannot change default domain: Device has been changed\0A\00", align 1
@iommu_change_dev_def_domain._rs.51 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [31 x i8] c"Device cannot be in %s domain\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__tracepoint_add_device_to_group = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_remove_device_from_group = external dso_local global %struct.tracepoint, align 4
@.str.57 = private unnamed_addr constant [101 x i8] c"Device needs domain type %s, but device %s in the same iommu group requires type %s - using default\0A\00", align 1
@.str.60 = private unnamed_addr constant [66 x i8] c"\013iommu: unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%x\0A\00", align 1
@__tracepoint_map = external dso_local global %struct.tracepoint, align 4
@.str.61 = private unnamed_addr constant [59 x i8] c"\013iommu: unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%x\0A\00", align 1
@__tracepoint_unmap = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_io_page_fault = external dso_local global %struct.tracepoint, align 4
@.str.62 = private unnamed_addr constant [13 x i8] c"iommu_groups\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@dev_iommu_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"&param->lock\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__tracepoint_attach_device_to_domain = external dso_local global %struct.tracepoint, align 4
@__tracepoint_detach_device_from_domain = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [67 x ptr] [ptr @__initcall__kmod_iommu__243_156_iommu_subsys_init4, ptr @__initcall__kmod_iommu__250_2770_iommu_init1, ptr @__ksymtab_bus_set_iommu, ptr @__ksymtab_fsl_mc_device_group, ptr @__ksymtab_generic_device_group, ptr @__ksymtab_generic_iommu_put_resv_regions, ptr @__ksymtab_iommu_alloc_resv_region, ptr @__ksymtab_iommu_attach_device, ptr @__ksymtab_iommu_attach_group, ptr @__ksymtab_iommu_aux_attach_device, ptr @__ksymtab_iommu_aux_detach_device, ptr @__ksymtab_iommu_aux_get_pasid, ptr @__ksymtab_iommu_capable, ptr @__ksymtab_iommu_default_passthrough, ptr @__ksymtab_iommu_detach_device, ptr @__ksymtab_iommu_detach_group, ptr @__ksymtab_iommu_dev_disable_feature, ptr @__ksymtab_iommu_dev_enable_feature, ptr @__ksymtab_iommu_dev_feature_enabled, ptr @__ksymtab_iommu_device_register, ptr @__ksymtab_iommu_device_unregister, ptr @__ksymtab_iommu_domain_alloc, ptr @__ksymtab_iommu_domain_free, ptr @__ksymtab_iommu_enable_nesting, ptr @__ksymtab_iommu_fwspec_add_ids, ptr @__ksymtab_iommu_fwspec_free, ptr @__ksymtab_iommu_fwspec_init, ptr @__ksymtab_iommu_get_domain_for_dev, ptr @__ksymtab_iommu_get_group_resv_regions, ptr @__ksymtab_iommu_group_add_device, ptr @__ksymtab_iommu_group_alloc, ptr @__ksymtab_iommu_group_for_each_dev, ptr @__ksymtab_iommu_group_get, ptr @__ksymtab_iommu_group_get_by_id, ptr @__ksymtab_iommu_group_get_iommudata, ptr @__ksymtab_iommu_group_id, ptr @__ksymtab_iommu_group_put, ptr @__ksymtab_iommu_group_ref_get, ptr @__ksymtab_iommu_group_register_notifier, ptr @__ksymtab_iommu_group_remove_device, ptr @__ksymtab_iommu_group_set_iommudata, ptr @__ksymtab_iommu_group_set_name, ptr @__ksymtab_iommu_group_unregister_notifier, ptr @__ksymtab_iommu_iova_to_phys, ptr @__ksymtab_iommu_map, ptr @__ksymtab_iommu_map_atomic, ptr @__ksymtab_iommu_map_sg, ptr @__ksymtab_iommu_page_response, ptr @__ksymtab_iommu_present, ptr @__ksymtab_iommu_register_device_fault_handler, ptr @__ksymtab_iommu_report_device_fault, ptr @__ksymtab_iommu_set_fault_handler, ptr @__ksymtab_iommu_set_pgtable_quirks, ptr @__ksymtab_iommu_sva_bind_device, ptr @__ksymtab_iommu_sva_get_pasid, ptr @__ksymtab_iommu_sva_unbind_device, ptr @__ksymtab_iommu_sva_unbind_gpasid, ptr @__ksymtab_iommu_uapi_cache_invalidate, ptr @__ksymtab_iommu_uapi_sva_bind_gpasid, ptr @__ksymtab_iommu_uapi_sva_unbind_gpasid, ptr @__ksymtab_iommu_unmap, ptr @__ksymtab_iommu_unmap_fast, ptr @__ksymtab_iommu_unregister_device_fault_handler, ptr @__ksymtab_pci_device_group, ptr @__ksymtab_report_iommu_fault, ptr @__setup_iommu_dma_setup, ptr @__setup_iommu_set_def_domain_type], section "llvm.metadata"
@switch.table.iommu_domain_type_str = private unnamed_addr constant [12 x ptr] [ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.24, ptr @.str.22, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.25, ptr @.str.24], align 4
@switch.table.iommu_group_show_type = private unnamed_addr constant [12 x ptr] [ptr @.str.34, ptr @.str.36, ptr @.str.33, ptr @.str.37, ptr @.str.35, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.38], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iommu_subsys_init() #0 section ".init.text" {
  %1 = load i32, ptr @iommu_cmd_line, align 4
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @iommu_def_domain_type, align 4
  br label %7

6:                                                ; preds = %0
  store i32 3, ptr @iommu_def_domain_type, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = phi i32 [ %5, %4 ], [ 3, %6 ]
  %9 = icmp ne i32 %8, 4
  %10 = load i8, ptr @iommu_dma_strict, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 11, ptr @iommu_def_domain_type, align 4
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ 11, %13 ], [ %8, %7 ]
  %16 = tail call fastcc ptr @iommu_domain_type_str(i32 noundef %15)
  %17 = select i1 %3, ptr @.str.17, ptr @.str.16
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %16, ptr noundef nonnull %17) #21
  %19 = load i32, ptr @iommu_def_domain_type, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load i8, ptr @iommu_dma_strict, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr @.str.20, ptr @.str.19
  %25 = load i32, ptr @iommu_cmd_line, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.17, ptr @.str.16
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %24, ptr noundef nonnull %28) #21
  br label %30

30:                                               ; preds = %21, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_device_register(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #1 {
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call zeroext i1 @is_module_address(i32 noundef %4) #22
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %1, i32 0, i32 40
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #22
  br label %23

11:                                               ; preds = %6, %3
  %12 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = icmp eq ptr %2, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iommu_device, ptr %0, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %11
  tail call void @_raw_spin_lock(ptr noundef nonnull @iommu_device_lock) #22
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iommu_device_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @iommu_device_list, i32 0, i32 1), align 4
  store ptr @iommu_device_list, ptr %0, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %0, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %21 = load i16, ptr @iommu_device_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @iommu_device_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i32 [ -22, %10 ], [ 0, %18 ]
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_module_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_device_unregister(ptr nocapture noundef %0) #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @iommu_device_lock) #22
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %6 = load i16, ptr @iommu_device_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @iommu_device_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_probe_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @__iommu_probe_device(ptr noundef %0, ptr noundef null)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %129

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @kobject_get(ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %91

20:                                               ; preds = %12
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.bus_type, ptr %21, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %21, @pci_bus_type
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 833
  %27 = load i40, ptr %26, align 1
  %28 = and i40 %27, 134217728
  %29 = icmp eq i40 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25, %20
  %31 = getelementptr inbounds %struct.iommu_ops, ptr %23, i32 0, i32 38
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef %0) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %30
  %38 = load i32, ptr @iommu_def_domain_type, align 4
  br label %39

39:                                               ; preds = %37, %34, %25
  %40 = phi i32 [ %38, %37 ], [ %35, %34 ], [ 3, %25 ]
  %41 = load ptr, ptr %2, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %88, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bus_type, ptr %41, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.iommu_ops, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr %49(i32 noundef %40) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %44, align 4
  %54 = getelementptr inbounds %struct.iommu_domain, ptr %50, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  store i32 %40, ptr %50, align 4
  %55 = load ptr, ptr %44, align 4
  %56 = getelementptr inbounds %struct.iommu_ops, ptr %55, i32 0, i32 39
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.iommu_domain, ptr %50, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = and i32 %40, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.iommu_ops, ptr %53, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef nonnull %50) #22
  br label %64

64:                                               ; preds = %61, %47, %43
  %65 = icmp eq i32 %40, 3
  br i1 %65, label %88, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %44, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.iommu_ops, ptr %67, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = tail call ptr %71(i32 noundef 3) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %44, align 4
  %76 = getelementptr inbounds %struct.iommu_domain, ptr %72, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store i32 3, ptr %72, align 4
  %77 = load ptr, ptr %44, align 4
  %78 = getelementptr inbounds %struct.iommu_ops, ptr %77, i32 0, i32 39
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.iommu_domain, ptr %72, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.iommu_ops, ptr %75, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef nonnull %72) #22
  br label %88

83:                                               ; preds = %52
  store ptr %50, ptr %17, align 4
  %84 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 10
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  store ptr %50, ptr %84, align 4
  br label %88

88:                                               ; preds = %87, %74, %69, %66, %64, %39
  %89 = load ptr, ptr %17, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %120, label %91

91:                                               ; preds = %88, %83, %12
  %92 = phi ptr [ %89, %88 ], [ %50, %83 ], [ %18, %12 ]
  %93 = getelementptr inbounds %struct.iommu_domain, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.iommu_ops, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %117, label %98, !prof !9

98:                                               ; preds = %91
  %99 = tail call i32 %96(ptr noundef nonnull %92, ptr noundef %0) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = tail call ptr @llvm.thread.pointer() #22
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %116 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %120

117:                                              ; preds = %98, %91
  %118 = phi i32 [ -19, %91 ], [ %99, %98 ]
  tail call void @mutex_unlock(ptr noundef %16) #22
  %119 = load ptr, ptr %13, align 4
  tail call void @kobject_put(ptr noundef %119) #22
  br label %127

120:                                              ; preds = %115, %104, %101, %88
  %121 = tail call fastcc i32 @iommu_create_device_direct_mappings(ptr noundef nonnull %10, ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %16) #22
  %122 = load ptr, ptr %13, align 4
  tail call void @kobject_put(ptr noundef %122) #22
  %123 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 15
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  tail call void %124(ptr noundef %0) #22
  br label %129

127:                                              ; preds = %117, %8
  %128 = phi i32 [ %118, %117 ], [ -19, %8 ]
  tail call void @iommu_release_device(ptr noundef %0)
  br label %129

129:                                              ; preds = %127, %126, %120, %1
  %130 = phi i32 [ 0, %126 ], [ 0, %120 ], [ %6, %1 ], [ %128, %127 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_probe_device(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 40) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %12
  tail call void @__mutex_init(ptr noundef nonnull %14, ptr noundef nonnull @.str.63, ptr noundef nonnull @dev_iommu_get.__key) #22
  store ptr %14, ptr %9, align 4
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 40
  %19 = load ptr, ptr %18, align 4
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %19) #22
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %0) #22
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %85, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.dev_iommu, ptr %27, i32 0, i32 4
  store ptr %24, ptr %28, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.bus_type, ptr %29, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.iommu_group, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @kobject_get(ptr noundef %37) #22
  br label %60

39:                                               ; preds = %26
  %40 = icmp eq ptr %31, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.iommu_ops, ptr %31, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr %43(ptr noundef %0) #22
  %45 = icmp eq ptr %44, null
  %46 = load i1, ptr @iommu_group_get_for_dev.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %50, label %49, !prof !9

49:                                               ; preds = %41
  br i1 %45, label %63, label %51

50:                                               ; preds = %41
  store i1 true, ptr @iommu_group_get_for_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1598, i32 noundef 9, ptr noundef null) #22
  br label %63

51:                                               ; preds = %49
  %52 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %60, label %53

53:                                               ; preds = %51
  %54 = tail call i32 @iommu_group_add_device(ptr noundef nonnull %44, ptr noundef %0) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.iommu_group, ptr %44, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void @kobject_put(ptr noundef %58) #22
  %59 = inttoptr i32 %54 to ptr
  br label %60

60:                                               ; preds = %56, %53, %51, %35
  %61 = phi ptr [ %59, %56 ], [ %33, %35 ], [ %44, %51 ], [ %44, %53 ]
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %50, %49, %39
  %64 = phi ptr [ %61, %60 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %49 ], [ inttoptr (i32 -22 to ptr), %50 ]
  %65 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %0) #22
  br label %85

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.iommu_group, ptr %61, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void @kobject_put(ptr noundef %69) #22
  %70 = icmp eq ptr %1, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.iommu_group, ptr %61, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.iommu_group, ptr %61, i32 0, i32 11
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  store ptr %76, ptr %80, align 4
  store ptr %1, ptr %76, align 4
  %82 = getelementptr inbounds %struct.iommu_group, ptr %61, i32 0, i32 11, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %76, ptr %81, align 4
  br label %83

83:                                               ; preds = %79, %75, %71, %67
  %84 = tail call i32 @iommu_device_link(ptr noundef %24, ptr noundef %0) #22
  br label %100

85:                                               ; preds = %63, %21
  %86 = phi ptr [ %64, %63 ], [ %24, %21 ]
  %87 = ptrtoint ptr %86 to i32
  %88 = load ptr, ptr %18, align 4
  tail call void @module_put(ptr noundef %88) #22
  br label %89

89:                                               ; preds = %85, %17
  %90 = phi i32 [ %87, %85 ], [ -22, %17 ]
  %91 = load ptr, ptr %9, align 4
  store ptr null, ptr %9, align 4
  %92 = getelementptr inbounds %struct.dev_iommu, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.iommu_fwspec, ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void @fwnode_handle_put(ptr noundef %97) #22
  %98 = load ptr, ptr %92, align 4
  tail call void @kfree(ptr noundef %98) #22
  br label %99

99:                                               ; preds = %95, %89
  tail call void @kfree(ptr noundef %91) #22
  br label %100

100:                                              ; preds = %99, %83, %12, %2
  %101 = phi i32 [ %90, %99 ], [ 0, %83 ], [ -19, %2 ], [ -12, %12 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_group_get(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @kobject_get(ptr noundef %7) #22
  br label %9

9:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_attach_device(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !prof !9

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #22
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %26 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %11, %8, %2
  %28 = phi i32 [ -19, %2 ], [ %9, %8 ], [ 0, %11 ], [ 0, %14 ], [ 0, %25 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_group_put(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kobject_put(ptr noundef %5) #22
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iommu_create_device_direct_mappings(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %113, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %113, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #22, !srcloc !16
  unreachable

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #22, !range !17
  %18 = shl nuw i32 1, %17
  store volatile ptr %3, ptr %3, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bus_type, ptr %21, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %95, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.iommu_ops, ptr %23, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %95, label %29

29:                                               ; preds = %25
  call void %27(ptr noundef %1, ptr noundef nonnull %3) #22
  %30 = load ptr, ptr %3, align 8
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %95, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 1
  %34 = add i32 %18, -1
  %35 = sub i32 0, %18
  br label %36

36:                                               ; preds = %92, %32
  %37 = phi ptr [ %30, %32 ], [ %93, %92 ]
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr inbounds %struct.iommu_ops, ptr %38, i32 0, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  call void %40(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %37) #22
  br label %43

43:                                               ; preds = %42, %36
  %44 = getelementptr inbounds %struct.iommu_resv_region, ptr %37, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %34
  %47 = and i32 %46, %35
  %48 = getelementptr inbounds %struct.iommu_resv_region, ptr %37, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %46, %49
  %51 = and i32 %50, %35
  %52 = getelementptr inbounds %struct.iommu_resv_region, ptr %37, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 1
  %55 = icmp ugt i32 %47, %51
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %92, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.iommu_resv_region, ptr %37, i32 0, i32 3
  br label %59

59:                                               ; preds = %88, %57
  %60 = phi i32 [ 0, %57 ], [ %89, %88 ]
  %61 = phi i32 [ %47, %57 ], [ %90, %88 ]
  %62 = icmp eq i32 %61, %51
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %5, align 4
  switch i32 %64, label %65 [
    i32 4, label %70
    i32 0, label %73
  ]

65:                                               ; preds = %63
  %66 = load ptr, ptr %33, align 4
  %67 = getelementptr inbounds %struct.iommu_ops, ptr %66, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef nonnull %5, i32 noundef %61) #22
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi i32 [ %69, %65 ], [ %61, %63 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %63
  %74 = add i32 %60, %18
  br label %88

75:                                               ; preds = %70, %59
  %76 = icmp eq i32 %60, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %75
  %78 = sub i32 %61, %60
  %79 = load i32, ptr %58, align 4
  %80 = load ptr, ptr %33, align 4
  %81 = call fastcc i32 @__iommu_map(ptr noundef nonnull %5, i32 noundef %78, i32 noundef %78, i32 noundef %60, i32 noundef %79, i32 noundef 3264) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.iommu_ops, ptr %80, i32 0, i32 10
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  call void %85(ptr noundef nonnull %5, i32 noundef %78, i32 noundef %60) #22
  br label %88

88:                                               ; preds = %87, %83, %75, %73
  %89 = phi i32 [ 0, %75 ], [ %74, %73 ], [ 0, %83 ], [ 0, %87 ]
  %90 = add i32 %61, %18
  %91 = icmp ugt i32 %90, %51
  br i1 %91, label %92, label %59

92:                                               ; preds = %88, %43
  %93 = load ptr, ptr %37, align 4
  %94 = icmp eq ptr %93, %3
  br i1 %94, label %95, label %36

95:                                               ; preds = %92, %29, %25, %16
  %96 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.iommu_ops, ptr %97, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  call void %99(ptr noundef nonnull %5) #22
  br label %102

102:                                              ; preds = %101, %95, %77
  %103 = phi i32 [ 0, %95 ], [ 0, %101 ], [ %81, %77 ]
  %104 = load ptr, ptr %20, align 4
  %105 = getelementptr inbounds %struct.bus_type, ptr %104, i32 0, i32 19
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.iommu_ops, ptr %106, i32 0, i32 20
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  call void %110(ptr noundef %1, ptr noundef nonnull %3) #22
  br label %113

113:                                              ; preds = %112, %108, %102, %7, %2
  %114 = phi i32 [ 0, %7 ], [ 0, %2 ], [ %103, %102 ], [ %103, %108 ], [ %103, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_release_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @iommu_device_unlink(ptr noundef %11, ptr noundef %0) #22
  %12 = getelementptr inbounds %struct.iommu_ops, ptr %9, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #22
  tail call void @iommu_group_remove_device(ptr noundef %0)
  %14 = getelementptr inbounds %struct.iommu_ops, ptr %9, i32 0, i32 40
  %15 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %15) #22
  %16 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %17 = getelementptr inbounds %struct.dev_iommu, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.iommu_fwspec, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @fwnode_handle_put(ptr noundef %22) #22
  %23 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %23) #22
  br label %24

24:                                               ; preds = %20, %5
  tail call void @kfree(ptr noundef %16) #22
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_group_remove_device(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %7) #21
  %8 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 4
  %9 = tail call i32 @blocking_notifier_call_chain(ptr noundef %8, i32 noundef 2, ptr noundef %0) #22
  %10 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 2
  br label %12

12:                                               ; preds = %17, %5
  %13 = phi ptr [ %11, %5 ], [ %14, %17 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef %10) #22
  br label %51

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.group_device, ptr %14, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %12

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @mutex_unlock(ptr noundef %10) #22
  %26 = icmp eq ptr %14, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.group_device, ptr %14, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void @sysfs_remove_link(ptr noundef %29, ptr noundef %31) #22
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.6) #22
  %32 = load i32, ptr %6, align 4
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_remove_device_from_group, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = tail call ptr @llvm.thread.pointer() #22
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %47 = tail call i32 @__traceiter_remove_device_from_group(ptr noundef null, i32 noundef %32, ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %48

48:                                               ; preds = %46, %35, %27
  %49 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %49) #22
  tail call void @kfree(ptr noundef nonnull %14) #22
  store ptr null, ptr %2, align 8
  %50 = load ptr, ptr %28, align 4
  tail call void @kobject_put(ptr noundef %50) #22
  br label %51

51:                                               ; preds = %48, %21, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iommu_set_def_domain_type(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !annotation !20
  %3 = call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = load i32, ptr @iommu_cmd_line, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr @iommu_cmd_line, align 4
  %10 = select i1 %7, i32 3, i32 4
  store i32 %10, ptr @iommu_def_domain_type, align 4
  br label %11

11:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iommu_dma_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @iommu_dma_strict) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i32, ptr @iommu_cmd_line, align 4
  %6 = or i32 %5, 2
  store i32 %6, ptr @iommu_cmd_line, align 4
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @iommu_set_dma_strict() local_unnamed_addr #4 {
  store i8 1, ptr @iommu_dma_strict, align 1
  %1 = load i32, ptr @iommu_def_domain_type, align 4
  %2 = icmp eq i32 %1, 11
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 3, ptr @iommu_def_domain_type, align 4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_get_group_resv_regions(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %153, %2
  %10 = phi ptr [ %6, %2 ], [ %11, %153 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %154, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %7, align 4
  %14 = getelementptr inbounds %struct.group_device, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bus_type, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %139, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.iommu_ops, ptr %19, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %139, label %25

25:                                               ; preds = %21
  call void %23(ptr noundef %15, ptr noundef nonnull %4) #22
  %26 = load ptr, ptr %4, align 8
  %27 = icmp eq ptr %26, %4
  br i1 %27, label %139, label %28

28:                                               ; preds = %136, %25
  %29 = phi ptr [ %137, %136 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %8, align 4
  %30 = getelementptr inbounds %struct.iommu_resv_region, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.iommu_resv_region, ptr %29, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.iommu_resv_region, ptr %29, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.iommu_resv_region, ptr %29, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 24) #23
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %139

42:                                               ; preds = %28
  store volatile ptr %39, ptr %39, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %39, ptr %43, align 4
  %44 = getelementptr inbounds %struct.iommu_resv_region, ptr %39, i32 0, i32 1
  store i32 %31, ptr %44, align 8
  %45 = getelementptr inbounds %struct.iommu_resv_region, ptr %39, i32 0, i32 2
  store i32 %33, ptr %45, align 4
  %46 = getelementptr inbounds %struct.iommu_resv_region, ptr %39, i32 0, i32 3
  store i32 %35, ptr %46, align 8
  %47 = getelementptr inbounds %struct.iommu_resv_region, ptr %39, i32 0, i32 4
  store i32 %37, ptr %47, align 4
  %48 = load ptr, ptr %1, align 4
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %64, label %50

50:                                               ; preds = %61, %42
  %51 = phi ptr [ %62, %61 ], [ %48, %42 ]
  %52 = getelementptr inbounds %struct.iommu_resv_region, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %31, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = icmp eq i32 %31, %53
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.iommu_resv_region, ptr %51, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %37, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %55
  %62 = load ptr, ptr %51, align 4
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %50

64:                                               ; preds = %61, %57, %50, %42
  %65 = phi ptr [ %1, %42 ], [ %51, %50 ], [ %51, %57 ], [ %1, %61 ]
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %39, ptr %66, align 4
  store ptr %65, ptr %39, align 8
  store ptr %67, ptr %43, align 4
  store volatile ptr %39, ptr %67, align 4
  %68 = load ptr, ptr %1, align 4
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %128, label %70

70:                                               ; preds = %126, %64
  %71 = phi ptr [ %72, %126 ], [ %68, %64 ]
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.iommu_resv_region, ptr %71, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.iommu_resv_region, ptr %71, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %74, -1
  %78 = add i32 %77, %76
  %79 = getelementptr inbounds %struct.iommu_resv_region, ptr %71, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %36, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %72, ptr %85, align 4
  %87 = load ptr, ptr %8, align 4
  store ptr %71, ptr %8, align 4
  store ptr %3, ptr %71, align 4
  store ptr %87, ptr %84, align 4
  store volatile ptr %71, ptr %87, align 4
  br label %126

88:                                               ; preds = %70
  %89 = load ptr, ptr %8, align 4
  %90 = icmp eq ptr %89, %3
  br i1 %90, label %100, label %91

91:                                               ; preds = %96, %88
  %92 = phi ptr [ %98, %96 ], [ %89, %88 ]
  %93 = getelementptr inbounds %struct.iommu_resv_region, ptr %92, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %80
  br i1 %95, label %105, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %3
  br i1 %99, label %100, label %91

100:                                              ; preds = %96, %88
  %101 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %72, ptr %102, align 4
  %104 = load ptr, ptr %8, align 4
  store ptr %71, ptr %8, align 4
  store ptr %3, ptr %71, align 4
  store ptr %104, ptr %101, align 4
  store volatile ptr %71, ptr %104, align 4
  br label %126

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.iommu_resv_region, ptr %92, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.iommu_resv_region, ptr %92, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, %107
  %111 = icmp ugt i32 %74, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  store volatile ptr %72, ptr %114, align 4
  %116 = load ptr, ptr %8, align 4
  store ptr %71, ptr %8, align 4
  store ptr %3, ptr %71, align 4
  store ptr %116, ptr %113, align 4
  store volatile ptr %71, ptr %116, align 4
  br label %126

117:                                              ; preds = %105
  %118 = add i32 %110, -1
  %119 = call i32 @llvm.umax.i32(i32 %118, i32 %78) #22
  %120 = sub i32 1, %107
  %121 = add i32 %120, %119
  store i32 %121, ptr %108, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %71, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  call void @kfree(ptr noundef %71) #22
  br label %126

126:                                              ; preds = %117, %112, %100, %83
  %127 = icmp eq ptr %72, %1
  br i1 %127, label %128, label %70

128:                                              ; preds = %126, %64
  %129 = load volatile ptr, ptr %3, align 8
  %130 = icmp eq ptr %129, %3
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %1, align 4
  %133 = load ptr, ptr %8, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %1, ptr %134, align 4
  store ptr %129, ptr %1, align 4
  store ptr %132, ptr %133, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %133, ptr %135, align 4
  br label %136

136:                                              ; preds = %131, %128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %137 = load ptr, ptr %29, align 4
  %138 = icmp eq ptr %137, %4
  br i1 %138, label %139, label %28

139:                                              ; preds = %136, %41, %25, %21, %13
  %140 = phi i1 [ true, %25 ], [ false, %41 ], [ true, %13 ], [ true, %21 ], [ true, %136 ]
  %141 = phi i32 [ 0, %25 ], [ -12, %41 ], [ 0, %13 ], [ 0, %21 ], [ 0, %136 ]
  %142 = load ptr, ptr %14, align 4
  %143 = getelementptr inbounds %struct.device, ptr %142, i32 0, i32 5
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.bus_type, ptr %144, i32 0, i32 19
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.iommu_ops, ptr %146, i32 0, i32 20
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void %150(ptr noundef %142, ptr noundef nonnull %4) #22
  br label %153

153:                                              ; preds = %152, %148, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br i1 %140, label %9, label %154

154:                                              ; preds = %153, %9
  %155 = phi i32 [ %141, %153 ], [ 0, %9 ]
  call void @mutex_unlock(ptr noundef %5) #22
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_get_resv_regions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0, ptr noundef %1) #22
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_put_resv_regions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0, ptr noundef %1) #22
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_group_alloc() #1 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 128) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @iommu_group_kset, align 4
  %6 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 3
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @iommu_group_alloc.__key) #22
  %8 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 11
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 11, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @iommu_group_alloc.__key.2) #22
  %13 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 4, i32 1
  store ptr null, ptr %13, align 4
  %14 = tail call i32 @ida_alloc_range(ptr noundef nonnull @iommu_group_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #22
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #22
  %17 = inttoptr i32 %14 to ptr
  br label %39

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 8
  store i32 %14, ptr %19, align 4
  %20 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %2, ptr noundef nonnull @iommu_group_ktype, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %14) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %19, align 4
  tail call void @ida_free(ptr noundef nonnull @iommu_group_ida, i32 noundef %23) #22
  tail call void @kobject_put(ptr noundef nonnull %2) #22
  %24 = inttoptr i32 %20 to ptr
  br label %39

25:                                               ; preds = %18
  %26 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #22
  %27 = getelementptr inbounds %struct.iommu_group, ptr %2, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  tail call void @kobject_put(ptr noundef nonnull %2) #22
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %2, ptr noundef nonnull @iommu_group_attr_reserved_regions, ptr noundef null) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = inttoptr i32 %30 to ptr
  br label %39

34:                                               ; preds = %29
  %35 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %2, ptr noundef nonnull @iommu_group_attr_type, ptr noundef null) #22
  %36 = icmp eq i32 %35, 0
  %37 = inttoptr i32 %35 to ptr
  %38 = select i1 %36, ptr %2, ptr %37
  br label %39

39:                                               ; preds = %34, %32, %25, %22, %16, %0
  %40 = phi ptr [ %17, %16 ], [ %24, %22 ], [ %33, %32 ], [ inttoptr (i32 -12 to ptr), %0 ], [ %38, %34 ], [ inttoptr (i32 -12 to ptr), %25 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_group_get_by_id(i32 noundef %0) #1 {
  %2 = load ptr, ptr @iommu_group_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %0) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @iommu_group_kset, align 4
  %9 = tail call ptr @kset_find_obj(ptr noundef %8, ptr noundef nonnull %5) #22
  tail call void @kfree(ptr noundef nonnull %5) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.iommu_group, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %16, label %15, !prof !21

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #22, !srcloc !22
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.iommu_group, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @kobject_get(ptr noundef %18) #22
  tail call void @kobject_put(ptr noundef nonnull %9) #22
  br label %20

20:                                               ; preds = %16, %7, %4, %1
  %21 = phi ptr [ %9, %16 ], [ null, %1 ], [ null, %4 ], [ null, %7 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iommu_group_get_iommudata(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iommu_group_set_iommudata(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #7 {
  %4 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 5
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 6
  store ptr %2, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_group_set_name(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef nonnull @iommu_group_attr_name, ptr noundef null) #22
  %7 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %7) #22
  store ptr null, ptr %3, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %2
  %10 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #22
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef nonnull @iommu_group_attr_name, ptr noundef null) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %16) #22
  store ptr null, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %6
  %18 = phi i32 [ %13, %15 ], [ 0, %6 ], [ -12, %9 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_group_add_device(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.group_device, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = tail call i32 @sysfs_create_link(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.6) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %6
  %11 = load ptr, ptr %1, align 4
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %11) #22
  %13 = getelementptr inbounds %struct.group_device, ptr %4, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %27, %15
  %18 = phi i32 [ 0, %15 ], [ %29, %27 ]
  %19 = phi ptr [ %12, %15 ], [ %30, %27 ]
  %20 = load ptr, ptr %16, align 4
  %21 = tail call i32 @sysfs_create_link_nowarn(ptr noundef %20, ptr noundef %1, ptr noundef nonnull %19) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = icmp eq i32 %21, -17
  %25 = icmp sgt i32 %18, -1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %19) #22
  %28 = load ptr, ptr %1, align 4
  %29 = add nuw i32 %18, 1
  %30 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %28, i32 noundef %18) #22
  store ptr %30, ptr %13, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %76, label %17

32:                                               ; preds = %17
  %33 = load ptr, ptr %16, align 4
  %34 = tail call ptr @kobject_get(ptr noundef %33) #22
  %35 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 34
  store ptr %0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %36) #22
  %37 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 2
  %38 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 2, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %4, ptr %38, align 4
  store ptr %37, ptr %4, align 8
  %40 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %4, ptr %39, align 4
  %41 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.iommu_domain, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.iommu_ops, ptr %46, i32 0, i32 23
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = tail call zeroext i1 %48(ptr noundef nonnull %42, ptr noundef %1) #22
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %41, align 4
  br label %55

54:                                               ; preds = %50, %32
  tail call void @mutex_unlock(ptr noundef %36) #22
  br label %59

55:                                               ; preds = %52, %44
  %56 = phi ptr [ %53, %52 ], [ %42, %44 ]
  %57 = tail call fastcc i32 @__iommu_attach_device(ptr noundef %56, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %36) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %54
  %60 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 4
  %61 = tail call i32 @blocking_notifier_call_chain(ptr noundef %60, i32 noundef 1, ptr noundef %1) #22
  %62 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  tail call fastcc void @trace_add_device_to_group(i32 noundef %63, ptr noundef %1)
  %64 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %64) #21
  br label %82

65:                                               ; preds = %55
  tail call void @mutex_lock(ptr noundef %36) #22
  %66 = load ptr, ptr %40, align 4
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %36) #22
  store ptr null, ptr %35, align 8
  %69 = load ptr, ptr %16, align 4
  tail call void @kobject_put(ptr noundef %69) #22
  %70 = load ptr, ptr %16, align 4
  %71 = load ptr, ptr %13, align 4
  tail call void @sysfs_remove_link(ptr noundef %70, ptr noundef %71) #22
  %72 = load ptr, ptr %13, align 4
  br label %73

73:                                               ; preds = %65, %23
  %74 = phi ptr [ %72, %65 ], [ %19, %23 ]
  %75 = phi i32 [ %57, %65 ], [ %21, %23 ]
  tail call void @kfree(ptr noundef %74) #22
  br label %76

76:                                               ; preds = %73, %27, %10
  %77 = phi i32 [ %75, %73 ], [ -12, %10 ], [ -12, %27 ]
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef nonnull @.str.6) #22
  br label %78

78:                                               ; preds = %76, %6
  %79 = phi i32 [ %8, %6 ], [ %77, %76 ]
  tail call void @kfree(ptr noundef nonnull %4) #22
  %80 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 8
  %81 = load i32, ptr %80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %81, i32 noundef %79) #21
  br label %82

82:                                               ; preds = %78, %59, %2
  %83 = phi i32 [ %79, %78 ], [ 0, %59 ], [ -12, %2 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_add_device_to_group(i32 noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_device_to_group, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #22
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !23
  %17 = tail call i32 @__traceiter_add_device_to_group(ptr noundef null, i32 noundef %0, ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !24
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_group_for_each_dev(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 2
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.group_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %2(ptr noundef %12, ptr noundef %1) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %13, %10 ], [ 0, %6 ]
  tail call void @mutex_unlock(ptr noundef %4) #22
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_group_ref_get(ptr noundef readonly returned %0) #1 {
  %2 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kobject_get(ptr noundef %3) #22
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_group_register_notifier(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 4
  %4 = tail call i32 @blocking_notifier_chain_register(ptr noundef %3, ptr noundef %1) #22
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_group_unregister_notifier(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 4
  %4 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %3, ptr noundef %1) #22
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_register_device_fault_handler(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %5) #22
  %8 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = tail call ptr @get_device(ptr noundef %0) #22
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #23
  store ptr %14, ptr %8, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @put_device(ptr noundef %0) #22
  br label %25

17:                                               ; preds = %11
  store ptr %1, ptr %14, align 8
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.iommu_fault_param, ptr %18, i32 0, i32 1
  store ptr %2, ptr %19, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.iommu_fault_param, ptr %20, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef nonnull @iommu_register_device_fault_handler.__key) #22
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.iommu_fault_param, ptr %22, i32 0, i32 2
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.iommu_fault_param, ptr %22, i32 0, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %17, %16, %7
  %26 = phi i32 [ 0, %17 ], [ -12, %16 ], [ -16, %7 ]
  tail call void @mutex_unlock(ptr noundef nonnull %5) #22
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi i32 [ %26, %25 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_unregister_device_fault_handler(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull %3) #22
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iommu_fault_param, ptr %7, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #22
  store ptr null, ptr %6, align 4
  tail call void @put_device(ptr noundef %0) #22
  br label %14

14:                                               ; preds = %13, %9, %5
  %15 = phi i32 [ 0, %13 ], [ 0, %5 ], [ -16, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull %3) #22
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ -22, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_report_device_fault(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %52

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull %4) #22
  %9 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.iommu_fault, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 72, i32 noundef 3264) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.iommu_fault_param, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %27) #22
  %28 = getelementptr inbounds %struct.iommu_fault_event, ptr %24, i32 0, i32 1
  %29 = getelementptr inbounds %struct.iommu_fault_param, ptr %10, i32 0, i32 2
  %30 = getelementptr inbounds %struct.iommu_fault_param, ptr %10, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %32 = getelementptr inbounds %struct.iommu_fault_event, ptr %24, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %28, ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef %27) #22
  %33 = load ptr, ptr %10, align 4
  br label %34

34:                                               ; preds = %26, %18, %15
  %35 = phi ptr [ %33, %26 ], [ %13, %18 ], [ %13, %15 ]
  %36 = phi ptr [ %24, %26 ], [ null, %18 ], [ null, %15 ]
  %37 = getelementptr inbounds %struct.iommu_fault_param, ptr %10, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %35(ptr noundef nonnull %1, ptr noundef %38) #22
  %40 = icmp ne i32 %39, 0
  %41 = icmp ne ptr %36, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.iommu_fault_param, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.iommu_fault_event, ptr %36, i32 0, i32 1
  %46 = getelementptr inbounds %struct.iommu_fault_event, ptr %36, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  tail call void @mutex_unlock(ptr noundef %44) #22
  tail call void @kfree(ptr noundef nonnull %36) #22
  br label %50

50:                                               ; preds = %43, %34, %23, %12, %8
  %51 = phi i32 [ %39, %43 ], [ %39, %34 ], [ -22, %12 ], [ -22, %8 ], [ -12, %23 ]
  tail call void @mutex_unlock(ptr noundef nonnull %4) #22
  br label %52

52:                                               ; preds = %50, %2
  %53 = phi i32 [ %51, %50 ], [ -22, %2 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_page_response(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_page_response, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @kobject_get(ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %13, align 4
  tail call void @kobject_put(ptr noundef %18) #22
  %19 = icmp eq ptr %17, null
  br i1 %19, label %90, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.iommu_domain, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.iommu_ops, ptr %22, i32 0, i32 34
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %90, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %4, null
  br i1 %27, label %90, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %90, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.iommu_page_response, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = load i32, ptr %5, align 4
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %90

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.iommu_fault_param, ptr %30, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %40) #22
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr inbounds %struct.iommu_fault_param, ptr %41, i32 0, i32 2
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.iommu_page_response, ptr %1, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.iommu_page_response, ptr %1, i32 0, i32 3
  br label %53

49:                                               ; preds = %39
  %50 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_page_response._rs, ptr noundef nonnull @__func__.iommu_page_response) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #21
  br label %86

53:                                               ; preds = %83, %45
  %54 = phi ptr [ %43, %45 ], [ %84, %83 ]
  %55 = getelementptr i8, ptr %54, i32 -48
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, %47
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %54, i32 -56
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  br i1 %8, label %83, label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %48, align 4
  %66 = getelementptr i8, ptr %54, i32 -52
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %73, label %83

69:                                               ; preds = %58
  br i1 %8, label %73, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %5, align 4
  %72 = and i32 %71, -2
  store i32 %72, ptr %5, align 4
  store i32 0, ptr %48, align 4
  br label %73

73:                                               ; preds = %70, %69, %64
  %74 = getelementptr i8, ptr %54, i32 -64
  %75 = load ptr, ptr %21, align 4
  %76 = getelementptr inbounds %struct.iommu_ops, ptr %75, i32 0, i32 34
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0, ptr noundef %74, ptr noundef %1) #22
  %79 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %54, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %54, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %79, align 4
  tail call void @kfree(ptr noundef %74) #22
  br label %86

83:                                               ; preds = %64, %63, %53
  %84 = load ptr, ptr %54, align 4
  %85 = icmp eq ptr %84, %42
  br i1 %85, label %86, label %53

86:                                               ; preds = %83, %73, %52, %49
  %87 = phi i32 [ -22, %52 ], [ -22, %49 ], [ %78, %73 ], [ -22, %83 ]
  %88 = load ptr, ptr %29, align 4
  %89 = getelementptr inbounds %struct.iommu_fault_param, ptr %88, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %89) #22
  br label %90

90:                                               ; preds = %86, %36, %32, %28, %26, %20, %12, %2
  %91 = phi i32 [ %87, %86 ], [ -19, %20 ], [ -19, %12 ], [ -22, %28 ], [ -22, %26 ], [ -22, %36 ], [ -22, %32 ], [ -19, %2 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_get_domain_for_dev(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @kobject_get(ptr noundef %7) #22
  %9 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  tail call void @kobject_put(ptr noundef %11) #22
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %10, %5 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @iommu_group_id(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @generic_device_group(ptr nocapture readnone %0) #1 {
  %2 = tail call ptr @iommu_group_alloc()
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_device_group(ptr noundef %0) #1 {
  %2 = alloca %struct.group_for_pci_data, align 8
  %3 = alloca [4 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store i64 0, ptr %2, align 8, !annotation !20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pci_bus_type
  br i1 %6, label %8, label %7, !prof !21

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1456, i32 noundef 9, ptr noundef null) #22
  br label %58

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -136
  %10 = call i32 @pci_for_each_dma_alias(ptr noundef %9, ptr noundef nonnull @get_pci_alias_or_group, ptr noundef nonnull %2) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.group_for_pci_data, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %58

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_bus, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %43, %15
  %23 = phi ptr [ %47, %43 ], [ %20, %15 ]
  %24 = phi ptr [ %46, %43 ], [ %19, %15 ]
  %25 = phi ptr [ %44, %43 ], [ %18, %15 ]
  %26 = phi ptr [ %45, %43 ], [ %16, %15 ]
  %27 = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %22
  %31 = call zeroext i1 @pci_acs_path_enabled(ptr noundef nonnull %28, ptr noundef null, i16 noundef zeroext 29) #22
  br i1 %31, label %49, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 34
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %24, align 8
  br label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.iommu_group, ptr %35, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call ptr @kobject_get(ptr noundef %41) #22
  br label %58

43:                                               ; preds = %37, %22
  %44 = phi ptr [ %23, %22 ], [ %38, %37 ]
  %45 = phi ptr [ %26, %22 ], [ %33, %37 ]
  %46 = getelementptr inbounds %struct.pci_bus, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %22

49:                                               ; preds = %43, %30, %15
  %50 = phi ptr [ %16, %15 ], [ %26, %30 ], [ %45, %43 ]
  %51 = call fastcc ptr @get_pci_alias_group(ptr noundef %50, ptr noundef nonnull %3)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call fastcc ptr @get_pci_function_alias_group(ptr noundef %50, ptr noundef nonnull %3)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call ptr @iommu_group_alloc()
  br label %58

58:                                               ; preds = %56, %53, %49, %39, %12, %7
  %59 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %14, %12 ], [ %57, %56 ], [ %35, %39 ], [ %51, %49 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_pci_alias_or_group(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2) #1 {
  store ptr %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 34
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iommu_group, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @kobject_get(ptr noundef %9) #22
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.group_for_pci_data, ptr %2, i32 0, i32 1
  store ptr %5, ptr %12, align 4
  %13 = icmp ne ptr %5, null
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_acs_path_enabled(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pci_alias_group(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = tail call i32 @_test_and_set_bit(i32 noundef %5, ptr noundef %1) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 34
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  br label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.iommu_group, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @kobject_get(ptr noundef %19) #22
  br label %42

21:                                               ; preds = %29, %15
  %22 = phi ptr [ %13, %15 ], [ %30, %29 ]
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %16, align 8
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %38, %32, %24, %21
  %30 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %22) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %21

32:                                               ; preds = %24
  %33 = tail call zeroext i1 @pci_devs_are_dma_aliases(ptr noundef %0, ptr noundef nonnull %22) #22
  br i1 %33, label %34, label %29

34:                                               ; preds = %32
  %35 = tail call fastcc ptr @get_pci_alias_group(ptr noundef nonnull %22, ptr noundef %1)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @pci_dev_put(ptr noundef nonnull %22) #22
  br label %42

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @get_pci_function_alias_group(ptr noundef nonnull %22, ptr noundef %1)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %29, label %41

41:                                               ; preds = %38
  tail call void @pci_dev_put(ptr noundef nonnull %22) #22
  br label %42

42:                                               ; preds = %41, %37, %29, %17, %12, %2
  %43 = phi ptr [ %35, %37 ], [ %39, %41 ], [ null, %2 ], [ %10, %17 ], [ null, %12 ], [ null, %29 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pci_function_alias_group(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 16
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @pci_acs_enabled(ptr noundef %0, i16 noundef zeroext 29) #22
  br i1 %8, label %39, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi ptr [ %10, %12 ], [ %33, %32 ]
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %13, align 8
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %14, align 4
  %27 = xor i32 %26, %25
  %28 = and i32 %27, 248
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = tail call zeroext i1 @pci_acs_enabled(ptr noundef nonnull %16, i16 noundef zeroext 29) #22
  br i1 %31, label %32, label %35

32:                                               ; preds = %35, %30, %23, %18, %15
  %33 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %16) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %15

35:                                               ; preds = %30
  %36 = tail call fastcc ptr @get_pci_alias_group(ptr noundef nonnull %16, ptr noundef %1)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %32, label %38

38:                                               ; preds = %35
  tail call void @pci_dev_put(ptr noundef nonnull %16) #22
  br label %39

39:                                               ; preds = %38, %32, %9, %7, %2
  %40 = phi ptr [ %36, %38 ], [ null, %7 ], [ null, %2 ], [ null, %9 ], [ null, %32 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fsl_mc_device_group(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.fsl_mc_device, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 34
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.iommu_group, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @kobject_get(ptr noundef %16) #22
  br label %20

18:                                               ; preds = %9
  %19 = tail call ptr @iommu_group_alloc()
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %12, %14 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iommu_group_default_domain(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_iommu_probe(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = call i32 @bus_for_each_dev(ptr noundef %0, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @probe_iommu_group) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %212

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %212, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  br label %12

12:                                               ; preds = %210, %9
  %13 = phi ptr [ %7, %9 ], [ %15, %210 ]
  %14 = getelementptr i8, ptr %13, i32 -120
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %16, align 4
  %19 = getelementptr i8, ptr %13, i32 -72
  call void @mutex_lock(ptr noundef %19) #22
  %20 = getelementptr i8, ptr %13, i32 -80
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %81, label %23

23:                                               ; preds = %74, %12
  %24 = phi ptr [ %77, %74 ], [ %21, %12 ]
  %25 = phi ptr [ %76, %74 ], [ null, %12 ]
  %26 = phi i32 [ %75, %74 ], [ 0, %12 ]
  %27 = getelementptr inbounds %struct.group_device, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bus_type, ptr %30, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %30, @pci_bus_type
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = getelementptr i8, ptr %28, i32 833
  %36 = load i40, ptr %35, align 1
  %37 = and i40 %36, 134217728
  %38 = icmp eq i40 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %23
  %40 = getelementptr inbounds %struct.iommu_ops, ptr %32, i32 0, i32 38
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %74, label %43

43:                                               ; preds = %39
  %44 = call i32 %41(ptr noundef %28) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %43, %34
  %47 = phi i32 [ %44, %43 ], [ 3, %34 ]
  %48 = icmp eq i32 %26, 0
  %49 = icmp eq i32 %26, %47
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  switch i32 %47, label %54 [
    i32 11, label %53
    i32 4, label %55
    i32 1, label %52
    i32 3, label %53
  ]

52:                                               ; preds = %51
  br label %55

53:                                               ; preds = %51, %51
  br label %55

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %53, %52, %51
  %56 = phi ptr [ @.str.25, %54 ], [ @.str.24, %53 ], [ @.str.23, %52 ], [ @.str.22, %51 ]
  %57 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %25, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %61, %60 ], [ %58, %55 ]
  switch i32 %26, label %66 [
    i32 11, label %65
    i32 4, label %67
    i32 1, label %64
    i32 3, label %65
  ]

64:                                               ; preds = %62
  br label %67

65:                                               ; preds = %62, %62
  br label %67

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %65, %64, %62
  %68 = phi ptr [ @.str.25, %66 ], [ @.str.24, %65 ], [ @.str.23, %64 ], [ @.str.22, %62 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.57, ptr noundef nonnull %56, ptr noundef %63, ptr noundef nonnull %68) #21
  br label %69

69:                                               ; preds = %67, %46
  %70 = phi i32 [ %26, %46 ], [ 0, %67 ]
  %71 = icmp eq ptr %25, null
  %72 = select i1 %71, i32 %47, i32 %70
  %73 = select i1 %71, ptr %28, ptr %25
  br label %74

74:                                               ; preds = %69, %43, %39
  %75 = phi i32 [ %26, %39 ], [ %26, %43 ], [ %72, %69 ]
  %76 = phi ptr [ %25, %39 ], [ %25, %43 ], [ %73, %69 ]
  %77 = load ptr, ptr %24, align 4
  %78 = icmp eq ptr %77, %20
  br i1 %78, label %79, label %23

79:                                               ; preds = %74
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %79, %12
  %82 = load i32, ptr @iommu_def_domain_type, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %82, %81 ], [ %75, %79 ]
  br i1 %10, label %130, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %11, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.iommu_ops, ptr %86, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = call ptr %90(i32 noundef %84) #22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %11, align 4
  %95 = getelementptr inbounds %struct.iommu_domain, ptr %91, i32 0, i32 1
  store ptr %94, ptr %95, align 4
  store i32 %84, ptr %91, align 4
  %96 = load ptr, ptr %11, align 4
  %97 = getelementptr inbounds %struct.iommu_ops, ptr %96, i32 0, i32 39
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.iommu_domain, ptr %91, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = and i32 %84, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.iommu_ops, ptr %94, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef nonnull %91) #22
  br label %105

105:                                              ; preds = %102, %88, %85
  %106 = icmp eq i32 %84, 3
  br i1 %106, label %130, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %11, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.iommu_ops, ptr %108, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = call ptr %112(i32 noundef 3) #22
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %11, align 4
  %117 = getelementptr inbounds %struct.iommu_domain, ptr %113, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store i32 3, ptr %113, align 4
  %118 = load ptr, ptr %11, align 4
  %119 = getelementptr inbounds %struct.iommu_ops, ptr %118, i32 0, i32 39
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.iommu_domain, ptr %113, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.iommu_ops, ptr %116, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  call void %123(ptr noundef nonnull %113) #22
  br label %130

124:                                              ; preds = %93
  %125 = getelementptr i8, ptr %13, i32 -8
  store ptr %91, ptr %125, align 4
  %126 = getelementptr i8, ptr %13, i32 -4
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store ptr %91, ptr %126, align 4
  br label %130

130:                                              ; preds = %129, %124, %115, %110, %107, %105, %83
  %131 = getelementptr i8, ptr %13, i32 -8
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  call void @mutex_unlock(ptr noundef %19) #22
  br label %210

135:                                              ; preds = %130
  %136 = load ptr, ptr %20, align 4
  %137 = icmp eq ptr %136, %20
  br i1 %137, label %192, label %138

138:                                              ; preds = %138, %135
  %139 = phi ptr [ %143, %138 ], [ %136, %135 ]
  %140 = getelementptr inbounds %struct.group_device, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = call fastcc i32 @iommu_create_device_direct_mappings(ptr noundef %14, ptr noundef %141) #22
  %143 = load ptr, ptr %139, align 4
  %144 = icmp eq ptr %143, %20
  br i1 %144, label %145, label %138

145:                                              ; preds = %138
  %146 = load ptr, ptr %131, align 4
  %147 = load ptr, ptr %20, align 4
  %148 = icmp eq ptr %147, %20
  br i1 %148, label %192, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.iommu_domain, ptr %146, i32 0, i32 1
  br label %151

151:                                              ; preds = %187, %149
  %152 = phi ptr [ %147, %149 ], [ %188, %187 ]
  %153 = getelementptr inbounds %struct.group_device, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %150, align 4
  %156 = getelementptr inbounds %struct.iommu_ops, ptr %155, i32 0, i32 23
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = call zeroext i1 %157(ptr noundef %146, ptr noundef %154) #22
  br i1 %160, label %187, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr %150, align 4
  br label %163

163:                                              ; preds = %161, %151
  %164 = phi ptr [ %162, %161 ], [ %155, %151 ]
  %165 = getelementptr inbounds %struct.iommu_ops, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %190, label %168, !prof !9

168:                                              ; preds = %163
  %169 = call i32 %166(ptr noundef %146, ptr noundef %154) #22
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %168
  %172 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = tail call ptr @llvm.thread.pointer() #22
  %176 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = lshr i32 %177, 5
  %179 = getelementptr i32, ptr @__cpu_online_mask, i32 %178
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %177, 31
  %182 = shl nuw i32 1, %181
  %183 = and i32 %182, %180
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %174
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %186 = call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %154) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %187

187:                                              ; preds = %185, %174, %171, %159
  %188 = load ptr, ptr %152, align 4
  %189 = icmp eq ptr %188, %20
  br i1 %189, label %192, label %151

190:                                              ; preds = %168, %163
  %191 = phi i32 [ %169, %168 ], [ -19, %163 ]
  call void @mutex_unlock(ptr noundef %19) #22
  br label %212

192:                                              ; preds = %187, %145, %135
  call void @mutex_unlock(ptr noundef %19) #22
  %193 = load ptr, ptr %20, align 4
  %194 = icmp eq ptr %193, %20
  br i1 %194, label %210, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr %131, align 4
  %197 = getelementptr inbounds %struct.iommu_domain, ptr %196, i32 0, i32 1
  br label %198

198:                                              ; preds = %207, %195
  %199 = phi ptr [ %193, %195 ], [ %208, %207 ]
  %200 = load ptr, ptr %197, align 4
  %201 = getelementptr inbounds %struct.iommu_ops, ptr %200, i32 0, i32 15
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.group_device, ptr %199, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  call void %202(ptr noundef %206) #22
  br label %207

207:                                              ; preds = %204, %198
  %208 = load ptr, ptr %199, align 4
  %209 = icmp eq ptr %208, %20
  br i1 %209, label %210, label %198

210:                                              ; preds = %207, %192, %134
  %211 = icmp eq ptr %15, %2
  br i1 %211, label %212, label %12

212:                                              ; preds = %210, %190, %6, %1
  %213 = phi i32 [ %4, %1 ], [ %191, %190 ], [ 0, %6 ], [ 0, %210 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @probe_iommu_group(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @kobject_get(ptr noundef %8) #22
  %10 = load ptr, ptr %7, align 4
  tail call void @kobject_put(ptr noundef %10) #22
  br label %15

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @__iommu_probe_device(ptr noundef %0, ptr noundef %1)
  %13 = icmp eq i32 %12, -19
  %14 = select i1 %13, i32 0, i32 %12
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 0, %6 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bus_set_iommu(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  br i1 %3, label %23, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  store ptr %1, ptr %4, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 12) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  store ptr @iommu_bus_notifier, ptr %10, align 8
  %13 = tail call i32 @bus_register_notifier(ptr noundef %0, ptr noundef nonnull %10) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = tail call i32 @bus_iommu_probe(ptr noundef %0) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @bus_for_each_dev(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull @remove_iommu_group) #22
  %20 = tail call i32 @bus_unregister_notifier(ptr noundef %0, ptr noundef nonnull %10) #22
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %13, %12 ], [ %16, %18 ]
  tail call void @kfree(ptr noundef nonnull %10) #22
  br label %23

23:                                               ; preds = %21, %8, %2
  %24 = phi i32 [ 0, %2 ], [ -12, %8 ], [ %22, %21 ]
  store ptr null, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %15, %5
  %26 = phi i32 [ -16, %5 ], [ 0, %15 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iommu_present(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @iommu_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i1 %7(i32 noundef %1) #22
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi i1 [ %10, %9 ], [ false, %6 ], [ false, %2 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_set_fault_handler(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1938, 0\0A.popsection", ""() #22, !srcloc !25
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 3
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 4
  store ptr %2, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_domain_alloc(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(i32 noundef 1) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.iommu_domain, ptr %10, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store i32 1, ptr %10, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.iommu_ops, ptr %15, i32 0, i32 39
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.iommu_domain, ptr %10, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %12, %7, %3, %1
  %20 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %7 ], [ %10, %12 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_domain_free(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iommu_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_attach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @kobject_get(ptr noundef %8) #22
  %10 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %17, %12 ]
  %14 = phi ptr [ %11, %6 ], [ %15, %12 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  %17 = add i32 %13, 1
  br i1 %16, label %18, label %12

18:                                               ; preds = %12
  %19 = icmp eq i32 %13, 1
  br i1 %19, label %20, label %65

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %28, label %65

28:                                               ; preds = %24, %20
  %29 = load ptr, ptr %11, align 4
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %63, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  br label %33

33:                                               ; preds = %60, %31
  %34 = phi ptr [ %29, %31 ], [ %61, %60 ]
  %35 = getelementptr inbounds %struct.group_device, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.iommu_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41, !prof !9

41:                                               ; preds = %33
  %42 = tail call i32 %39(ptr noundef %0, ptr noundef %36) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = tail call ptr @llvm.thread.pointer() #22
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %59 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %36) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %60

60:                                               ; preds = %58, %47, %44
  %61 = load ptr, ptr %34, align 4
  %62 = icmp eq ptr %61, %11
  br i1 %62, label %63, label %33

63:                                               ; preds = %60, %28
  %64 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 10
  store ptr %0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %41, %33, %24, %18
  %66 = phi i32 [ -22, %18 ], [ -16, %24 ], [ 0, %63 ], [ %42, %41 ], [ -19, %33 ]
  tail call void @mutex_unlock(ptr noundef %10) #22
  %67 = load ptr, ptr %7, align 4
  tail call void @kobject_put(ptr noundef %67) #22
  br label %68

68:                                               ; preds = %65, %2
  %69 = phi i32 [ %66, %65 ], [ -19, %2 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_deferred_attach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iommu_domain, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_ops, ptr %4, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i1 %6(ptr noundef %1, ptr noundef %0) #22
  br i1 %9, label %10, label %34

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.iommu_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15, !prof !9

15:                                               ; preds = %10
  %16 = tail call i32 %13(ptr noundef %1, ptr noundef %0) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #22
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %33 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %34

34:                                               ; preds = %32, %21, %18, %15, %10, %8, %2
  %35 = phi i32 [ 0, %8 ], [ 0, %2 ], [ -19, %10 ], [ %16, %15 ], [ 0, %18 ], [ 0, %21 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_uapi_cache_invalidate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.iommu_cache_invalidate_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false)
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %66, label %10, !prof !9

10:                                               ; preds = %3
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1090519040) #24, !srcloc !26
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !21

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #22
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #25, !srcloc !27
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #22, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 16) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #22, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !21

22:                                               ; preds = %14, %10
  %23 = phi i32 [ %20, %14 ], [ 16, %10 ]
  %24 = sub i32 16, %23
  %25 = getelementptr i8, ptr %4, i32 %24
  call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %23, i1 false) #22
  br label %66

26:                                               ; preds = %14
  %27 = load i32, ptr %4, align 8
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %4, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 1
  %33 = icmp ult i32 %27, 32
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %66, label %35

35:                                               ; preds = %29
  %36 = icmp eq i8 %31, 2
  %37 = icmp ult i32 %27, 56
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %4, i32 16
  %41 = getelementptr i8, ptr %2, i32 16
  %42 = call i32 @llvm.umin.i32(i32 %27, i32 56)
  %43 = add nsw i32 %42, -16
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %41, i32 %43, i32 -1090519040) #24, !srcloc !26
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !21

47:                                               ; preds = %39
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #25, !srcloc !27
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #22, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %51 = call i32 @arm_copy_from_user(ptr noundef %40, ptr noundef %41, i32 noundef %43) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #22, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi i32 [ %51, %47 ], [ %43, %39 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55, !prof !21

55:                                               ; preds = %52
  %56 = sub i32 %43, %53
  %57 = getelementptr i8, ptr %40, i32 %56
  call void @llvm.memset.p0.i32(ptr align 1 %57, i8 0, i32 %53, i1 false) #22
  br label %66

58:                                               ; preds = %52
  %59 = call fastcc i32 @iommu_check_cache_invl_data(ptr noundef nonnull %4)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.iommu_ops, ptr %62, i32 0, i32 35
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #22
  br label %66

66:                                               ; preds = %61, %58, %55, %35, %29, %26, %22, %3
  %67 = phi i32 [ %65, %61 ], [ -19, %3 ], [ -22, %26 ], [ -22, %29 ], [ -22, %35 ], [ %59, %58 ], [ -14, %22 ], [ -14, %55 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  ret i32 %67
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @iommu_check_cache_invl_data(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 8
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 248
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 2
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  switch i8 %13, label %55 [
    i8 2, label %16
    i8 1, label %23
    i8 0, label %27
  ]

16:                                               ; preds = %15
  %17 = and i32 %8, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %30, label %55

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %30, label %55

27:                                               ; preds = %15
  %28 = and i32 %8, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27, %23, %19
  %31 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 0
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr %struct.iommu_cache_invalidate_info, ptr %0, i32 0, i32 4, i32 5
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 -22
  br label %55

55:                                               ; preds = %50, %46, %42, %38, %34, %30, %27, %23, %19, %16, %15, %11, %5, %1
  %56 = phi i32 [ -22, %1 ], [ -22, %5 ], [ -22, %11 ], [ -22, %16 ], [ -22, %19 ], [ -22, %23 ], [ -22, %27 ], [ -22, %15 ], [ -22, %30 ], [ -22, %34 ], [ -22, %38 ], [ -22, %42 ], [ -22, %46 ], [ %54, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_uapi_sva_bind_gpasid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.iommu_gpasid_bind_data, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false)
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !9

10:                                               ; preds = %3
  %11 = call fastcc i32 @iommu_sva_prepare_bind_data(ptr noundef %2, ptr noundef nonnull %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.iommu_ops, ptr %14, i32 0, i32 36
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #22
  br label %18

18:                                               ; preds = %13, %10, %3
  %19 = phi i32 [ %17, %13 ], [ -19, %3 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iommu_sva_prepare_bind_data(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 56, i32 -1090519040) #24, !srcloc !26
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !21

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #22
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #25, !srcloc !27
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #22, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %12 = tail call i32 @arm_copy_from_user(ptr noundef %1, ptr noundef %0, i32 noundef 56) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #22, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !21

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %12, %6 ], [ 56, %2 ]
  %16 = sub i32 56, %15
  %17 = getelementptr i8, ptr %1, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #22
  br label %85

18:                                               ; preds = %6
  %19 = load i32, ptr %1, align 8
  %20 = icmp ult i32 %19, 56
  br i1 %20, label %85, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %1, i32 56
  %23 = getelementptr i8, ptr %0, i32 56
  %24 = tail call i32 @llvm.umin.i32(i32 %19, i32 72)
  %25 = add nsw i32 %24, -56
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %25, i32 -1090519040) #24, !srcloc !26
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34, !prof !21

29:                                               ; preds = %21
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #25, !srcloc !27
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #22, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  %33 = tail call i32 @arm_copy_from_user(ptr noundef %22, ptr noundef %23, i32 noundef %25) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #22, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !29
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i32 [ %33, %29 ], [ %25, %21 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37, !prof !21

37:                                               ; preds = %34
  %38 = sub i32 %25, %35
  %39 = getelementptr i8, ptr %22, i32 %38
  tail call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %35, i1 false) #22
  br label %85

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %85

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = icmp ugt i32 %46, 1
  br i1 %47, label %85, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 4
  %50 = load i64, ptr %49, align 8
  %51 = icmp ult i64 %50, 2
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 0
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = getelementptr %struct.iommu_gpasid_bind_data, ptr %1, i32 0, i32 8, i32 7
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i32 0, i32 -22
  br label %85

85:                                               ; preds = %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %37, %18, %14
  %86 = phi i32 [ -22, %18 ], [ -22, %40 ], [ -22, %44 ], [ -22, %48 ], [ -22, %52 ], [ -22, %56 ], [ -22, %60 ], [ -22, %64 ], [ -22, %68 ], [ -22, %72 ], [ -22, %76 ], [ %84, %80 ], [ -14, %14 ], [ -14, %37 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_sva_unbind_gpasid(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iommu_ops, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %1, i32 noundef %2) #22
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -19, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_uapi_sva_unbind_gpasid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.iommu_gpasid_bind_data, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false)
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !9

10:                                               ; preds = %3
  %11 = call fastcc i32 @iommu_sva_prepare_bind_data(ptr noundef %2, ptr noundef nonnull %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.iommu_ops, ptr %14, i32 0, i32 37
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18, !prof !9

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.iommu_gpasid_bind_data, ptr %4, i32 0, i32 6
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 %16(ptr noundef %1, i32 noundef %21) #22
  br label %23

23:                                               ; preds = %18, %13, %10, %3
  %24 = phi i32 [ -19, %3 ], [ %11, %10 ], [ %22, %18 ], [ -19, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_detach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @kobject_get(ptr noundef %8) #22
  %10 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.iommu_group, ptr %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ 0, %6 ], [ %17, %12 ]
  %14 = phi ptr [ %11, %6 ], [ %15, %12 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  %17 = add i32 %13, 1
  br i1 %16, label %18, label %12

18:                                               ; preds = %12
  %19 = icmp eq i32 %13, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2267, i32 noundef 9, ptr noundef null) #22
  br label %22

21:                                               ; preds = %18
  tail call fastcc void @__iommu_detach_group(ptr noundef %0, ptr noundef nonnull %4)
  br label %22

22:                                               ; preds = %21, %20
  tail call void @mutex_unlock(ptr noundef %10) #22
  %23 = load ptr, ptr %7, align 4
  tail call void @kobject_put(ptr noundef %23) #22
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__iommu_detach_group(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %50

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %45, %10
  %13 = phi ptr [ %8, %10 ], [ %46, %45 ]
  %14 = getelementptr inbounds %struct.group_device, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.iommu_ops, ptr %16, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = tail call zeroext i1 %18(ptr noundef %0, ptr noundef %15) #22
  br i1 %21, label %45, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %11, align 4
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi ptr [ %23, %22 ], [ %16, %12 ]
  %26 = getelementptr inbounds %struct.iommu_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29, !prof !9

29:                                               ; preds = %24
  tail call void %27(ptr noundef %0, ptr noundef %15) #22
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_detach_device_from_domain, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #22
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !30
  %44 = tail call i32 @__traceiter_detach_device_from_domain(ptr noundef null, ptr noundef %15) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !31
  br label %45

45:                                               ; preds = %43, %32, %29, %24, %20
  %46 = load ptr, ptr %13, align 4
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %48, label %12

48:                                               ; preds = %45, %6
  %49 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 10
  store ptr null, ptr %49, align 4
  br label %95

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %4
  br i1 %53, label %95, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %93, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.iommu_domain, ptr %4, i32 0, i32 1
  br label %60

60:                                               ; preds = %87, %58
  %61 = phi ptr [ %56, %58 ], [ %88, %87 ]
  %62 = getelementptr inbounds %struct.group_device, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr inbounds %struct.iommu_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %68, !prof !9

68:                                               ; preds = %60
  %69 = tail call i32 %66(ptr noundef nonnull %4, ptr noundef %63) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = tail call ptr @llvm.thread.pointer() #22
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %86 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %63) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %87

87:                                               ; preds = %85, %74, %71
  %88 = load ptr, ptr %61, align 4
  %89 = icmp eq ptr %88, %55
  br i1 %89, label %91, label %60

90:                                               ; preds = %68, %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2378, i32 noundef 9, ptr noundef null) #22
  br label %95

91:                                               ; preds = %87
  %92 = load ptr, ptr %3, align 4
  br label %93

93:                                               ; preds = %91, %54
  %94 = phi ptr [ %92, %91 ], [ %4, %54 ]
  store ptr %94, ptr %51, align 4
  br label %95

95:                                               ; preds = %93, %90, %50, %48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @iommu_get_dma_domain(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.iommu_group, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_attach_group(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %11, label %49

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %44, %15
  %18 = phi ptr [ %13, %15 ], [ %45, %44 ]
  %19 = getelementptr inbounds %struct.group_device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.iommu_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25, !prof !9

25:                                               ; preds = %17
  %26 = tail call i32 %23(ptr noundef %0, ptr noundef %20) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #22
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %43 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %20) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %44

44:                                               ; preds = %42, %31, %28
  %45 = load ptr, ptr %18, align 4
  %46 = icmp eq ptr %45, %12
  br i1 %46, label %47, label %17

47:                                               ; preds = %44, %11
  %48 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 10
  store ptr %0, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %25, %17, %7
  %50 = phi i32 [ -16, %7 ], [ 0, %47 ], [ %26, %25 ], [ -19, %17 ]
  tail call void @mutex_unlock(ptr noundef %3) #22
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_detach_group(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #22
  tail call fastcc void @__iommu_detach_group(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_iova_to_phys(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  switch i32 %3, label %5 [
    i32 4, label %11
    i32 0, label %4
  ]

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i32 noundef %1) #22
  br label %11

11:                                               ; preds = %5, %4, %2
  %12 = phi i32 [ 0, %4 ], [ %10, %5 ], [ %1, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3264) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0, i32 noundef %1, i32 noundef %3) #22
  br label %15

15:                                               ; preds = %14, %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_map_atomic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @__iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2592) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0, i32 noundef %1, i32 noundef %3) #22
  br label %15

15:                                               ; preds = %14, %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.iommu_iotlb_gather, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 0, ptr %5, align 4, !annotation !20
  %6 = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %4, i32 0, i32 3
  store i32 -1, ptr %4, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %8, align 4
  store ptr %6, ptr %6, align 4
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  store ptr %6, ptr %9, align 4
  %10 = call fastcc i32 @__iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %11 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iommu_ops, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  call void %14(ptr noundef %0, ptr noundef nonnull %4) #22
  br label %17

17:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %118, label %14, !prof !9

14:                                               ; preds = %10, %4
  %15 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %118, label %18, !prof !9

18:                                               ; preds = %14
  %19 = load i32, ptr %0, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %118, label %22, !prof !9

22:                                               ; preds = %18
  %23 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true) #22, !range !17
  %24 = shl nuw i32 1, %23
  %25 = or i32 %2, %1
  %26 = add i32 %24, -1
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %101, label %31

31:                                               ; preds = %29
  %32 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 true) #22, !range !17
  %33 = lshr i32 -1, %32
  %34 = icmp eq i32 %1, 0
  %35 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #22, !range !17
  %36 = sub nsw i32 31, %35
  %37 = lshr i32 -1, %36
  %38 = select i1 %34, i32 -1, i32 %37
  %39 = and i32 %38, %33
  %40 = and i32 %39, %16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %45, !prof !9

42:                                               ; preds = %22
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %1, i32 noundef %2, i32 noundef %24) #21
  br label %118

44:                                               ; preds = %86, %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2419, 0\0A.popsection", ""() #22, !srcloc !32
  unreachable

45:                                               ; preds = %86, %31
  %46 = phi i32 [ %99, %86 ], [ %40, %31 ]
  %47 = phi i32 [ %90, %86 ], [ %2, %31 ]
  %48 = phi i32 [ %84, %86 ], [ 0, %31 ]
  %49 = phi i32 [ %87, %86 ], [ %1, %31 ]
  %50 = phi ptr [ %88, %86 ], [ %6, %31 ]
  %51 = phi i32 [ %89, %86 ], [ %16, %31 ]
  %52 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 true) #22, !range !17
  %53 = xor i32 %52, 31
  %54 = lshr i32 -1, %52
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %45
  %59 = tail call i32 @llvm.cttz.i32(i32 %56, i1 true) #22, !range !17
  %60 = shl nuw i32 1, %59
  %61 = add i32 %60, -1
  %62 = and i32 %61, %49
  %63 = sub i32 %60, %62
  %64 = add i32 %63, %60
  %65 = icmp ugt i32 %64, %47
  %66 = select i1 %65, i32 %47, i32 %63
  br label %67

67:                                               ; preds = %58, %45
  %68 = phi i32 [ %47, %45 ], [ %66, %58 ]
  %69 = shl nuw i32 1, %53
  %70 = getelementptr inbounds %struct.iommu_ops, ptr %50, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = lshr i32 %68, %53
  %75 = tail call i32 %71(ptr noundef %0, i32 noundef %49, i32 noundef %69, i32 noundef %74, ptr noundef %3) #22
  br label %80

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.iommu_ops, ptr %50, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef %49, i32 noundef %69, ptr noundef %3) #22
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %80
  %84 = add i32 %81, %48
  %85 = icmp ult i32 %84, %2
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = add i32 %81, %49
  %88 = load ptr, ptr %5, align 4
  %89 = load i32, ptr %15, align 4
  %90 = sub i32 %2, %84
  %91 = tail call i32 @llvm.ctlz.i32(i32 %90, i1 false) #22, !range !17
  %92 = lshr i32 -1, %91
  %93 = icmp eq i32 %87, 0
  %94 = tail call i32 @llvm.cttz.i32(i32 %87, i1 false) #22, !range !17
  %95 = sub nsw i32 31, %94
  %96 = lshr i32 -1, %95
  %97 = select i1 %93, i32 -1, i32 %96
  %98 = and i32 %97, %92
  %99 = and i32 %98, %89
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %44, label %45, !prof !9

101:                                              ; preds = %83, %80, %29
  %102 = phi i32 [ 0, %29 ], [ %48, %80 ], [ %84, %83 ]
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_unmap, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #22
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !33
  %117 = tail call i32 @__traceiter_unmap(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %102) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !34
  br label %118

118:                                              ; preds = %116, %105, %101, %42, %18, %14, %10
  %119 = phi i32 [ 0, %42 ], [ 0, %14 ], [ 0, %18 ], [ 0, %10 ], [ %102, %101 ], [ %102, %105 ], [ %102, %116 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_unmap_fast(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = tail call fastcc i32 @__iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_map_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = tail call fastcc i32 @__iommu_map_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3264)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_map_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.iommu_iotlb_gather, align 4
  %8 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %54, %6
  %11 = phi i32 [ 0, %6 ], [ %50, %54 ]
  %12 = phi i32 [ 0, %6 ], [ %49, %54 ]
  %13 = phi i32 [ 0, %6 ], [ %47, %54 ]
  %14 = phi i32 [ 0, %6 ], [ %48, %54 ]
  %15 = phi ptr [ %2, %6 ], [ %55, %54 ]
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 33554428
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = sub i32 %17, %19
  %21 = lshr exact i32 %20, 5
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = add i32 %21, %22
  %24 = shl i32 %23, 12
  %25 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %24, %26
  %28 = icmp eq i32 %14, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %10
  %30 = add i32 %12, %14
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = add i32 %13, %1
  %34 = tail call fastcc i32 @__iommu_map(ptr noundef %0, i32 noundef %33, i32 noundef %12, i32 noundef %14, i32 noundef %4, i32 noundef %5)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = add i32 %13, %14
  br label %42

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %14
  br label %46

42:                                               ; preds = %36, %10
  %43 = phi i32 [ %13, %10 ], [ %37, %36 ]
  %44 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %13, %38 ], [ %43, %42 ]
  %48 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %49 = phi i32 [ %12, %38 ], [ %27, %42 ]
  %50 = add i32 %11, 1
  %51 = icmp ult i32 %50, %3
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call ptr @sg_next(ptr noundef %15) #22
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi ptr [ %53, %52 ], [ %15, %46 ]
  %56 = icmp ugt i32 %50, %3
  br i1 %56, label %57, label %10

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.iommu_ops, ptr %9, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %0, i32 noundef %1, i32 noundef %47) #22
  br label %75

62:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %63 = getelementptr inbounds i8, ptr %7, i32 20
  store i32 0, ptr %63, align 4, !annotation !20
  %64 = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %7, i32 0, i32 3
  store i32 -1, ptr %7, align 4
  %65 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds i8, ptr %7, i32 8
  store i32 0, ptr %66, align 4
  store ptr %64, ptr %64, align 4
  %67 = getelementptr inbounds i8, ptr %7, i32 16
  store ptr %64, ptr %67, align 4
  %68 = call fastcc i32 @__iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %13, ptr noundef nonnull %7) #22
  %69 = load ptr, ptr %8, align 4
  %70 = getelementptr inbounds %struct.iommu_ops, ptr %69, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  call void %71(ptr noundef %0, ptr noundef nonnull %7) #22
  br label %74

74:                                               ; preds = %73, %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %75

75:                                               ; preds = %74, %61, %57
  %76 = phi i32 [ %34, %74 ], [ %47, %61 ], [ %47, %57 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_map_sg_atomic(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call fastcc i32 @__iommu_map_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2592)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @report_iommu_fault(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #22
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -38, %4 ]
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_io_page_fault, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #22
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !35
  %28 = tail call i32 @__traceiter_io_page_fault(ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !36
  br label %29

29:                                               ; preds = %27, %16, %12
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iommu_init() #0 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef %1) #22
  store ptr %2, ptr @iommu_group_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2764, 0\0A.popsection", ""() #22, !srcloc !37
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_enable_nesting(ptr noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0) #22
  br label %12

12:                                               ; preds = %10, %4, %1
  %13 = phi i32 [ %11, %10 ], [ -22, %1 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_set_pgtable_quirks(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1) #22
  br label %13

13:                                               ; preds = %11, %5, %2
  %14 = phi i32 [ %12, %11 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_iommu_put_resv_regions(ptr nocapture readnone %0, ptr noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %6) #22
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_alloc_resv_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  store volatile ptr %6, ptr %6, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.iommu_resv_region, ptr %6, i32 0, i32 1
  store i32 %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.iommu_resv_region, ptr %6, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.iommu_resv_region, ptr %6, i32 0, i32 3
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.iommu_resv_region, ptr %6, i32 0, i32 4
  store i32 %3, ptr %13, align 4
  br label %14

14:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @iommu_set_default_passthrough(i1 noundef zeroext %0) local_unnamed_addr #4 {
  br i1 %0, label %2, label %5

2:                                                ; preds = %1
  %3 = load i32, ptr @iommu_cmd_line, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr @iommu_cmd_line, align 4
  br label %5

5:                                                ; preds = %2, %1
  store i32 4, ptr @iommu_def_domain_type, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @iommu_set_default_translated(i1 noundef zeroext %0) local_unnamed_addr #4 {
  br i1 %0, label %2, label %5

2:                                                ; preds = %1
  %3 = load i32, ptr @iommu_cmd_line, align 4
  %4 = or i32 %3, 1
  store i32 %4, ptr @iommu_cmd_line, align 4
  br label %5

5:                                                ; preds = %2, %1
  store i32 3, ptr @iommu_def_domain_type, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iommu_default_passthrough() #11 {
  %1 = load i32, ptr @iommu_def_domain_type, align 4
  %2 = icmp eq i32 %1, 4
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_ops_from_fwnode(ptr noundef readnone %0) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @iommu_device_lock) #22
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @iommu_device_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @iommu_device_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iommu_device, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iommu_device, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %15 = load i16, ptr @iommu_device_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @iommu_device_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_fwspec_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, %2
  %14 = select i1 %13, i32 0, i32 -22
  br label %40

15:                                               ; preds = %3
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 40) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  tail call void @__mutex_init(ptr noundef nonnull %17, ptr noundef nonnull @.str.63, ptr noundef nonnull @dev_iommu_get.__key) #22
  store ptr %17, ptr %4, align 4
  br label %20

20:                                               ; preds = %19, %7
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 20) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %1, null
  %26 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, @of_fwnode_ops
  %32 = getelementptr i8, ptr %1, i32 -12
  %33 = select i1 %31, ptr %32, ptr null
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi ptr [ null, %24 ], [ %33, %28 ]
  %36 = tail call ptr @of_node_get(ptr noundef %35) #22
  %37 = getelementptr inbounds %struct.iommu_fwspec, ptr %22, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  store ptr %2, ptr %22, align 8
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr inbounds %struct.dev_iommu, ptr %38, i32 0, i32 3
  store ptr %22, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %20, %15, %11
  %41 = phi i32 [ %14, %11 ], [ 0, %34 ], [ -12, %20 ], [ -12, %15 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_fwspec_free(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iommu_fwspec, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @fwnode_handle_put(ptr noundef %11) #22
  tail call void @kfree(ptr noundef nonnull %7) #22
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.dev_iommu, ptr %12, i32 0, i32 3
  store ptr null, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_fwspec_add_ids(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.iommu_fwspec, ptr %9, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %2
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #22
  %18 = extractvalue { i32, i1 } %17, 1
  %19 = extractvalue { i32, i1 } %17, 0
  %20 = tail call i32 @llvm.uadd.sat.i32(i32 %19, i32 16) #22
  %21 = select i1 %18, i32 -1, i32 %20
  %22 = tail call noalias ptr @krealloc(ptr noundef nonnull %9, i32 noundef %21, i32 noundef 3264) #26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.dev_iommu, ptr %25, i32 0, i32 3
  store ptr %22, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %11
  %28 = phi ptr [ %22, %24 ], [ %9, %11 ]
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.iommu_fwspec, ptr %28, i32 0, i32 3
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ 0, %30 ], [ %39, %32 ]
  %34 = getelementptr i32, ptr %1, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %31, align 4
  %37 = add i32 %36, %33
  %38 = getelementptr %struct.iommu_fwspec, ptr %28, i32 0, i32 4, i32 %37
  store i32 %35, ptr %38, align 4
  %39 = add nuw nsw i32 %33, 1
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %32

41:                                               ; preds = %32, %27
  %42 = getelementptr inbounds %struct.iommu_fwspec, ptr %28, i32 0, i32 3
  store i32 %14, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %16, %7, %3
  %44 = phi i32 [ 0, %41 ], [ -22, %7 ], [ -12, %16 ], [ -22, %3 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_dev_enable_feature(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iommu_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iommu_ops, ptr %12, i32 0, i32 26
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef %1) #22
  br label %18

18:                                               ; preds = %16, %10, %6, %2
  %19 = phi i32 [ %17, %16 ], [ -19, %6 ], [ -19, %2 ], [ -19, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_dev_disable_feature(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iommu_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iommu_ops, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef %1) #22
  br label %18

18:                                               ; preds = %16, %10, %6, %2
  %19 = phi i32 [ %17, %16 ], [ -16, %6 ], [ -16, %2 ], [ -16, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @iommu_dev_feature_enabled(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iommu_device, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.iommu_ops, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call zeroext i1 %14(ptr noundef %0, i32 noundef %1) #22
  br label %18

18:                                               ; preds = %16, %10, %6, %2
  %19 = phi i1 [ %17, %16 ], [ false, %6 ], [ false, %2 ], [ false, %10 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_aux_attach_device(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_ops, ptr %4, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_attach_device_to_domain, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #22
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !14
  %26 = tail call i32 @__traceiter_attach_device_to_domain(ptr noundef null, ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %11, %8, %2
  %28 = phi i32 [ %9, %8 ], [ 0, %11 ], [ 0, %14 ], [ 0, %25 ], [ -19, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_aux_detach_device(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_ops, ptr %4, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %0, ptr noundef %1) #22
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_detach_device_from_domain, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #22
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !30
  %23 = tail call i32 @__traceiter_detach_device_from_domain(ptr noundef null, ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !31
  br label %24

24:                                               ; preds = %22, %11, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_aux_get_pasid(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iommu_ops, ptr %4, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #22
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ -19, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iommu_sva_bind_device(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bus_type, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 34
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.iommu_group, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @kobject_get(ptr noundef %19) #22
  %21 = getelementptr inbounds %struct.iommu_group, ptr %15, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %21) #22
  %22 = getelementptr inbounds %struct.iommu_group, ptr %15, i32 0, i32 2
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi i32 [ 0, %17 ], [ %28, %23 ]
  %25 = phi ptr [ %22, %17 ], [ %26, %23 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %22
  %28 = add i32 %24, 1
  br i1 %27, label %29, label %23

29:                                               ; preds = %23
  %30 = icmp eq i32 %24, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load ptr, ptr %10, align 4
  %33 = tail call ptr %32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi ptr [ inttoptr (i32 -22 to ptr), %29 ], [ %33, %31 ]
  tail call void @mutex_unlock(ptr noundef %21) #22
  %36 = load ptr, ptr %18, align 4
  tail call void @kobject_put(ptr noundef %36) #22
  br label %37

37:                                               ; preds = %34, %13, %9, %3
  %38 = phi ptr [ %35, %34 ], [ inttoptr (i32 -19 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %3 ], [ inttoptr (i32 -19 to ptr), %13 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iommu_sva_unbind_device(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 34
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.iommu_group, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @kobject_get(ptr noundef %18) #22
  %20 = getelementptr inbounds %struct.iommu_group, ptr %14, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %20) #22
  %21 = load ptr, ptr %9, align 4
  tail call void %21(ptr noundef %0) #22
  tail call void @mutex_unlock(ptr noundef %20) #22
  %22 = load ptr, ptr %17, align 4
  tail call void @kobject_put(ptr noundef %22) #22
  br label %23

23:                                               ; preds = %16, %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iommu_sva_get_pasid(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iommu_ops, ptr %6, i32 0, i32 33
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0) #22
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi i32 [ %13, %12 ], [ -1, %8 ], [ -1, %1 ]
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @iommu_domain_type_str(i32 noundef %0) unnamed_addr #13 {
  %2 = icmp ult i32 %0, 12
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [12 x ptr], ptr @switch.table.iommu_domain_type_str, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.25, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iommu_group_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void %3(ptr noundef %7) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  tail call void @ida_free(ptr noundef nonnull @iommu_group_ida, i32 noundef %10) #22
  %11 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.iommu_domain, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iommu_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef nonnull %12) #22
  br label %19

19:                                               ; preds = %14, %8
  %20 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #22
  tail call void @kfree(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.iommu_group_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %2) #22
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -5, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.iommu_group_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %2, i32 noundef %3) #22
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -5, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_show_resv_regions(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store volatile ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 @iommu_get_group_resv_regions(ptr noundef %0, ptr noundef nonnull %3)
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %27, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %11, %8 ], [ %6, %2 ]
  %10 = phi ptr [ %25, %8 ], [ %1, %2 ]
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.iommu_resv_region, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iommu_resv_region, ptr %9, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %13, -1
  %18 = add i32 %17, %16
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.iommu_resv_region, ptr %9, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [5 x ptr], ptr @iommu_group_resv_type_string, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef nonnull @.str.27, i64 noundef %14, i64 noundef %19, ptr noundef %23)
  %25 = getelementptr i8, ptr %10, i32 %24
  call void @kfree(ptr noundef %9) #22
  %26 = icmp eq ptr %11, %3
  br i1 %26, label %27, label %8

27:                                               ; preds = %8, %2
  %28 = phi ptr [ %1, %2 ], [ %25, %8 ]
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %1 to i32
  %31 = sub i32 %29, %30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_show_type(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp ult i32 %8, 12
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds [12 x ptr], ptr @switch.table.iommu_group_show_type, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7, %2
  %14 = phi ptr [ @.str.33, %7 ], [ @.str.33, %2 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %3) #22
  %15 = tail call ptr @strcpy(ptr noundef %1, ptr noundef nonnull %14)
  %16 = tail call i32 @strlen(ptr noundef nonnull %14)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_store_type(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = tail call zeroext i1 @capable(i32 noundef 21) #22
  br i1 %4, label %5, label %164

5:                                                ; preds = %3
  %6 = tail call zeroext i1 @capable(i32 noundef 17) #22
  br i1 %6, label %7, label %164

7:                                                ; preds = %5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3283, i32 noundef 9, ptr noundef null) #22
  br label %164

10:                                               ; preds = %7
  %11 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.39) #22
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.40) #22
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.41) #22
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef nonnull @.str.42) #22
  br i1 %17, label %18, label %164

18:                                               ; preds = %16, %14, %12, %10
  %19 = phi i1 [ false, %10 ], [ false, %12 ], [ true, %14 ], [ false, %16 ]
  %20 = phi i1 [ false, %10 ], [ false, %12 ], [ false, %14 ], [ true, %16 ]
  %21 = phi i32 [ 4, %10 ], [ 3, %12 ], [ 11, %14 ], [ 0, %16 ]
  %22 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %22) #22
  %23 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 2
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i32 [ 0, %18 ], [ %29, %24 ]
  %26 = phi ptr [ %23, %18 ], [ %27, %24 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %23
  %29 = add i32 %25, 1
  br i1 %28, label %30, label %24

30:                                               ; preds = %24
  %31 = icmp eq i32 %25, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  tail call void @mutex_unlock(ptr noundef %22) #22
  %33 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_group_store_type._rs, ptr noundef nonnull @__func__.iommu_group_store_type) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %164, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #21
  br label %164

37:                                               ; preds = %30
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr inbounds %struct.group_device, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr @get_device(ptr noundef %40) #22
  tail call void @mutex_unlock(ptr noundef %22) #22
  %42 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %42) #22
  %43 = tail call zeroext i1 @device_is_bound(ptr noundef %40) #22
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  br i1 %19, label %45, label %50

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %44
  %51 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_group_store_type._rs.44, ptr noundef nonnull @__func__.iommu_group_store_type) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %162, label %53

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #21
  br label %162

55:                                               ; preds = %45, %37
  tail call void @mutex_lock(ptr noundef %22) #22
  %56 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_change_dev_def_domain._rs, ptr noundef nonnull @__func__.iommu_change_dev_def_domain) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %159, label %64

64:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.46) #21
  br label %159

65:                                               ; preds = %65, %55
  %66 = phi i32 [ %70, %65 ], [ 0, %55 ]
  %67 = phi ptr [ %68, %65 ], [ %23, %55 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %23
  %70 = add i32 %66, 1
  br i1 %69, label %71, label %65

71:                                               ; preds = %65
  %72 = icmp eq i32 %66, 1
  br i1 %72, label %77, label %73

73:                                               ; preds = %71
  %74 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_change_dev_def_domain._rs.47, ptr noundef nonnull @__func__.iommu_change_dev_def_domain) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %159, label %76

76:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.48) #21
  br label %159

77:                                               ; preds = %71
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr inbounds %struct.group_device, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %40
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_change_dev_def_domain._rs.49, ptr noundef nonnull @__func__.iommu_change_dev_def_domain) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %159, label %85

85:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.50) #21
  br label %159

86:                                               ; preds = %77
  %87 = icmp eq ptr %57, null
  br i1 %87, label %159, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.bus_type, ptr %90, i32 0, i32 19
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %90, @pci_bus_type
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %40, i32 833
  %96 = load i40, ptr %95, align 1
  %97 = and i40 %96, 134217728
  %98 = icmp eq i40 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94, %88
  %100 = getelementptr inbounds %struct.iommu_ops, ptr %92, i32 0, i32 38
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = tail call i32 %101(ptr noundef %40) #22
  br label %105

105:                                              ; preds = %103, %99, %94
  %106 = phi i32 [ %104, %103 ], [ 3, %94 ], [ 0, %99 ]
  %107 = icmp eq i32 %106, 0
  br i1 %20, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, ptr @iommu_def_domain_type, align 4
  %110 = select i1 %107, i32 %109, i32 %106
  br label %119

111:                                              ; preds = %105
  %112 = icmp eq i32 %106, %21
  %113 = or i1 %107, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @___ratelimit(ptr noundef nonnull @iommu_change_dev_def_domain._rs.51, ptr noundef nonnull @__func__.iommu_change_dev_def_domain) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %159, label %117

117:                                              ; preds = %114
  %118 = tail call fastcc ptr @iommu_domain_type_str(i32 noundef %21) #22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.52, ptr noundef nonnull %118) #21
  br label %159

119:                                              ; preds = %111, %108
  %120 = phi i32 [ %21, %111 ], [ %110, %108 ]
  %121 = load i32, ptr %57, align 4
  %122 = icmp eq i32 %121, %120
  br i1 %122, label %161, label %123

123:                                              ; preds = %119
  %124 = icmp eq i32 %120, 11
  %125 = icmp eq i32 %121, 3
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %159, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %89, align 4
  %129 = tail call fastcc i32 @iommu_group_alloc_default_domain(ptr noundef %128, ptr noundef nonnull %0, i32 noundef %120) #22
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %127
  %132 = tail call fastcc i32 @iommu_create_device_direct_mappings(ptr noundef nonnull %0, ptr noundef %40) #22
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load ptr, ptr %56, align 4
  %136 = tail call fastcc i32 @__iommu_attach_device(ptr noundef %135, ptr noundef %40) #22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load ptr, ptr %56, align 4
  store ptr %139, ptr %58, align 4
  tail call void @mutex_unlock(ptr noundef %22) #22
  %140 = load ptr, ptr %56, align 4
  %141 = getelementptr inbounds %struct.iommu_domain, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.iommu_ops, ptr %142, i32 0, i32 15
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  tail call void %144(ptr noundef %40) #22
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds %struct.iommu_domain, ptr %57, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.iommu_ops, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  tail call void %151(ptr noundef nonnull %57) #22
  br label %162

152:                                              ; preds = %134, %131
  %153 = phi i32 [ %132, %131 ], [ %136, %134 ]
  %154 = load ptr, ptr %56, align 4
  %155 = getelementptr inbounds %struct.iommu_domain, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.iommu_ops, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  tail call void %158(ptr noundef %154) #22
  store ptr %57, ptr %56, align 4
  store ptr %57, ptr %58, align 4
  br label %159

159:                                              ; preds = %152, %127, %123, %117, %114, %86, %85, %82, %76, %73, %64, %61
  %160 = phi i32 [ -22, %123 ], [ -22, %114 ], [ -22, %117 ], [ -22, %86 ], [ -16, %82 ], [ -16, %85 ], [ -22, %73 ], [ -22, %76 ], [ -16, %61 ], [ -16, %64 ], [ %153, %152 ], [ %129, %127 ]
  tail call void @mutex_unlock(ptr noundef %22) #22
  br label %162

161:                                              ; preds = %119
  tail call void @mutex_unlock(ptr noundef %22) #22
  br label %162

162:                                              ; preds = %161, %159, %147, %53, %50
  %163 = phi i32 [ -16, %53 ], [ -16, %50 ], [ %160, %159 ], [ %2, %161 ], [ %2, %147 ]
  tail call void @mutex_unlock(ptr noundef %42) #22
  tail call void @put_device(ptr noundef %40) #22
  br label %164

164:                                              ; preds = %162, %35, %32, %16, %9, %5, %3
  %165 = phi i32 [ -22, %9 ], [ %163, %162 ], [ -13, %5 ], [ -13, %3 ], [ -22, %16 ], [ -22, %35 ], [ -22, %32 ]
  ret i32 %165
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_is_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iommu_group_alloc_default_domain(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bus_type, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iommu_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(i32 noundef %2) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.iommu_domain, ptr %12, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store i32 %2, ptr %12, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.iommu_ops, ptr %17, i32 0, i32 39
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iommu_domain, ptr %12, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = and i32 %2, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.iommu_ops, ptr %15, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef nonnull %12) #22
  br label %26

26:                                               ; preds = %23, %9, %5
  %27 = icmp eq i32 %2, 3
  br i1 %27, label %51, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %6, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iommu_ops, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr %33(i32 noundef 3) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.iommu_domain, ptr %34, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store i32 3, ptr %34, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.iommu_ops, ptr %39, i32 0, i32 39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.iommu_domain, ptr %34, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.iommu_ops, ptr %37, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef nonnull %34) #22
  br label %51

45:                                               ; preds = %14
  %46 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 9
  store ptr %12, ptr %46, align 4
  %47 = getelementptr inbounds %struct.iommu_group, ptr %1, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store ptr %12, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %45, %36, %31, %28, %26, %3
  %52 = phi i32 [ 0, %50 ], [ 0, %45 ], [ -12, %26 ], [ -12, %28 ], [ -12, %31 ], [ -12, %36 ], [ -12, %3 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_group_show_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #19 {
  %3 = getelementptr inbounds %struct.iommu_group, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_add_device_to_group(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #20

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_remove_device_from_group(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_devs_are_dma_aliases(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_acs_enabled(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iommu_bus_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  switch i32 %1, label %9 [
    i32 1, label %4
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @iommu_probe_device(ptr noundef %2)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %25

8:                                                ; preds = %3
  tail call void @iommu_release_device(ptr noundef %2)
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 34
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.iommu_group, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @kobject_get(ptr noundef %15) #22
  %17 = and i32 %1, -4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = add i32 %1, -1
  %21 = getelementptr inbounds %struct.iommu_group, ptr %11, i32 0, i32 4
  %22 = tail call i32 @blocking_notifier_call_chain(ptr noundef %21, i32 noundef %20, ptr noundef %2) #22
  br label %23

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %14, align 4
  tail call void @kobject_put(ptr noundef %24) #22
  br label %25

25:                                               ; preds = %23, %9, %8, %4
  %26 = phi i32 [ %7, %4 ], [ 1, %8 ], [ 0, %23 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_iommu_group(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @iommu_release_device(ptr noundef %0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.iommu_iotlb_gather, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %2, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iommu_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.iommu_ops, ptr %11, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %148, label %19, !prof !9

19:                                               ; preds = %15, %6
  %20 = getelementptr inbounds %struct.iommu_domain, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %148, label %23, !prof !9

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %148, label %27, !prof !9

27:                                               ; preds = %23
  %28 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #22, !range !17
  %29 = shl nuw i32 1, %28
  %30 = or i32 %2, %1
  %31 = or i32 %30, %3
  %32 = add i32 %29, -1
  %33 = and i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %132, label %37

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4
  %38 = or i32 %2, %1
  %39 = call i32 @llvm.ctlz.i32(i32 %3, i1 true) #22, !range !17
  %40 = lshr i32 -1, %39
  %41 = icmp eq i32 %38, 0
  %42 = call i32 @llvm.cttz.i32(i32 %38, i1 false) #22, !range !17
  %43 = sub nsw i32 31, %42
  %44 = lshr i32 -1, %43
  %45 = select i1 %41, i32 -1, i32 %44
  %46 = and i32 %21, %40
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %52, !prof !9

49:                                               ; preds = %27
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %1, ptr noundef nonnull %8, i32 noundef %3, i32 noundef %29) #21
  br label %148

51:                                               ; preds = %103, %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2419, 0\0A.popsection", ""() #22, !srcloc !32
  unreachable

52:                                               ; preds = %103, %37
  %53 = phi i32 [ %116, %103 ], [ %47, %37 ]
  %54 = phi i32 [ %107, %103 ], [ %38, %37 ]
  %55 = phi i32 [ %98, %103 ], [ %3, %37 ]
  %56 = phi i32 [ %104, %103 ], [ %1, %37 ]
  %57 = phi i32 [ %101, %103 ], [ %2, %37 ]
  %58 = phi ptr [ %105, %103 ], [ %11, %37 ]
  %59 = phi i32 [ %106, %103 ], [ %21, %37 ]
  %60 = call i32 @llvm.ctlz.i32(i32 %53, i1 true) #22, !range !17
  %61 = xor i32 %60, 31
  %62 = lshr i32 -1, %60
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %52
  %67 = call i32 @llvm.cttz.i32(i32 %64, i1 true) #22, !range !17
  %68 = shl nuw i32 1, %67
  %69 = xor i32 %57, %56
  %70 = add i32 %68, -1
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = and i32 %70, %54
  %75 = sub i32 %68, %74
  %76 = add i32 %75, %68
  %77 = icmp ugt i32 %76, %55
  %78 = select i1 %77, i32 %55, i32 %75
  br label %79

79:                                               ; preds = %73, %66, %52
  %80 = phi i32 [ %55, %66 ], [ %55, %52 ], [ %78, %73 ]
  %81 = shl nuw i32 1, %61
  %82 = getelementptr inbounds %struct.iommu_ops, ptr %58, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = lshr i32 %80, %61
  %87 = call i32 %83(ptr noundef %0, i32 noundef %56, i32 noundef %57, i32 noundef %81, i32 noundef %86, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %9) #22
  %88 = load i32, ptr %9, align 4
  br label %95

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.iommu_ops, ptr %58, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef %0, i32 noundef %56, i32 noundef %57, i32 noundef %81, i32 noundef %4, i32 noundef %5) #22
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 %81, i32 0
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i32 [ %88, %85 ], [ %94, %89 ]
  %97 = phi i32 [ %87, %85 ], [ %92, %89 ]
  %98 = sub i32 %55, %96
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = add i32 %57, %96
  store i32 %101, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %102 = icmp eq i32 %98, 0
  br i1 %102, label %132, label %103

103:                                              ; preds = %100
  %104 = add i32 %96, %56
  %105 = load ptr, ptr %10, align 4
  %106 = load i32, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4
  %107 = or i32 %101, %104
  %108 = call i32 @llvm.ctlz.i32(i32 %98, i1 true) #22, !range !17
  %109 = lshr i32 -1, %108
  %110 = icmp eq i32 %107, 0
  %111 = call i32 @llvm.cttz.i32(i32 %107, i1 false) #22, !range !17
  %112 = sub nsw i32 31, %111
  %113 = lshr i32 -1, %112
  %114 = select i1 %110, i32 -1, i32 %113
  %115 = and i32 %106, %109
  %116 = and i32 %115, %114
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %51, label %52, !prof !9

118:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %119 = sub i32 %3, %98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %120 = getelementptr inbounds i8, ptr %7, i32 20
  store i32 0, ptr %120, align 4, !annotation !20
  %121 = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %7, i32 0, i32 3
  store i32 -1, ptr %7, align 4
  %122 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds i8, ptr %7, i32 8
  store i32 0, ptr %123, align 4
  store ptr %121, ptr %121, align 4
  %124 = getelementptr inbounds i8, ptr %7, i32 16
  store ptr %121, ptr %124, align 4
  %125 = call fastcc i32 @__iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %119, ptr noundef nonnull %7) #22
  %126 = load ptr, ptr %10, align 4
  %127 = getelementptr inbounds %struct.iommu_ops, ptr %126, i32 0, i32 11
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %118
  call void %128(ptr noundef %0, ptr noundef nonnull %7) #22
  br label %131

131:                                              ; preds = %130, %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %148

132:                                              ; preds = %100, %35
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_map, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = tail call ptr @llvm.thread.pointer() #22
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  %147 = call i32 @__traceiter_map(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !39
  br label %148

148:                                              ; preds = %146, %135, %132, %131, %49, %23, %19, %15
  %149 = phi i32 [ -22, %49 ], [ -19, %19 ], [ -22, %23 ], [ %97, %131 ], [ -19, %15 ], [ 0, %132 ], [ 0, %135 ], [ 0, %146 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_unmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_io_page_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_attach_device_to_domain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_detach_device_from_domain(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }
attributes #25 = { nounwind readonly }
attributes #26 = { nounwind allocsize(1) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149294624}
!11 = !{i64 2149290448}
!12 = !{i64 2149290523, i64 2149290550, i64 2149290597, i64 2149290619, i64 2149290647, i64 2149290667}
!13 = !{i64 2149317627}
!14 = !{i64 2153496557}
!15 = !{i64 2153496721}
!16 = !{i64 2153647623, i64 2153648109, i64 2153647660, i64 2153647716, i64 2153647750, i64 2153647774, i64 2153647815, i64 2153647836, i64 2153647864, i64 2153647898}
!17 = !{i32 0, i32 33}
!18 = !{i64 2153475842}
!19 = !{i64 2153476028}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153640791, i64 2153641277, i64 2153640828, i64 2153640884, i64 2153640918, i64 2153640942, i64 2153640983, i64 2153641004, i64 2153641032, i64 2153641066}
!23 = !{i64 2153459134}
!24 = !{i64 2153459310}
!25 = !{i64 2153718342, i64 2153718829, i64 2153718379, i64 2153718435, i64 2153718469, i64 2153718493, i64 2153718534, i64 2153718555, i64 2153718583, i64 2153718617}
!26 = !{i64 2152134061, i64 2152134086}
!27 = !{i64 4630173}
!28 = !{i64 4630370}
!29 = !{i64 2152115649}
!30 = !{i64 2153513125}
!31 = !{i64 2153513293}
!32 = !{i64 2153749125, i64 2153749612, i64 2153749162, i64 2153749218, i64 2153749252, i64 2153749276, i64 2153749317, i64 2153749338, i64 2153749366, i64 2153749400}
!33 = !{i64 2153545134}
!34 = !{i64 2153545306}
!35 = !{i64 2153565134}
!36 = !{i64 2153565304}
!37 = !{i64 2153764036, i64 2153764523, i64 2153764073, i64 2153764129, i64 2153764163, i64 2153764187, i64 2153764228, i64 2153764249, i64 2153764277, i64 2153764311}
!38 = !{i64 2153529540}
!39 = !{i64 2153529692}
