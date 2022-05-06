; ModuleID = '/llk/IR/drivers/iommu/tegra-smmu.c_pt.bc'
source_filename = "../drivers/iommu/tegra-smmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.69 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.69 = type { ptr }
%struct.tegra_smmu_soc = type { ptr, i32, ptr, i32, ptr, i32, i8, i8, i32, i32 }
%struct.tegra_smmu = type { ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, ptr, %struct.mutex, %struct.list_head, ptr, %struct.iommu_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
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
%struct.tegra_smmu_as = type { %struct.iommu_domain, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.tegra_smmu_swgroup = type { ptr, i32, i32 }
%struct.tegra_mc_client = type { i32, ptr, %union.anon.64, i32, %struct.anon.65 }
%union.anon.64 = type { i32 }
%struct.anon.65 = type { %struct.anon.66, %struct.anon.67, %struct.anon.68 }
%struct.anon.66 = type { i32, i32 }
%struct.anon.67 = type { i32, i32, i32, i32 }
%struct.anon.68 = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tegra_smmu_group_soc = type { ptr, ptr, i32 }
%struct.tegra_smmu_group = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@tegra_smmu_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&smmu->lock\00", align 1
@tegra_smmu_ops = internal constant %struct.iommu_ops { ptr @tegra_smmu_capable, ptr @tegra_smmu_domain_alloc, ptr @tegra_smmu_domain_free, ptr @tegra_smmu_attach_dev, ptr @tegra_smmu_detach_dev, ptr @tegra_smmu_map, ptr null, ptr @tegra_smmu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @tegra_smmu_iova_to_phys, ptr @tegra_smmu_probe_device, ptr @tegra_smmu_release_device, ptr null, ptr @tegra_smmu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_smmu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4096, ptr null }, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@tegra_smmu_ahb_enable.ahb_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tegra_smmu_domain_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"drivers/iommu/tegra-smmu.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\014%s group from swgroup %u not found\0A\00", align 1
@__func__.tegra_smmu_enable = private unnamed_addr constant [18 x i8] c"tegra_smmu_enable\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to initialize fwspec: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to parse SW group ID: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"smmu\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"swgroups\00", align 1
@tegra_smmu_swgroups_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_smmu_swgroups_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@tegra_smmu_clients_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_smmu_clients_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"swgroup    enabled  ASID\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"------------------------\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%-9s  %-7s  %#04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"client       enabled\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"--------------------\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%-12s %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_smmu_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 88, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %108, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tegra_mc, ptr %2, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @devm_bitmap_zalloc(ptr noundef %0, i32 noundef %9, i32 noundef 3264) #8
  %11 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 7
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %108, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 4
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @tegra_smmu_probe.__key) #8
  %17 = getelementptr inbounds %struct.tegra_mc, ptr %2, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 3
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_mc, ptr %2, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 20
  %27 = and i32 %26, 31
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 false) #8, !range !8
  %35 = sub nuw nsw i32 32, %34
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = select i1 %33, i32 0, i32 %37
  %39 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 7
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i32 536870975, i32 671088703
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !11
  %46 = load ptr, ptr %19, align 4
  %47 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %39, align 4
  %50 = and i32 %49, %48
  %51 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 6
  %52 = load i8, ptr %51, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 536870912, i32 805306368
  %55 = or i32 %54, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %58, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 1) #8, !srcloc !11
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 28
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %67 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_smmu_ahb_enable.ahb_match, ptr noundef null) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %13
  %70 = tail call i32 @tegra_ahb_enable_smmu(ptr noundef nonnull %67) #8
  tail call void @of_node_put(ptr noundef nonnull %67) #8
  br label %71

71:                                               ; preds = %69, %13
  %72 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 11
  %73 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %0, align 4
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ %74, %71 ]
  %80 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %72, ptr noundef %0, ptr noundef null, ptr noundef %79) #8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = inttoptr i32 %80 to ptr
  br label %108

84:                                               ; preds = %78
  %85 = tail call i32 @iommu_device_register(ptr noundef %72, ptr noundef nonnull @tegra_smmu_ops, ptr noundef %0) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @tegra_smmu_ops) #8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @bus_set_iommu(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @tegra_smmu_ops) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #8
  %95 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 10
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef nonnull %94, ptr noundef nonnull %4, ptr noundef nonnull @tegra_smmu_swgroups_fops) #8
  %99 = load ptr, ptr %95, align 4
  %100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %99, ptr noundef nonnull %4, ptr noundef nonnull @tegra_smmu_clients_fops) #8
  br label %108

101:                                              ; preds = %90
  %102 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #8
  br label %103

103:                                              ; preds = %101, %87
  %104 = phi i32 [ %88, %87 ], [ %91, %101 ]
  tail call void @iommu_device_unregister(ptr noundef %72) #8
  br label %105

105:                                              ; preds = %103, %84
  %106 = phi i32 [ %85, %84 ], [ %104, %103 ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %72) #8
  %107 = inttoptr i32 %106 to ptr
  br label %108

108:                                              ; preds = %105, %97, %93, %82, %6, %3
  %109 = phi ptr [ %83, %82 ], [ %107, %105 ], [ inttoptr (i32 -12 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %4, %93 ], [ %4, %97 ]
  ret ptr %109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_smmu_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_smmu, ptr %0, i32 0, i32 11
  tail call void @iommu_device_unregister(ptr noundef %2) #8
  tail call void @iommu_device_sysfs_remove(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.tegra_smmu, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  tail call void @debugfs_remove(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_ahb_enable_smmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra_smmu_capable(i32 noundef %0) #4 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_smmu_domain_alloc(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %3, label %30

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 72) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_smmu_as, ptr %5, i32 0, i32 9
  store i32 -536870912, ptr %8, align 4
  %9 = tail call ptr @__alloc_pages(i32 noundef 3521, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %10 = getelementptr inbounds %struct.tegra_smmu_as, ptr %5, i32 0, i32 6
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %30

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 4096) #9
  %16 = getelementptr inbounds %struct.tegra_smmu_as, ptr %5, i32 0, i32 4
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @__free_pages(ptr noundef nonnull %9, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %30

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 4096) #9
  %22 = getelementptr inbounds %struct.tegra_smmu_as, ptr %5, i32 0, i32 5
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @kfree(ptr noundef nonnull %15) #8
  tail call void @__free_pages(ptr noundef nonnull %9, i32 noundef 0) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tegra_smmu_as, ptr %5, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5, i32 1
  store i32 -1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5, i32 2
  store i8 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %25, %24, %18, %12, %3, %1
  %31 = phi ptr [ %5, %25 ], [ null, %24 ], [ null, %18 ], [ null, %12 ], [ null, %1 ], [ null, %3 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_smmu_domain_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @tegra_smmu_domain_free.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %1
  store i1 true, ptr @tegra_smmu_domain_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 330, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_attach_dev(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %192, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %192, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.iommu_fwspec, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %192, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 8
  %18 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 7
  %22 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 5
  %23 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 8
  %24 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 7
  %25 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 3
  %26 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 2
  %27 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 9
  %28 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %172, %16
  %30 = phi i32 [ 0, %16 ], [ %173, %172 ]
  tail call void @mutex_lock(ptr noundef %17) #8
  %31 = load i32, ptr %18, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %29
  %34 = load ptr, ptr %19, align 4
  %35 = load ptr, ptr %20, align 4
  %36 = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %35, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  store i32 %36, ptr %21, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %99, label %38

38:                                               ; preds = %33
  %39 = lshr i32 %36, 12
  %40 = load i32, ptr %22, align 4
  %41 = and i32 %40, %39
  %42 = icmp eq i32 %41, %39
  br i1 %42, label %43, label %95

43:                                               ; preds = %38
  %44 = load ptr, ptr %24, align 4
  %45 = load ptr, ptr %25, align 4
  %46 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %45, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @_find_first_zero_bit_le(ptr noundef %44, i32 noundef %47) #8
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %49, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load i32, ptr %21, align 4
  br label %95

55:                                               ; preds = %43
  %56 = load ptr, ptr %24, align 4
  tail call void @_set_bit(i32 noundef %48, ptr noundef %56) #8
  store i32 %48, ptr %23, align 4
  %57 = load i32, ptr %21, align 4
  %58 = load ptr, ptr %26, align 4
  %59 = getelementptr inbounds %struct.tegra_mc, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tegra_mc_soc, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, 32
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %65 = load ptr, ptr %10, align 4
  %66 = getelementptr i8, ptr %65, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #8, !srcloc !11
  br label %67

67:                                               ; preds = %64, %55
  %68 = or i32 %57, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %69 = load ptr, ptr %10, align 4
  %70 = getelementptr i8, ptr %69, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !11
  %71 = load i32, ptr %23, align 4
  %72 = load ptr, ptr %25, align 4
  %73 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %72, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 4
  %76 = select i1 %75, i32 29, i32 24
  %77 = shl i32 %71, %76
  %78 = or i32 %77, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %79 = load ptr, ptr %10, align 4
  %80 = getelementptr i8, ptr %79, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #8, !srcloc !11
  %81 = load i32, ptr %23, align 4
  %82 = and i32 %81, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %83 = load ptr, ptr %10, align 4
  %84 = getelementptr i8, ptr %83, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #8, !srcloc !11
  %85 = load i32, ptr %21, align 4
  %86 = lshr i32 %85, 12
  %87 = load i32, ptr %27, align 4
  %88 = or i32 %86, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %89 = load ptr, ptr %10, align 4
  %90 = getelementptr i8, ptr %89, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #8, !srcloc !11
  %91 = load ptr, ptr %10, align 4
  %92 = getelementptr i8, ptr %91, i32 28
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  store ptr %10, ptr %28, align 4
  %94 = load i32, ptr %18, align 4
  br label %102

95:                                               ; preds = %53, %38
  %96 = phi i32 [ %54, %53 ], [ %36, %38 ]
  %97 = phi i32 [ -28, %53 ], [ -12, %38 ]
  %98 = load ptr, ptr %19, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %98, i32 noundef %96, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  br label %99

99:                                               ; preds = %95, %33
  %100 = phi i32 [ %97, %95 ], [ -12, %33 ]
  tail call void @mutex_unlock(ptr noundef %17) #8
  %101 = icmp eq i32 %30, 0
  br i1 %101, label %192, label %176

102:                                              ; preds = %67, %29
  %103 = phi i32 [ %94, %67 ], [ %31, %29 ]
  %104 = add i32 %103, 1
  store i32 %104, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef %17) #8
  %105 = getelementptr %struct.iommu_fwspec, ptr %8, i32 0, i32 4, i32 %30
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %23, align 4
  %108 = load ptr, ptr %25, align 4
  %109 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %108, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %143, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %108, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  br label %115

115:                                              ; preds = %120, %112
  %116 = phi i32 [ 0, %112 ], [ %121, %120 ]
  %117 = getelementptr %struct.tegra_smmu_swgroup, ptr %114, i32 %116, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %106
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = add nuw i32 %116, 1
  %122 = icmp eq i32 %121, %110
  br i1 %122, label %143, label %115

123:                                              ; preds = %115
  %124 = getelementptr %struct.tegra_smmu_swgroup, ptr %114, i32 %116
  %125 = icmp eq ptr %124, null
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = getelementptr %struct.tegra_smmu_swgroup, ptr %114, i32 %116, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %10, align 4
  %130 = getelementptr i8, ptr %129, i32 %128
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %132 = and i32 %131, 2147483520
  %133 = and i32 %107, 127
  %134 = or i32 %133, %132
  %135 = or i32 %134, -2147483648
  %136 = load i32, ptr %127, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %137 = load ptr, ptr %10, align 4
  %138 = getelementptr i8, ptr %137, i32 %136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %135) #8, !srcloc !11
  %139 = load ptr, ptr %25, align 4
  %140 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %172, label %145

143:                                              ; preds = %123, %120, %102
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tegra_smmu_enable, i32 noundef %106) #10
  br label %172

145:                                              ; preds = %166, %126
  %146 = phi ptr [ %167, %166 ], [ %139, %126 ]
  %147 = phi i32 [ %168, %166 ], [ 0, %126 ]
  %148 = load ptr, ptr %146, align 4
  %149 = getelementptr %struct.tegra_mc_client, ptr %148, i32 %147, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, %106
  br i1 %151, label %152, label %166

152:                                              ; preds = %145
  %153 = getelementptr %struct.tegra_mc_client, ptr %148, i32 %147, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = load ptr, ptr %10, align 4
  %156 = getelementptr i8, ptr %155, i32 %154
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %158 = getelementptr inbounds %struct.anon.66, ptr %153, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = shl nuw i32 1, %159
  %161 = or i32 %160, %157
  %162 = load i32, ptr %153, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %163 = load ptr, ptr %10, align 4
  %164 = getelementptr i8, ptr %163, i32 %162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %161) #8, !srcloc !11
  %165 = load ptr, ptr %25, align 4
  br label %166

166:                                              ; preds = %152, %145
  %167 = phi ptr [ %146, %145 ], [ %165, %152 ]
  %168 = add nuw i32 %147, 1
  %169 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %167, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp ult i32 %168, %170
  br i1 %171, label %145, label %172

172:                                              ; preds = %166, %143, %126
  %173 = add nuw i32 %30, 1
  %174 = load i32, ptr %13, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %29, label %192

176:                                              ; preds = %190, %99
  %177 = phi i32 [ %178, %190 ], [ %30, %99 ]
  %178 = add i32 %177, -1
  %179 = getelementptr %struct.iommu_fwspec, ptr %8, i32 0, i32 4, i32 %178
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %23, align 4
  tail call fastcc void @tegra_smmu_disable(ptr noundef %10, i32 noundef %180, i32 noundef %181)
  tail call void @mutex_lock(ptr noundef %17) #8
  %182 = load i32, ptr %18, align 4
  %183 = add i32 %182, -1
  store i32 %183, ptr %18, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load i32, ptr %23, align 4
  %187 = load ptr, ptr %24, align 4
  tail call void @_clear_bit(i32 noundef %186, ptr noundef %187) #8
  %188 = load ptr, ptr %19, align 4
  %189 = load i32, ptr %21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %188, i32 noundef %189, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  store ptr null, ptr %28, align 4
  br label %190

190:                                              ; preds = %185, %176
  tail call void @mutex_unlock(ptr noundef %17) #8
  %191 = icmp eq i32 %178, 0
  br i1 %191, label %192, label %176

192:                                              ; preds = %190, %172, %99, %12, %6, %2
  %193 = phi i32 [ -2, %6 ], [ -2, %2 ], [ %100, %99 ], [ -19, %12 ], [ %100, %190 ], [ 0, %172 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_smmu_detach_dev(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.iommu_fwspec, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 8
  %19 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 7
  %21 = getelementptr inbounds %struct.tegra_smmu, ptr %10, i32 0, i32 1
  %22 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 7
  br label %23

23:                                               ; preds = %36, %16
  %24 = phi i32 [ 0, %16 ], [ %37, %36 ]
  %25 = getelementptr %struct.iommu_fwspec, ptr %8, i32 0, i32 4, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %17, align 4
  tail call fastcc void @tegra_smmu_disable(ptr noundef %10, i32 noundef %26, i32 noundef %27)
  tail call void @mutex_lock(ptr noundef %18) #8
  %28 = load i32, ptr %19, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %19, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, ptr %17, align 4
  %33 = load ptr, ptr %20, align 4
  tail call void @_clear_bit(i32 noundef %32, ptr noundef %33) #8
  %34 = load ptr, ptr %21, align 4
  %35 = load i32, ptr %22, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %35, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  store ptr null, ptr %9, align 4
  br label %36

36:                                               ; preds = %31, %23
  tail call void @mutex_unlock(ptr noundef %18) #8
  %37 = add nuw i32 %24, 1
  %38 = load i32, ptr %13, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %23, label %40

40:                                               ; preds = %36, %12, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = lshr i32 %1, 22
  %10 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %60

15:                                               ; preds = %6
  %16 = and i32 %5, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = or i32 %5, 257
  %20 = tail call ptr @__alloc_pages(i32 noundef %19, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  br label %25

21:                                               ; preds = %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  %22 = or i32 %5, 257
  %23 = tail call ptr @__alloc_pages(i32 noundef %22, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32 [ %24, %21 ], [ %8, %18 ]
  %27 = phi ptr [ %23, %21 ], [ %20, %18 ]
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr ptr, ptr %28, i32 %9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %27, null
  br i1 %31, label %39, label %33

33:                                               ; preds = %25
  br i1 %32, label %60, label %34

34:                                               ; preds = %33
  tail call void @__free_pages(ptr noundef nonnull %27, i32 noundef 0) #8
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr ptr, ptr %35, i32 %9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %102, label %60

39:                                               ; preds = %25
  br i1 %32, label %102, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tegra_smmu, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @dma_map_page_attrs(ptr noundef %44, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @__free_pages(ptr noundef nonnull %27, i32 noundef 0) #8
  br label %102

48:                                               ; preds = %40
  %49 = lshr i32 %45, 12
  %50 = getelementptr inbounds %struct.tegra_smmu, ptr %42, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %43, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %45, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  tail call void @__free_pages(ptr noundef nonnull %27, i32 noundef 0) #8
  br label %102

56:                                               ; preds = %48
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr ptr, ptr %57, i32 %9
  store ptr %27, ptr %58, align 4
  %59 = or i32 %49, -268435456
  tail call fastcc void @tegra_smmu_set_pde(ptr noundef %0, i32 noundef %1, i32 noundef %59) #8
  br label %73

60:                                               ; preds = %34, %33, %6
  %61 = phi i32 [ %26, %33 ], [ %8, %6 ], [ %26, %34 ]
  %62 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = tail call ptr @page_address(ptr noundef %65) #8
  %67 = getelementptr i32, ptr %66, i32 %9
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tegra_smmu, ptr %63, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, %68
  %72 = shl i32 %71, 12
  br label %73

73:                                               ; preds = %60, %56
  %74 = phi i32 [ %26, %56 ], [ %61, %60 ]
  %75 = phi i32 [ %45, %56 ], [ %72, %60 ]
  %76 = load ptr, ptr %10, align 4
  %77 = getelementptr ptr, ptr %76, i32 %9
  %78 = load ptr, ptr %77, align 4
  %79 = tail call ptr @page_address(ptr noundef %78) #8
  %80 = lshr i32 %1, 12
  %81 = and i32 %80, 1023
  %82 = getelementptr i32, ptr %79, i32 %81
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %73
  %85 = load i32, ptr %82, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i32, ptr %89, i32 %9
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = and i32 %4, 1
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 536870912, i32 -1610612736
  %97 = shl i32 %4, 29
  %98 = and i32 %97, 1073741824
  %99 = lshr i32 %2, 12
  %100 = or i32 %98, %99
  %101 = or i32 %100, %96
  tail call fastcc void @tegra_smmu_set_pte(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %82, i32 noundef %75, i32 noundef %101) #8
  br label %102

102:                                              ; preds = %93, %73, %54, %47, %39, %34
  %103 = phi i32 [ %26, %34 ], [ %26, %47 ], [ %74, %73 ], [ %74, %93 ], [ %26, %54 ], [ %26, %39 ]
  %104 = phi i32 [ -12, %34 ], [ -12, %47 ], [ -12, %73 ], [ 0, %93 ], [ -12, %54 ], [ -12, %39 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %103) #8
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = lshr i32 %1, 22
  %8 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %9, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @page_address(ptr noundef %17) #8
  %19 = getelementptr i32, ptr %18, i32 %7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_smmu, ptr %15, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  %24 = shl i32 %23, 12
  %25 = tail call ptr @page_address(ptr noundef nonnull %11) #8
  %26 = lshr i32 %1, 12
  %27 = and i32 %26, 1023
  %28 = getelementptr i32, ptr %25, i32 %27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %13
  %31 = load i32, ptr %28, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  tail call fastcc void @tegra_smmu_set_pte(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %28, i32 noundef %24, i32 noundef 0) #8
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr ptr, ptr %34, i32 %7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i32, ptr %38, i32 %7
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = load ptr, ptr %14, align 4
  %45 = load ptr, ptr %16, align 4
  %46 = tail call ptr @page_address(ptr noundef %45) #8
  %47 = getelementptr i32, ptr %46, i32 %7
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tegra_smmu, ptr %44, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, %48
  %52 = shl i32 %51, 12
  tail call fastcc void @tegra_smmu_set_pde(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  %53 = getelementptr inbounds %struct.tegra_smmu, ptr %44, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %52, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #8
  tail call void @__free_pages(ptr noundef %36, i32 noundef 0) #8
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr ptr, ptr %55, i32 %7
  store ptr null, ptr %56, align 4
  br label %57

57:                                               ; preds = %43, %33, %30, %13, %4
  %58 = phi i32 [ 0, %30 ], [ 0, %13 ], [ %2, %33 ], [ %2, %43 ], [ 0, %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_iova_to_phys(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 22
  %4 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @page_address(ptr noundef %11) #8
  %13 = tail call ptr @page_address(ptr noundef nonnull %7) #8
  %14 = lshr i32 %1, 12
  %15 = and i32 %14, 1023
  %16 = getelementptr i32, ptr %13, i32 %15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %16, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_smmu, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %19
  %27 = shl i32 %26, 12
  %28 = and i32 %1, 4095
  %29 = or i32 %27, %28
  br label %30

30:                                               ; preds = %21, %18, %9, %2
  %31 = phi i32 [ %29, %21 ], [ 0, %18 ], [ 0, %9 ], [ 0, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_smmu_probe_device(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !15
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %40, %1
  %8 = phi i32 [ %42, %40 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 4
  %10 = call ptr @of_find_device_by_node(ptr noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void @put_device(ptr noundef %17) #8
  br label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tegra_mc, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tegra_smmu, ptr %20, i32 0, i32 11, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 3
  %27 = call i32 @iommu_fwspec_init(ptr noundef %0, ptr noundef %26, ptr noundef %24) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %27) #10
  br label %36

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.iommu_ops, ptr %24, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, ptr noundef nonnull %2) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %33) #10
  call void @iommu_fwspec_free(ptr noundef %0) #8
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %33, %35 ], [ %27, %29 ]
  %38 = load ptr, ptr %2, align 4
  call void @of_node_put(ptr noundef %38) #8
  %39 = inttoptr i32 %37 to ptr
  br label %55

40:                                               ; preds = %30, %18, %16, %7
  %41 = load ptr, ptr %2, align 4
  call void @of_node_put(ptr noundef %41) #8
  %42 = add i32 %8, 1
  %43 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %42, ptr noundef nonnull %2) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %7, label %45

45:                                               ; preds = %40, %1
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dev_iommu, ptr %47, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tegra_smmu, ptr %51, i32 0, i32 11
  br label %55

55:                                               ; preds = %53, %49, %45, %36
  %56 = phi ptr [ %39, %36 ], [ %54, %53 ], [ inttoptr (i32 -19 to ptr), %49 ], [ inttoptr (i32 -19 to ptr), %45 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  ret ptr %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra_smmu_release_device(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_smmu_device_group(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %7, %5 ], [ null, %1 ]
  %12 = phi ptr [ %9, %5 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.iommu_fwspec, ptr %11, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_smmu, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %16, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %39, %20
  %24 = phi i32 [ 0, %20 ], [ %40, %39 ]
  %25 = getelementptr %struct.tegra_smmu_group_soc, ptr %22, i32 %24, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.tegra_smmu_group_soc, ptr %22, i32 %24, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %34

31:                                               ; preds = %34
  %32 = add nuw i32 %35, 1
  %33 = icmp eq i32 %32, %26
  br i1 %33, label %39, label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ 0, %28 ], [ %32, %31 ]
  %36 = getelementptr i32, ptr %30, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %14
  br i1 %38, label %42, label %31

39:                                               ; preds = %31, %23
  %40 = add nuw i32 %24, 1
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %44, label %23

42:                                               ; preds = %34
  %43 = getelementptr %struct.tegra_smmu_group_soc, ptr %22, i32 %24
  br label %44

44:                                               ; preds = %42, %39, %10
  %45 = phi ptr [ %43, %42 ], [ null, %10 ], [ null, %39 ]
  %46 = getelementptr inbounds %struct.tegra_smmu, ptr %12, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %46) #8
  %47 = getelementptr inbounds %struct.tegra_smmu, ptr %12, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %69, label %50

50:                                               ; preds = %44
  %51 = icmp eq ptr %45, null
  br label %52

52:                                               ; preds = %66, %50
  %53 = phi ptr [ %48, %50 ], [ %67, %66 ]
  %54 = getelementptr inbounds %struct.tegra_smmu_group, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %14
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  br i1 %51, label %66, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.tegra_smmu_group, ptr %53, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %45
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %52
  %63 = getelementptr inbounds %struct.tegra_smmu_group, ptr %53, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = tail call ptr @iommu_group_ref_get(ptr noundef %64) #8
  tail call void @mutex_unlock(ptr noundef %46) #8
  br label %103

66:                                               ; preds = %58, %57
  %67 = load ptr, ptr %53, align 4
  %68 = icmp eq ptr %67, %47
  br i1 %68, label %69, label %52

69:                                               ; preds = %66, %44
  %70 = getelementptr inbounds %struct.tegra_smmu, ptr %12, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = tail call noalias ptr @devm_kmalloc(ptr noundef %71, i32 noundef 24, i32 noundef 3520) #8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  tail call void @mutex_unlock(ptr noundef %46) #8
  br label %103

75:                                               ; preds = %69
  store volatile ptr %72, ptr %72, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %72, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tegra_smmu_group, ptr %72, i32 0, i32 4
  store i32 %14, ptr %77, align 4
  %78 = getelementptr inbounds %struct.tegra_smmu_group, ptr %72, i32 0, i32 1
  store ptr %12, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tegra_smmu_group, ptr %72, i32 0, i32 2
  store ptr %45, ptr %79, align 4
  %80 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, @pci_bus_type
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = tail call ptr @pci_device_group(ptr noundef %0) #8
  br label %87

85:                                               ; preds = %75
  %86 = tail call ptr @generic_device_group(ptr noundef %0) #8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi ptr [ %84, %83 ], [ %86, %85 ]
  %89 = getelementptr inbounds %struct.tegra_smmu_group, ptr %72, i32 0, i32 3
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load ptr, ptr %70, align 4
  tail call void @devm_kfree(ptr noundef %92, ptr noundef nonnull %72) #8
  tail call void @mutex_unlock(ptr noundef %46) #8
  br label %103

93:                                               ; preds = %87
  tail call void @iommu_group_set_iommudata(ptr noundef %88, ptr noundef nonnull %72, ptr noundef nonnull @tegra_smmu_group_release) #8
  %94 = icmp eq ptr %45, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %89, align 4
  %97 = load ptr, ptr %45, align 4
  %98 = tail call i32 @iommu_group_set_name(ptr noundef %96, ptr noundef %97) #8
  br label %99

99:                                               ; preds = %95, %93
  %100 = getelementptr inbounds %struct.tegra_smmu, ptr %12, i32 0, i32 4, i32 1
  %101 = load ptr, ptr %100, align 4
  store ptr %72, ptr %100, align 4
  store ptr %47, ptr %72, align 4
  store ptr %101, ptr %76, align 4
  store volatile ptr %72, ptr %101, align 4
  tail call void @mutex_unlock(ptr noundef %46) #8
  %102 = load ptr, ptr %89, align 4
  br label %103

103:                                              ; preds = %99, %91, %74, %62
  %104 = phi ptr [ %65, %62 ], [ null, %91 ], [ %102, %99 ], [ null, %74 ]
  ret ptr %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = tail call ptr @of_find_device_by_node(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @put_device(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.tegra_mc, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dev_iommu, ptr %14, i32 0, i32 5
  store ptr %12, ptr %15, align 4
  %16 = call i32 @iommu_fwspec_add_ids(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_disable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_smmu, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.tegra_smmu_swgroup, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %36, label %12

20:                                               ; preds = %12
  %21 = getelementptr %struct.tegra_smmu_swgroup, ptr %11, i32 %13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = getelementptr %struct.tegra_smmu_swgroup, ptr %11, i32 %13, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %29 = and i32 %28, 2147483520
  %30 = and i32 %2, 127
  %31 = or i32 %29, %30
  %32 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #8, !srcloc !11
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %23, %20, %17, %3
  %37 = phi ptr [ %5, %3 ], [ %35, %23 ], [ %5, %20 ], [ %5, %17 ]
  %38 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %63, %36
  %42 = phi ptr [ %64, %63 ], [ %37, %36 ]
  %43 = phi i32 [ %65, %63 ], [ 0, %36 ]
  %44 = load ptr, ptr %42, align 4
  %45 = getelementptr %struct.tegra_mc_client, ptr %44, i32 %43, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %1
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = getelementptr %struct.tegra_mc_client, ptr %44, i32 %43, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i8, ptr %51, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %54 = getelementptr inbounds %struct.anon.66, ptr %49, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = shl nuw i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = load i32, ptr %49, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #8, !srcloc !11
  %62 = load ptr, ptr %4, align 4
  br label %63

63:                                               ; preds = %48, %41
  %64 = phi ptr [ %42, %41 ], [ %62, %48 ]
  %65 = add nuw i32 %43, 1
  %66 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %64, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %41, label %69

69:                                               ; preds = %63, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_set_pte(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %2 to i32
  %9 = and i32 %8, 4095
  store i32 %4, ptr %2, align 4
  %10 = getelementptr inbounds %struct.tegra_smmu, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %9, %3
  tail call void @dma_sync_single_for_device(ptr noundef %11, i32 noundef %12, i32 noundef 4, i32 noundef 1) #8
  %13 = getelementptr inbounds %struct.tegra_smmu, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_mc, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_mc_soc, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_mc_soc, ptr %16, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #8, !srcloc !11
  br label %25

25:                                               ; preds = %22, %5
  %26 = sub i32 0, %18
  %27 = and i32 %9, %26
  %28 = add i32 %27, %3
  %29 = or i32 %28, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !11
  %32 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tegra_smmu, ptr %7, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %35, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 4
  %39 = select i1 %38, i32 29, i32 24
  %40 = shl i32 %33, %39
  %41 = lshr i32 %1, 12
  %42 = or i32 %40, %41
  %43 = or i32 %42, -2147483645
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr i8, ptr %44, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !11
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr i8, ptr %46, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_set_pde(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = lshr i32 %1, 22
  %5 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @page_address(ptr noundef %8) #8
  %10 = shl nuw nsw i32 %4, 2
  %11 = getelementptr i32, ptr %9, i32 %4
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_smmu, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %10
  tail call void @dma_sync_single_for_device(ptr noundef %13, i32 noundef %16, i32 noundef 4, i32 noundef 1) #8
  %17 = load i32, ptr %14, align 4
  %18 = getelementptr inbounds %struct.tegra_smmu, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tegra_mc, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tegra_mc_soc, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_mc_soc, ptr %21, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #8, !srcloc !11
  br label %30

30:                                               ; preds = %27, %3
  %31 = sub i32 0, %23
  %32 = and i32 %10, %31
  %33 = add i32 %32, %17
  %34 = or i32 %33, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !11
  %37 = getelementptr inbounds %struct.tegra_smmu_as, ptr %0, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tegra_smmu, ptr %6, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %40, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 4
  %44 = select i1 %43, i32 29, i32 24
  %45 = shl i32 %38, %44
  %46 = lshr i32 %1, 12
  %47 = and i32 %46, 1047552
  %48 = or i32 %45, %47
  %49 = or i32 %48, -2147483646
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr i8, ptr %50, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #8, !srcloc !11
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr i8, ptr %52, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_set_iommudata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_smmu_group_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_smmu_group, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_smmu, ptr %3, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_group_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_swgroups_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tegra_smmu_swgroups_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_swgroups_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  %5 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %26, %10 ], [ %6, %2 ]
  %12 = phi i32 [ %25, %10 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %11, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.tegra_smmu_swgroup, ptr %14, i32 %12
  %16 = getelementptr %struct.tegra_smmu_swgroup, ptr %14, i32 %12, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %21 = icmp sgt i32 %20, -1
  %22 = select i1 %21, ptr @.str.13, ptr @.str.12
  %23 = and i32 %20, 127
  %24 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %24, ptr noundef nonnull %22, i32 noundef %23) #8
  %25 = add nuw i32 %12, 1
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %10, label %30

30:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_clients_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tegra_smmu_clients_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_smmu_clients_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16) #8
  %5 = getelementptr inbounds %struct.tegra_smmu, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %28, %10 ], [ %6, %2 ]
  %12 = phi i32 [ %27, %10 ], [ 0, %2 ]
  %13 = load ptr, ptr %11, align 4
  %14 = getelementptr %struct.tegra_mc_client, ptr %13, i32 %12, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %19 = getelementptr inbounds %struct.anon.66, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.13, ptr @.str.12
  %25 = getelementptr %struct.tegra_mc_client, ptr %13, i32 %12, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %26, ptr noundef nonnull %24) #8
  %27 = add nuw i32 %12, 1
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %10, label %32

32:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i8 0, i8 2}
!10 = !{i64 2153406451}
!11 = !{i64 4620714}
!12 = !{i64 4621132}
!13 = !{i64 2153407095}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
