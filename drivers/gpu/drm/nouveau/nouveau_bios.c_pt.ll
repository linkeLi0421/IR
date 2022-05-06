; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bios.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bios.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.90, %struct.anon.91, %struct.anon.93, ptr, %struct.anon.94, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.95, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.101 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.90 = type { ptr, i32, i32, i8 }
%struct.anon.91 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.93 = type { i64, i64 }
%struct.anon.94 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.86 }
%struct.anon.86 = type { ptr, i64 }
%struct.anon.95 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.80, i8 }
%union.anon.80 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.96 = type { i32 }
%struct.anon.97 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.98 = type { i16, i16 }
%struct.anon.99 = type { i16, i16, i16, %struct.anon.100, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, %struct.mutex, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.lvdstableheader = type { i8, i8, i8 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.anon.181 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.154, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.154 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bit_entry = type { i8, i8, i16, i16, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.anon.183 = type { %struct.nvkm_object, ptr }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.177 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.177 = type { i8, i8, i8, i8, i8 }
%struct.anon.82 = type { %struct.sor_conf, i8, i8, i8 }

@.str = private unnamed_addr constant [29 x i8] c"%s: Calling LVDS script %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: LVDS table revision not currently supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Pixel clock comparison table not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: TMDS output init script not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: No DCB data found in VBIOS\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: DCB version 0x%02x unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DEV_REC\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: No useful DCB data in VBIOS\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: DCB header validation failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: Found EDID in BIOS\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"%s: Adaptor not initialised, running VBIOS init tables.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"%s: LVDS output init script not found\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"%s: Pointer to LVDS manufacturer table invalid\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%s: LVDS table header not understood\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"%s: LVDS table revision %d.%d not currently supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"%s: 0x%04X: Parsing digital output script table\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"%s: Too few entries in HW sequencer table for requested entry\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%s: Unknown HW sequencer entry size\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s: Loading NV17 power sequencing microcode\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"%s: BIT table '%c' not found\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"%s: BIT i table too short for needed information\0A\00", align 1
@.str.21 = private unnamed_addr constant [73 x i8] c"%s: BIT i table not long enough for DAC load detection comparison table\0A\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"%s: DAC load detection comparison table version %d.%d not known\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"%s: Do not understand BIT A table\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: Pointer to BIT loadval table invalid\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"%s: BIT loadval table version %d.%d not supported\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"%s: Do not understand BIT loadval table\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: Do not understand BIT display table\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"%s: Do not understand init table\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"%s: Do not understand BIT LVDS table\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"%s: Do not understand BIT TMDS table\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"%s: Pointer to TMDS table not found\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"%s: TMDS table version %d.%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"%s: TMDS table script pointers not stubbed\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"%s: BMP version %d.%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"%s: You have an unsupported BMP version. Please send in your bios\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"%s: Bad BMP checksum\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"%s: DCB version %d.%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"%s: DCB conn %02d: %04x\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"%s: DCB conn %02d: %08x\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%s: DCB outp %02d: %08x %08x\0A\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"%s: Unknown LVDS configuration bits, please report\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"%s: Unknown DCB type %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: Merging DCB entries %d and %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"%s: Pointer to flat panel table invalid\0A\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"%s: FP table revision %d.%d not currently supported\0A\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"%s: Pointer to flat panel xlat table invalid\0A\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"%s: Bad flat panel table index\0A\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"%s: BIOS FP mode: %dx%d (%dkHz pixel clock)\0A\00", align 1
@switch.table.parse_dcb_entry.49 = private unnamed_addr constant [4 x i32] [i32 33559296, i32 16843538, i32 16843536, i32 33694562], align 4
@switch.table.parse_dcb_entry.50 = private unnamed_addr constant [4 x i32] [i32 40, i32 131120, i32 40, i32 131088], align 4
@switch.table.parse_dcb_entry.51 = private unnamed_addr constant [4 x i32] [i32 33563392, i32 16843538, i32 67240720, i32 33690402], align 4
@switch.table.parse_dcb_entry.52 = private unnamed_addr constant [3 x i32] [i32 162000, i32 270000, i32 540000], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_lvds_script(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %3, 1
  %19 = or i32 %18, %2
  %20 = icmp ne i32 %17, %19
  %21 = icmp ne i8 %15, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %99

23:                                               ; preds = %5
  %24 = icmp ugt i8 %15, 47
  %25 = icmp eq i32 %3, 1
  %26 = and i1 %25, %24
  br i1 %26, label %99, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 16
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i8 1, ptr %28, align 4
  %32 = tail call i32 @call_lvds_script(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef %4)
  br label %33

33:                                               ; preds = %31, %27
  switch i32 %3, label %45 [
    i32 5, label %34
    i32 2, label %38
  ]

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 8
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 7
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ 2, %34 ], [ 6, %38 ]
  %44 = tail call i32 @call_lvds_script(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %43, i32 noundef %4)
  br label %45

45:                                               ; preds = %42, %38, %34, %33
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str, ptr noundef %52, i32 noundef %3) #10
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56, !prof !9

56:                                               ; preds = %45
  %57 = getelementptr i8, ptr %54, i32 6817060
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %61

59:                                               ; preds = %45
  %60 = tail call i32 @nvif_object_rd(ptr noundef %8, i32 noundef 4, i64 noundef 6817060) #11
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  %63 = and i32 %62, 327680
  %64 = icmp ult i8 %15, 48
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @call_lvds_manufacturer_script(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %69

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @run_lvds_table(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %19, ptr %16, align 4
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3, i32 0, i32 6
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75, !prof !9

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %73, i32 6817060
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %81

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3
  %80 = tail call i32 @nvif_object_rd(ptr noundef %79, i32 noundef 4, i64 noundef 6817060) #11
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i32 [ %77, %75 ], [ %80, %78 ]
  %83 = and i32 %82, -327681
  %84 = or i32 %83, %63
  %85 = load ptr, ptr %6, align 4
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 3, i32 0, i32 6
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89, !prof !9

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %87, i32 6817060
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %84) #11, !srcloc !13
  br label %93

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %92, i32 noundef 4, i64 noundef 6817060, i32 noundef %84) #11
  br label %93

93:                                               ; preds = %91, %89
  %94 = load ptr, ptr %53, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96, !prof !9

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %94, i32 5512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 0) #11, !srcloc !13
  br label %99

98:                                               ; preds = %93
  tail call void @nvif_object_wr(ptr noundef %8, i32 noundef 4, i64 noundef 5512, i32 noundef 0) #11
  br label %99

99:                                               ; preds = %98, %96, %23, %5
  %100 = phi i32 [ 0, %23 ], [ 0, %5 ], [ %70, %98 ], [ %70, %96 ]
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @call_lvds_manufacturer_script(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 24, i32 6
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add i32 %11, %3
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 24, i32 10
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 2
  %22 = and i8 %21, 1
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i8 [ 0, %4 ], [ %22, %18 ]
  %25 = add i8 %24, %14
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 18
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = zext i8 %25 to i32
  %30 = shl nuw nsw i32 %29, 1
  %31 = add nuw nsw i32 %30, %28
  %32 = getelementptr i8, ptr %8, i32 %31
  %33 = load i16, ptr %32, align 1
  %34 = icmp ne i16 %10, 0
  %35 = icmp ne i8 %25, 0
  %36 = select i1 %34, i1 %35, i1 false
  %37 = icmp ne i16 %33, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %59

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 24, i32 9
  %41 = load i8, ptr %40, align 2, !range !8
  %42 = icmp ne i8 %41, 0
  tail call fastcc void @run_digital_op_script(ptr noundef %0, i16 noundef zeroext %33, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %42)
  %43 = icmp eq i32 %3, 6
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load ptr, ptr %7, align 4
  %46 = load i16, ptr %9, align 2
  %47 = zext i16 %46 to i32
  %48 = add nuw nsw i32 %47, 7
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = load i16, ptr %49, align 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %44
  %53 = zext i16 %50 to i32
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ %56, %54 ], [ %53, %52 ]
  %56 = add nsw i32 %55, -1
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #11
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %54

59:                                               ; preds = %54, %44, %39, %23
  %60 = phi i32 [ -22, %23 ], [ 0, %39 ], [ 0, %44 ], [ 0, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @run_lvds_table(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 4
  switch i32 %3, label %115 [
    i32 1, label %127
    i32 3, label %11
    i32 5, label %11
    i32 4, label %20
    i32 6, label %20
    i32 2, label %29
  ]

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = select i1 %10, i32 9, i32 7
  %18 = add nuw nsw i32 %17, %16
  %19 = getelementptr i8, ptr %13, i32 %18
  br label %111

20:                                               ; preds = %5, %5
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = select i1 %10, i32 13, i32 11
  %27 = add nuw nsw i32 %26, %25
  %28 = getelementptr i8, ptr %22, i32 %27
  br label %111

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = select i1 %10, i16 23, i16 15
  %33 = add i16 %31, %32
  %34 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 13, i32 0, i32 1
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %39 = load i8, ptr %38, align 2, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = add i16 %33, 4
  %42 = select i1 %40, i16 %33, i16 %41
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 11
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = add i16 %42, 2
  %47 = select i1 %45, i16 %42, i16 %46
  br label %65

48:                                               ; preds = %29
  %49 = select i1 %10, i32 4, i32 1
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %51 = load i8, ptr %50, align 2, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = add i16 %33, 4
  %54 = select i1 %52, i16 %33, i16 %53
  %55 = xor i1 %52, true
  %56 = zext i1 %55 to i32
  %57 = shl nuw nsw i32 %49, %56
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 13
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = and i32 %57, %60
  %62 = icmp eq i32 %61, 0
  %63 = add i16 %54, 2
  %64 = select i1 %62, i16 %54, i16 %63
  br label %65

65:                                               ; preds = %48, %37
  %66 = phi i16 [ %64, %48 ], [ %47, %37 ]
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = zext i16 %66 to i32
  %70 = getelementptr i8, ptr %68, i32 %69
  %71 = load i16, ptr %70, align 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.2, ptr noundef %80) #10
  br label %127

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 12
  %83 = load i8, ptr %82, align 1
  %84 = icmp ult i8 %83, 5
  %85 = select i1 %84, i32 3, i32 4
  %86 = zext i16 %71 to i32
  br label %87

87:                                               ; preds = %108, %81
  %88 = phi i32 [ 0, %81 ], [ %109, %108 ]
  %89 = mul i32 %88, %85
  %90 = add i32 %89, %86
  %91 = getelementptr i8, ptr %68, i32 %90
  %92 = load i16, ptr %91, align 1
  %93 = zext i16 %92 to i32
  %94 = mul nuw nsw i32 %93, 10
  %95 = icmp sgt i32 %94, %4
  br i1 %95, label %108, label %96

96:                                               ; preds = %87
  %97 = add i32 %90, 2
  %98 = getelementptr i8, ptr %68, i32 %97
  br i1 %84, label %99, label %111

99:                                               ; preds = %96
  %100 = load i8, ptr %98, align 1
  %101 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 18
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = zext i8 %100 to i32
  %105 = shl nuw nsw i32 %104, 1
  %106 = add nuw nsw i32 %105, %103
  %107 = getelementptr i8, ptr %68, i32 %106
  br label %111

108:                                              ; preds = %87
  %109 = add i32 %88, 1
  %110 = icmp eq i16 %92, 0
  br i1 %110, label %115, label %87

111:                                              ; preds = %99, %96, %20, %11
  %112 = phi ptr [ %28, %20 ], [ %19, %11 ], [ %107, %99 ], [ %98, %96 ]
  %113 = load i16, ptr %112, align 1
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111, %108, %5
  %116 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.nouveau_drm, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.11, ptr noundef %122) #10
  br label %127

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %125 = load i8, ptr %124, align 2, !range !8
  %126 = icmp ne i8 %125, 0
  tail call fastcc void @run_digital_op_script(ptr noundef %0, i16 noundef zeroext %113, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %126)
  br label %127

127:                                              ; preds = %123, %115, %73, %5
  %128 = phi i32 [ 0, %123 ], [ -2, %115 ], [ -2, %73 ], [ -38, %5 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_bios_fp_mode(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 18, i32 24, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 18, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = zext i16 %6 to i32
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %1, i8 0, i32 112, i1 false)
  %13 = getelementptr i8, ptr %12, i32 7
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = mul nuw nsw i32 %15, 10
  store i32 %16, ptr %1, align 4
  %17 = getelementptr i8, ptr %12, i32 11
  %18 = load i16, ptr %17, align 1
  %19 = add i16 %18, 1
  %20 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  store i16 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %12, i32 17
  %22 = load i16, ptr %21, align 1
  %23 = add i16 %22, 1
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  store i16 %23, ptr %24, align 2
  %25 = getelementptr i8, ptr %12, i32 19
  %26 = load i16, ptr %25, align 1
  %27 = add i16 %26, 1
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  store i16 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %12, i32 21
  %30 = load i16, ptr %29, align 1
  %31 = add i16 %30, 1
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  store i16 %31, ptr %32, align 2
  %33 = getelementptr i8, ptr %12, i32 25
  %34 = load i16, ptr %33, align 1
  %35 = add i16 %34, 1
  %36 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  store i16 %35, ptr %36, align 2
  %37 = getelementptr i8, ptr %12, i32 31
  %38 = load i16, ptr %37, align 1
  %39 = add i16 %38, 1
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  store i16 %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %12, i32 33
  %42 = load i16, ptr %41, align 1
  %43 = add i16 %42, 1
  %44 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  store i16 %43, ptr %44, align 2
  %45 = getelementptr i8, ptr %12, i32 35
  %46 = load i16, ptr %45, align 1
  %47 = add i16 %46, 1
  %48 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  store i16 %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %12, i32 37
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 16
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 2, i32 1
  %54 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  store i32 %53, ptr %54, align 4
  %55 = load i8, ptr %49, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 8, i32 4
  %59 = or i32 %58, %53
  store i32 %59, ptr %54, align 4
  %60 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 32
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 28
  store i8 72, ptr %61, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %1) #11
  %62 = load i16, ptr %5, align 4
  br label %63

63:                                               ; preds = %8, %2
  %64 = phi i16 [ %62, %8 ], [ %6, %2 ]
  %65 = icmp ne i16 %64, 0
  ret i1 %65
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bios_parse_lvds_table(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.lvdstableheader, align 1
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18
  %9 = tail call fastcc i32 @get_fp_strap(ptr noundef %0, ptr noundef %8)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !14
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = call fastcc i32 @parse_lvds_manufacturer_table_header(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %148

14:                                               ; preds = %4
  %15 = load i8, ptr %5, align 1
  switch i8 %15, label %49 [
    i8 10, label %16
    i8 48, label %93
    i8 64, label %93
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add i32 %9, %21
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %16
  %28 = icmp ult i8 %11, 37
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 26, i32 4
  %31 = load i16, ptr %30, align 2
  %32 = shl i16 %31, 1
  %33 = and i16 %32, 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp sle i32 %36, %1
  %38 = zext i1 %37 to i32
  %39 = or i32 %34, %38
  br label %57

40:                                               ; preds = %27
  %41 = icmp ult i8 %11, 48
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, %1
  %46 = select i1 %45, i32 0, i32 2
  %47 = icmp sgt i32 %1, 139999
  %48 = select i1 %47, i32 3, i32 %46
  br label %57

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef %56) #10
  br label %148

57:                                               ; preds = %42, %40, %29, %16
  %58 = phi i32 [ 0, %40 ], [ %39, %29 ], [ %25, %16 ], [ %48, %42 ]
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.lvdstableheader, ptr %5, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = getelementptr inbounds %struct.lvdstableheader, ptr %5, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = mul nsw i32 %58, %68
  %70 = add nsw i32 %65, %69
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 6
  store i16 %71, ptr %72, align 2
  %73 = and i32 %70, 65535
  %74 = getelementptr i8, ptr %18, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 1
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 7
  store i8 %76, ptr %77, align 4
  %78 = load i8, ptr %74, align 1
  %79 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 8
  %80 = lshr i8 %78, 1
  %81 = and i8 %80, 1
  store i8 %81, ptr %79, align 1
  %82 = load i8, ptr %74, align 1
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %84 = lshr i8 %82, 2
  %85 = and i8 %84, 1
  store i8 %85, ptr %83, align 2
  %86 = load i8, ptr %74, align 1
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 10
  %88 = lshr i8 %86, 3
  %89 = and i8 %88, 1
  store i8 %89, ptr %87, align 1
  %90 = load i8, ptr %74, align 1
  %91 = lshr i8 %90, 4
  %92 = and i8 %91, 1
  store i8 %92, ptr %3, align 1
  br label %132

93:                                               ; preds = %14, %14
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 3
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.lvdstableheader, ptr %5, i32 0, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %99, %96
  %101 = getelementptr inbounds %struct.lvdstableheader, ptr %5, i32 0, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = mul i32 %9, %103
  %105 = add i32 %100, %104
  %106 = trunc i32 %105 to i16
  %107 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 6
  store i16 %106, ptr %107, align 2
  switch i8 %15, label %132 [
    i8 64, label %108
    i8 48, label %108
  ]

108:                                              ; preds = %93, %93
  %109 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 7
  store i8 1, ptr %109, align 4
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 8
  store i8 1, ptr %110, align 1
  %111 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = and i32 %105, 65535
  %114 = getelementptr i8, ptr %112, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %115, 1
  %117 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  store i8 %116, ptr %117, align 2
  %118 = load i8, ptr %114, align 1
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 11
  %120 = lshr i8 %118, 1
  %121 = and i8 %120, 1
  store i8 %121, ptr %119, align 4
  %122 = add nuw nsw i32 %96, 4
  %123 = getelementptr i8, ptr %112, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 13
  store i8 %124, ptr %125, align 4
  %126 = add nuw nsw i32 %96, 5
  %127 = getelementptr i8, ptr %112, i32 %126
  %128 = load i16, ptr %127, align 1
  %129 = zext i16 %128 to i32
  %130 = mul nuw nsw i32 %129, 10
  %131 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 12
  store i32 %130, ptr %131, align 4
  br label %132

132:                                              ; preds = %108, %93, %57
  %133 = icmp ne i32 %1, 0
  %134 = add i8 %11, -41
  %135 = icmp ult i8 %134, -4
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %139 = load i8, ptr %138, align 2, !range !8
  br label %146

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 12
  %142 = load i32, ptr %141, align 4
  %143 = icmp sle i32 %142, %1
  %144 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 18, i32 24, i32 9
  %145 = zext i1 %143 to i8
  store i8 %145, ptr %144, align 2
  br label %146

146:                                              ; preds = %140, %137
  %147 = phi i8 [ %139, %137 ], [ %145, %140 ]
  store i8 %147, ptr %2, align 1
  br label %148

148:                                              ; preds = %146, %49, %4
  %149 = phi i32 [ -38, %49 ], [ 0, %146 ], [ %12, %4 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_fp_strap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %6 = getelementptr inbounds %struct.nvbios, ptr %1, i32 0, i32 12
  %7 = load i8, ptr %6, align 1
  %8 = icmp ult i8 %7, 5
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvbios, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 72
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !9

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 87) #11, !srcloc !16
  br label %23

22:                                               ; preds = %16
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 1, i64 noundef 6296532, i32 noundef 87) #11
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %17, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !9

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 15) #11, !srcloc !16
  br label %29

28:                                               ; preds = %23
  tail call void @nvif_object_wr(ptr noundef %5, i32 noundef 1, i64 noundef 6296533, i32 noundef 15) #11
  br label %29

29:                                               ; preds = %28, %26
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !9

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %33, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 88) #11, !srcloc !16
  br label %38

37:                                               ; preds = %29
  tail call void @nvif_object_wr(ptr noundef %31, i32 noundef 1, i64 noundef 6296532, i32 noundef 88) #11
  br label %38

38:                                               ; preds = %37, %35
  %39 = load ptr, ptr %32, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41, !prof !9

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %39, i32 6296533
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %44 = zext i8 %43 to i32
  br label %47

45:                                               ; preds = %38
  %46 = tail call i32 @nvif_object_rd(ptr noundef %31, i32 noundef 1, i64 noundef 6296533) #11
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  %49 = and i32 %48, 255
  br label %86

50:                                               ; preds = %9, %2
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp ugt i8 %52, 8
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !9

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %56, i32 6144
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %86

61:                                               ; preds = %54
  %62 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 6144) #11
  br label %86

63:                                               ; preds = %50
  %64 = icmp ugt i8 %52, 5
  %65 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %64, label %68, label %77

68:                                               ; preds = %63
  br i1 %67, label %72, label %69, !prof !9

69:                                               ; preds = %68
  %70 = getelementptr i8, ptr %66, i32 1052672
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %74

72:                                               ; preds = %68
  %73 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 1052672) #11
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  %76 = lshr i32 %75, 24
  br label %86

77:                                               ; preds = %63
  br i1 %67, label %81, label %78, !prof !9

78:                                               ; preds = %77
  %79 = getelementptr i8, ptr %66, i32 1052672
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %83

81:                                               ; preds = %77
  %82 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 1052672) #11
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %80, %78 ], [ %82, %81 ]
  %85 = lshr i32 %84, 16
  br label %86

86:                                               ; preds = %83, %74, %61, %58, %47
  %87 = phi i32 [ %49, %47 ], [ %76, %74 ], [ %85, %83 ], [ %60, %58 ], [ %62, %61 ]
  %88 = and i32 %87, 15
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_lvds_manufacturer_table_header(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false)
  %6 = getelementptr inbounds %struct.nvbios, ptr %1, i32 0, i32 24, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef %17) #10
  br label %68

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.nvbios, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %8
  %22 = load i8, ptr %21, align 1
  switch i8 %22, label %49 [
    i8 10, label %60
    i8 48, label %23
    i8 64, label %36
  ]

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %8, 1
  %25 = getelementptr i8, ptr %20, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp ult i8 %26, 31
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.13, ptr noundef %35) #10
  br label %68

36:                                               ; preds = %18
  %37 = add nuw nsw i32 %8, 1
  %38 = getelementptr i8, ptr %20, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = icmp ult i8 %39, 7
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.13, ptr noundef %48) #10
  br label %68

49:                                               ; preds = %18
  %50 = zext i8 %22 to i32
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %58 = lshr i32 %50, 4
  %59 = and i32 %50, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.14, ptr noundef %57, i32 noundef %58, i32 noundef %59) #10
  br label %68

60:                                               ; preds = %36, %23, %18
  %61 = phi i32 [ 1, %18 ], [ 2, %23 ], [ 2, %36 ]
  %62 = phi i8 [ 2, %18 ], [ %26, %23 ], [ %39, %36 ]
  %63 = add nuw nsw i32 %61, %8
  %64 = getelementptr i8, ptr %20, i32 %63
  %65 = load i8, ptr %64, align 1
  store i8 %22, ptr %2, align 1
  %66 = getelementptr inbounds %struct.lvdstableheader, ptr %2, i32 0, i32 1
  store i8 %62, ptr %66, align 1
  %67 = getelementptr inbounds %struct.lvdstableheader, ptr %2, i32 0, i32 2
  store i8 %65, ptr %67, align 1
  br label %68

68:                                               ; preds = %60, %49, %41, %28, %10
  %69 = phi i32 [ -22, %10 ], [ -38, %49 ], [ -22, %41 ], [ 0, %60 ], [ -22, %28 ]
  ret i32 %69
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @run_tmds_table(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = freeze i8 %9
  %11 = icmp ugt i8 %10, 22
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  switch i8 %10, label %13 [
    i8 32, label %17
    i8 26, label %17
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 8
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %120

17:                                               ; preds = %13, %12, %12, %4
  %18 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = tail call i8 @llvm.cttz.i8(i8 %19, i1 true), !range !19
  %21 = add nuw nsw i8 %20, 1
  %22 = icmp eq i8 %19, 0
  %23 = select i1 %22, i8 0, i8 %21
  %24 = zext i8 %23 to i32
  switch i32 %24, label %33 [
    i32 1, label %25
    i32 2, label %27
    i32 3, label %27
  ]

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 25
  br label %29

27:                                               ; preds = %17, %17
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 25, i32 1
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %28, %27 ], [ %26, %25 ]
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %17
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef %40) #10
  br label %120

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 12
  %43 = load i8, ptr %42, align 1
  %44 = icmp ult i8 %43, 5
  %45 = select i1 %44, i32 3, i32 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = zext i16 %31 to i32
  br label %49

49:                                               ; preds = %70, %41
  %50 = phi i32 [ 0, %41 ], [ %71, %70 ]
  %51 = mul i32 %50, %45
  %52 = add i32 %51, %48
  %53 = getelementptr i8, ptr %47, i32 %52
  %54 = load i16, ptr %53, align 1
  %55 = zext i16 %54 to i32
  %56 = mul nuw nsw i32 %55, 10
  %57 = icmp sgt i32 %56, %3
  br i1 %57, label %70, label %58

58:                                               ; preds = %49
  %59 = add i32 %52, 2
  %60 = getelementptr i8, ptr %47, i32 %59
  br i1 %44, label %61, label %73

61:                                               ; preds = %58
  %62 = load i8, ptr %60, align 1
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 18
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = zext i8 %62 to i32
  %67 = shl nuw nsw i32 %66, 1
  %68 = add nuw nsw i32 %67, %65
  %69 = getelementptr i8, ptr %47, i32 %68
  br label %73

70:                                               ; preds = %49
  %71 = add i32 %50, 1
  %72 = icmp eq i16 %54, 0
  br i1 %72, label %77, label %49

73:                                               ; preds = %61, %58
  %74 = phi ptr [ %69, %61 ], [ %60, %58 ]
  %75 = load i16, ptr %74, align 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73, %70
  %78 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.3, ptr noundef %84) #10
  br label %120

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89, !prof !9

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %87, i32 6817060
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %94

92:                                               ; preds = %85
  %93 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef 6817060) #11
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  %96 = and i32 %95, 327680
  %97 = icmp sgt i32 %3, 164999
  tail call fastcc void @run_digital_op_script(ptr noundef %0, i16 noundef zeroext %75, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %97)
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr inbounds %struct.nouveau_drm, ptr %98, i32 0, i32 2, i32 3, i32 0, i32 6
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102, !prof !9

102:                                              ; preds = %94
  %103 = getelementptr i8, ptr %100, i32 6817060
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %108

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %98, i32 0, i32 2, i32 3
  %107 = tail call i32 @nvif_object_rd(ptr noundef %106, i32 noundef 4, i64 noundef 6817060) #11
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %104, %102 ], [ %107, %105 ]
  %110 = and i32 %109, -327681
  %111 = or i32 %110, %96
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = load ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !9

116:                                              ; preds = %108
  %117 = getelementptr i8, ptr %114, i32 6817060
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %111) #11, !srcloc !13
  br label %120

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %119, i32 noundef 4, i64 noundef 6817060, i32 noundef %111) #11
  br label %120

120:                                              ; preds = %118, %116, %77, %33, %13
  %121 = phi i32 [ -2, %77 ], [ -22, %33 ], [ 0, %13 ], [ 0, %116 ], [ 0, %118 ]
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @run_digital_op_script(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.nvbios_init, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  %16 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef %15, i32 noundef %16) #10
  %17 = icmp eq i32 %3, 0
  %18 = select i1 %17, i8 0, i8 3
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %5
  %25 = getelementptr i8, ptr %22, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 68) #11, !srcloc !16
  br label %27

26:                                               ; preds = %5
  tail call void @nvif_object_wr(ptr noundef %20, i32 noundef 1, i64 noundef 6296532, i32 noundef 68) #11
  br label %27

27:                                               ; preds = %26, %24
  %28 = load ptr, ptr %21, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !9

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %28, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %18) #11, !srcloc !16
  br label %34

32:                                               ; preds = %27
  %33 = zext i8 %18 to i32
  tail call void @nvif_object_wr(ptr noundef %20, i32 noundef 1, i64 noundef 6296533, i32 noundef %33) #11
  br label %34

34:                                               ; preds = %32, %30
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #11
  %35 = getelementptr inbounds i8, ptr %6, i32 24
  store i32 1, ptr %35, align 4, !annotation !14
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 2, i32 3, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.anon.181, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 21
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %6, align 4
  %43 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 1
  store i32 %16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 2
  %45 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 3
  store i32 -1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 5
  %48 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %48, i8 0, i64 16, i1 false) #11
  store ptr %2, ptr %44, align 4
  store i32 %3, ptr %47, align 4
  %49 = call i32 @nvbios_exec(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #11
  call void @nv04_dfp_bind_head(ptr noundef %0, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bit_table(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %56

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 10
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %9
  %20 = add nuw nsw i32 %14, 12
  %21 = getelementptr i8, ptr %11, i32 %20
  %22 = add nuw nsw i32 %14, 9
  %23 = getelementptr i8, ptr %11, i32 %22
  br label %24

24:                                               ; preds = %50, %19
  %25 = phi i8 [ %17, %19 ], [ %51, %50 ]
  %26 = phi ptr [ %21, %19 ], [ %54, %50 ]
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, %1
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  store i8 %1, ptr %2, align 4
  %30 = getelementptr i8, ptr %26, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = getelementptr i8, ptr %26, i32 2
  %34 = load i16, ptr %33, align 1
  %35 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 2
  store i16 %34, ptr %35, align 2
  %36 = getelementptr i8, ptr %26, i32 4
  %37 = load i16, ptr %36, align 1
  %38 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 3
  store i16 %37, ptr %38, align 4
  %39 = load i16, ptr %36, align 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 18, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = zext i16 %39 to i32
  %46 = getelementptr i8, ptr %44, i32 %45
  br label %47

47:                                               ; preds = %41, %29
  %48 = phi ptr [ %46, %41 ], [ null, %29 ]
  %49 = getelementptr inbounds %struct.bit_entry, ptr %2, i32 0, i32 4
  store ptr %48, ptr %49, align 4
  br label %56

50:                                               ; preds = %24
  %51 = add i8 %25, -1
  %52 = load i8, ptr %23, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr i8, ptr %26, i32 %53
  %55 = icmp eq i8 %51, 0
  br i1 %55, label %56, label %24

56:                                               ; preds = %50, %47, %9, %3
  %57 = phi i32 [ 0, %47 ], [ -19, %3 ], [ -2, %9 ], [ -2, %50 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @olddcb_table(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp ugt i8 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 54
  %11 = load i16, ptr %10, align 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = zext i16 %11 to i32
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13, %7, %1
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef %24) #10
  br label %71

25:                                               ; preds = %13
  %26 = load i8, ptr %15, align 1
  %27 = icmp ugt i8 %26, 65
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = zext i8 %26 to i32
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.5, ptr noundef %36, i32 noundef %29) #10
  br label %71

37:                                               ; preds = %25
  %38 = icmp ugt i8 %26, 47
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %15, i32 6
  %41 = load i32, ptr %40, align 1
  %42 = icmp eq i32 %41, 1323089355
  br i1 %42, label %71, label %63

43:                                               ; preds = %37
  %44 = icmp ugt i8 %26, 31
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = getelementptr i8, ptr %15, i32 4
  %47 = load i32, ptr %46, align 1
  %48 = icmp eq i32 %47, 1323089355
  br i1 %48, label %71, label %63

49:                                               ; preds = %43
  %50 = icmp ugt i8 %26, 20
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %15, i32 -7
  %53 = tail call i32 @bcmp(ptr noundef dereferenceable(7) %52, ptr noundef nonnull dereferenceable(7) @.str.6, i32 7)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %63

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.7, ptr noundef %62) #10
  br label %71

63:                                               ; preds = %51, %45, %39
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.8, ptr noundef %70) #10
  br label %71

71:                                               ; preds = %63, %55, %51, %45, %39, %28, %17
  %72 = phi ptr [ null, %28 ], [ null, %63 ], [ null, %55 ], [ null, %17 ], [ %15, %39 ], [ %15, %45 ], [ %15, %51 ]
  ret ptr %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @olddcb_outp(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @olddcb_table(ptr noundef %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1
  %7 = icmp ugt i8 %6, 47
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %3, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp ugt i8 %10, %1
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = zext i8 %1 to i32
  %14 = getelementptr i8, ptr %3, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %3, i32 %16
  %18 = getelementptr i8, ptr %3, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %13
  %22 = getelementptr i8, ptr %17, i32 %21
  br label %69

23:                                               ; preds = %5
  %24 = icmp ugt i8 %6, 31
  br i1 %24, label %25, label %46

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %3, i32 2
  %27 = load i16, ptr %26, align 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 18, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = zext i16 %27 to i32
  %35 = getelementptr i8, ptr %33, i32 %34
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi ptr [ %35, %29 ], [ null, %25 ]
  %38 = getelementptr i8, ptr %3, i32 8
  %39 = zext i8 %1 to i32
  %40 = shl nuw nsw i32 %39, 3
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = icmp ne ptr %37, null
  %43 = icmp ult ptr %41, %37
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %44, ptr %41, ptr null
  br label %69

46:                                               ; preds = %23
  %47 = icmp ugt i8 %6, 20
  br i1 %47, label %48, label %69

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %3, i32 2
  %50 = load i16, ptr %49, align 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 18, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = zext i16 %50 to i32
  %58 = getelementptr i8, ptr %56, i32 %57
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi ptr [ %58, %52 ], [ null, %48 ]
  %61 = getelementptr i8, ptr %3, i32 4
  %62 = zext i8 %1 to i32
  %63 = mul nuw nsw i32 %62, 10
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = icmp ne ptr %60, null
  %66 = icmp ult ptr %64, %60
  %67 = select i1 %65, i1 %66, i1 false
  %68 = select i1 %67, ptr %64, ptr null
  br label %69

69:                                               ; preds = %59, %46, %36, %12, %8, %2
  %70 = phi ptr [ %22, %12 ], [ null, %2 ], [ null, %46 ], [ null, %8 ], [ %45, %36 ], [ %68, %59 ]
  ret ptr %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @olddcb_outp_foreach(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %77, %6
  %9 = phi ptr [ %4, %6 ], [ %80, %77 ]
  %10 = phi i8 [ 0, %6 ], [ %79, %77 ]
  %11 = phi i32 [ 0, %6 ], [ %78, %77 ]
  %12 = load i8, ptr %9, align 1
  %13 = icmp ugt i8 %12, 47
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, %10
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = and i32 %11, 255
  %20 = getelementptr i8, ptr %9, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %9, i32 %22
  %24 = getelementptr i8, ptr %9, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = mul nuw nsw i32 %19, %26
  %28 = getelementptr i8, ptr %23, i32 %27
  br label %67

29:                                               ; preds = %8
  %30 = icmp ugt i8 %12, 31
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %9, i32 2
  %33 = load i16, ptr %32, align 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 18, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = zext i16 %33 to i32
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = getelementptr i8, ptr %9, i32 8
  %42 = shl i32 %11, 3
  %43 = and i32 %42, 2040
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = icmp ne ptr %40, null
  %46 = icmp ult ptr %44, %40
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %67, label %82

48:                                               ; preds = %29
  %49 = icmp ugt i8 %12, 20
  br i1 %49, label %50, label %82

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %9, i32 2
  %52 = load i16, ptr %51, align 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = zext i16 %52 to i32
  %59 = getelementptr i8, ptr %57, i32 %58
  %60 = getelementptr i8, ptr %9, i32 4
  %61 = and i32 %11, 255
  %62 = mul nuw nsw i32 %61, 10
  %63 = getelementptr i8, ptr %60, i32 %62
  %64 = icmp ne ptr %59, null
  %65 = icmp ult ptr %63, %59
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %82

67:                                               ; preds = %54, %35, %18
  %68 = phi ptr [ %28, %18 ], [ %44, %35 ], [ %63, %54 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 1
  switch i32 %71, label %72 [
    i32 0, label %82
    i32 -1, label %82
  ]

72:                                               ; preds = %70
  %73 = trunc i32 %71 to i4
  switch i4 %73, label %74 [
    i4 -1, label %77
    i4 -2, label %82
  ]

74:                                               ; preds = %72
  %75 = tail call i32 %2(ptr noundef %0, ptr noundef %1, i32 noundef %11, ptr noundef nonnull %68) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74, %72
  %78 = add i32 %11, 1
  %79 = trunc i32 %78 to i8
  %80 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %8

82:                                               ; preds = %77, %74, %72, %70, %70, %67, %54, %50, %48, %35, %31, %14, %3
  %83 = phi i32 [ 0, %3 ], [ 0, %70 ], [ 0, %70 ], [ 0, %50 ], [ 0, %31 ], [ 0, %54 ], [ 0, %35 ], [ 0, %14 ], [ 0, %48 ], [ 0, %77 ], [ 0, %67 ], [ 0, %72 ], [ %75, %74 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @olddcb_conntab(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @olddcb_table(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %2, align 1
  %6 = icmp ugt i8 %5, 47
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %2, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp ugt i8 %9, 21
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %2, i32 20
  %13 = load i16, ptr %12, align 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 18, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = zext i16 %13 to i32
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = load i8, ptr %21, align 1
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 17
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %15, %11
  br label %28

28:                                               ; preds = %27, %23, %7, %4, %1
  %29 = phi ptr [ %21, %23 ], [ null, %27 ], [ null, %7 ], [ null, %4 ], [ null, %1 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @olddcb_conn(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1
  %7 = icmp ugt i8 %6, 47
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %3, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp ugt i8 %10, 21
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %3, i32 20
  %14 = load i16, ptr %13, align 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 18, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = zext i16 %14 to i32
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %16
  %25 = load i8, ptr %22, align 1
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 17
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %22, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = icmp ugt i8 %30, %1
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = zext i8 %1 to i32
  %34 = getelementptr i8, ptr %22, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %22, i32 %36
  %38 = getelementptr i8, ptr %22, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = mul nuw nsw i32 %40, %33
  %42 = getelementptr i8, ptr %37, i32 %41
  br label %43

43:                                               ; preds = %32, %28, %24, %16, %12, %8, %5, %2
  %44 = phi ptr [ %42, %32 ], [ null, %28 ], [ null, %8 ], [ null, %5 ], [ null, %2 ], [ null, %24 ], [ null, %16 ], [ null, %12 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_bios_embedded_edid(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 24, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %94

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 4
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %77, %7
  %11 = phi i32 [ 65536, %7 ], [ %78, %77 ]
  %12 = phi i16 [ 0, %7 ], [ %79, %77 ]
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = add i32 %11, -8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %94, label %17

17:                                               ; preds = %57, %10
  %18 = phi i32 [ %58, %57 ], [ 0, %10 ]
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = add i32 %18, 1
  %24 = getelementptr i8, ptr %14, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = add i32 %18, 2
  %29 = getelementptr i8, ptr %14, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, -1
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = add i32 %18, 3
  %34 = getelementptr i8, ptr %14, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = add i32 %18, 4
  %39 = getelementptr i8, ptr %14, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = add i32 %18, 5
  %44 = getelementptr i8, ptr %14, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, -1
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = add i32 %18, 6
  %49 = getelementptr i8, ptr %14, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = add i32 %18, 7
  %54 = getelementptr i8, ptr %14, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47, %42, %37, %32, %27, %22, %17
  %58 = add i32 %18, 1
  %59 = icmp sgt i32 %58, %15
  br i1 %59, label %94, label %17

60:                                               ; preds = %52
  %61 = trunc i32 %18 to i16
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = add i16 %12, %61
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %9, i32 %65
  br label %67

67:                                               ; preds = %67, %63
  %68 = phi i8 [ %72, %67 ], [ 0, %63 ]
  %69 = phi i32 [ %73, %67 ], [ 0, %63 ]
  %70 = getelementptr i8, ptr %66, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = add i8 %71, %68
  %73 = add nuw nsw i32 %69, 1
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %67

75:                                               ; preds = %67
  %76 = icmp eq i8 %72, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %75
  %78 = sub i32 %11, %65
  %79 = add i16 %64, 1
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %10

81:                                               ; preds = %77
  %82 = zext i16 %79 to i32
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i32 [ %82, %81 ], [ %65, %75 ]
  %85 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.9, ptr noundef %91) #10
  %92 = load ptr, ptr %8, align 4
  %93 = getelementptr i8, ptr %92, i32 %84
  store ptr %93, ptr %4, align 4
  br label %94

94:                                               ; preds = %83, %60, %57, %10, %1
  %95 = phi ptr [ %93, %83 ], [ %5, %1 ], [ null, %57 ], [ null, %60 ], [ null, %10 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_run_vbios_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 23
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 12
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 5
  br i1 %7, label %8, label %117

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %117, label %15

15:                                               ; preds = %35, %8
  %16 = phi i32 [ %20, %35 ], [ 0, %8 ]
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 72
  %20 = add i32 %16, 1
  br i1 %19, label %21, label %35

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %10, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 87
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = add i32 %16, 2
  %27 = getelementptr i8, ptr %10, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 83
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = add i32 %16, 3
  %32 = getelementptr i8, ptr %10, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 81
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %25, %21, %15
  %36 = icmp sgt i32 %20, %13
  br i1 %36, label %117, label %15

37:                                               ; preds = %30
  %38 = trunc i32 %16 to i16
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %117, label %40

40:                                               ; preds = %37
  %41 = add i32 %16, 4
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  %44 = and i32 %41, 65535
  %45 = getelementptr i8, ptr %10, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16, ptr noundef %55) #10
  br label %117

56:                                               ; preds = %40
  %57 = add nuw nsw i32 %44, 1
  %58 = getelementptr i8, ptr %10, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 36
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 12
  br i1 %60, label %69, label %68

68:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.17, ptr noundef %67) #10
  br label %117

69:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.18, ptr noundef %67) #10
  %70 = add i32 %16, 6
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  %74 = load ptr, ptr %9, align 4
  %75 = and i32 %70, 65535
  %76 = getelementptr i8, ptr %74, i32 %75
  %77 = load i32, ptr %76, align 1
  br i1 %73, label %80, label %78, !prof !9

78:                                               ; preds = %69
  %79 = getelementptr i8, ptr %72, i32 4868
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #11, !srcloc !13
  br label %81

80:                                               ; preds = %69
  tail call void @nvif_object_wr(ptr noundef %43, i32 noundef 4, i64 noundef 4868, i32 noundef %77) #11
  br label %81

81:                                               ; preds = %80, %78
  br label %82

82:                                               ; preds = %102, %81
  %83 = phi i32 [ %103, %102 ], [ 0, %81 ]
  %84 = load ptr, ptr %71, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86, !prof !9

86:                                               ; preds = %82
  %87 = load ptr, ptr %9, align 4
  %88 = add nuw nsw i32 %83, 4
  %89 = add nuw nsw i32 %88, %75
  %90 = getelementptr i8, ptr %87, i32 %89
  %91 = load i32, ptr %90, align 1
  %92 = add nuw nsw i32 %83, 5120
  %93 = getelementptr i8, ptr %84, i32 %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #11, !srcloc !13
  br label %102

94:                                               ; preds = %82
  %95 = add nuw nsw i32 %83, 5120
  %96 = zext i32 %95 to i64
  %97 = load ptr, ptr %9, align 4
  %98 = add nuw nsw i32 %83, 4
  %99 = add nuw nsw i32 %98, %75
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = load i32, ptr %100, align 1
  tail call void @nvif_object_wr(ptr noundef %43, i32 noundef 4, i64 noundef %96, i32 noundef %101) #11
  br label %102

102:                                              ; preds = %94, %86
  %103 = phi i32 [ %98, %94 ], [ %88, %86 ]
  %104 = icmp ult i32 %83, 28
  br i1 %104, label %82, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %71, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108, !prof !9

108:                                              ; preds = %105
  %109 = getelementptr i8, ptr %106, i32 4248
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %111 = or i32 %110, 24
  %112 = load ptr, ptr %71, align 8
  %113 = getelementptr i8, ptr %112, i32 4248
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #11, !srcloc !13
  br label %117

114:                                              ; preds = %105
  %115 = tail call i32 @nvif_object_rd(ptr noundef %43, i32 noundef 4, i64 noundef 4248) #11
  %116 = or i32 %115, 24
  tail call void @nvif_object_wr(ptr noundef %43, i32 noundef 4, i64 noundef 4248, i32 noundef %116) #11
  br label %117

117:                                              ; preds = %114, %108, %68, %48, %37, %35, %8, %1
  %118 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 11
  %119 = load i8, ptr %118, align 4, !range !8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 24, i32 15
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 24, i32 16
  store i8 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %121, %117
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_bios_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.lvdstableheader, align 1
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @pci_bus_type
  br i1 %11, label %12, label %1478

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon.183, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(772) %19, i8 0, i64 772, i1 false) #11
  store ptr %0, ptr %6, align 4
  %20 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 4
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 12
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 7, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 5
  store i8 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %618, label %35

35:                                               ; preds = %12
  store i32 1, ptr %19, align 4
  %36 = load i32, ptr %32, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 2
  store i16 %37, ptr %38, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 18, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %69

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 18, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 18, i32 2
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = add nuw nsw i32 %48, 10
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %43
  %54 = add nuw nsw i32 %48, 12
  %55 = getelementptr i8, ptr %45, i32 %54
  %56 = add nuw nsw i32 %48, 9
  %57 = getelementptr i8, ptr %45, i32 %56
  br label %58

58:                                               ; preds = %63, %53
  %59 = phi i8 [ %51, %53 ], [ %64, %63 ]
  %60 = phi ptr [ %55, %53 ], [ %67, %63 ]
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 105
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = add i8 %59, -1
  %65 = load i8, ptr %57, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr i8, ptr %60, i32 %66
  %68 = icmp eq i8 %64, 0
  br i1 %68, label %69, label %58

69:                                               ; preds = %63, %43, %35
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.19, ptr noundef %76, i32 noundef 105) #10
  br label %1478

77:                                               ; preds = %58
  %78 = getelementptr i8, ptr %60, i32 2
  %79 = load i16, ptr %78, align 1
  %80 = getelementptr i8, ptr %60, i32 4
  %81 = load i16, ptr %80, align 1
  %82 = zext i16 %81 to i32
  %83 = icmp ult i16 %79, 6
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.20, ptr noundef %91) #10
  br label %1478

92:                                               ; preds = %77
  %93 = add nuw nsw i32 %82, 5
  %94 = getelementptr i8, ptr %21, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 13
  store i8 %95, ptr %96, align 2
  %97 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 14
  %98 = lshr i8 %95, 4
  %99 = and i8 %98, 1
  store i8 %99, ptr %97, align 1
  %100 = icmp ult i16 %79, 15
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.21, ptr noundef %108) #10
  br label %1478

109:                                              ; preds = %92
  %110 = add nuw nsw i32 %82, 13
  %111 = getelementptr i8, ptr %21, i32 %110
  %112 = load i16, ptr %111, align 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %109
  %115 = zext i16 %112 to i32
  %116 = getelementptr i8, ptr %21, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, -17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %114
  %121 = zext i8 %117 to i32
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 12
  %129 = lshr i32 %121, 4
  %130 = and i32 %121, 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.22, ptr noundef %128, i32 noundef %129, i32 noundef %130) #10
  br label %1478

131:                                              ; preds = %114
  %132 = add nuw nsw i32 %115, 1
  %133 = getelementptr i8, ptr %21, i32 %132
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = add nuw nsw i32 %135, %115
  %137 = getelementptr i8, ptr %21, i32 %136
  %138 = load i32, ptr %137, align 1
  %139 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 6
  store i32 %138, ptr %139, align 4
  %140 = add nuw nsw i32 %136, 4
  %141 = getelementptr i8, ptr %21, i32 %140
  %142 = load i32, ptr %141, align 1
  %143 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 7
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %131, %109
  %145 = icmp ugt i8 %27, 95
  br i1 %145, label %146, label %261

146:                                              ; preds = %144
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 18, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %253

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 18, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 18, i32 2
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = add nuw nsw i32 %156, 10
  %158 = getelementptr i8, ptr %153, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %253, label %161

161:                                              ; preds = %151
  %162 = add nuw nsw i32 %156, 12
  %163 = getelementptr i8, ptr %153, i32 %162
  %164 = add nuw nsw i32 %156, 9
  %165 = getelementptr i8, ptr %153, i32 %164
  br label %166

166:                                              ; preds = %247, %161
  %167 = phi i8 [ %159, %161 ], [ %248, %247 ]
  %168 = phi ptr [ %163, %161 ], [ %251, %247 ]
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, 65
  br i1 %170, label %171, label %247

171:                                              ; preds = %166
  %172 = getelementptr i8, ptr %168, i32 2
  %173 = load i16, ptr %172, align 1
  %174 = icmp eq i16 %173, 3
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 1
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.23, ptr noundef %182) #10
  br label %261

183:                                              ; preds = %171
  %184 = getelementptr i8, ptr %168, i32 4
  %185 = load i16, ptr %184, align 1
  %186 = zext i16 %185 to i32
  %187 = getelementptr i8, ptr %21, i32 %186
  %188 = load i16, ptr %187, align 1
  %189 = zext i16 %188 to i32
  %190 = icmp eq i16 %188, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %183
  %192 = load i32, ptr @__drm_debug, align 4
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %261, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 1
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.nouveau_drm, ptr %197, i32 0, i32 3
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.drm_device, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %201, ptr noundef nonnull @.str.24, ptr noundef %202) #10
  br label %261

203:                                              ; preds = %183
  %204 = getelementptr i8, ptr %21, i32 %189
  %205 = load i8, ptr %204, align 1
  %206 = icmp eq i8 %205, 16
  br i1 %206, label %218, label %207

207:                                              ; preds = %203
  %208 = zext i8 %205 to i32
  %209 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 1
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %struct.nouveau_drm, ptr %210, i32 0, i32 3
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.drm_device, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 12
  %216 = lshr i32 %208, 4
  %217 = and i32 %208, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.25, ptr noundef %215, i32 noundef %216, i32 noundef %217) #10
  br label %261

218:                                              ; preds = %203
  %219 = add nuw nsw i32 %189, 1
  %220 = getelementptr i8, ptr %21, i32 %219
  %221 = load i8, ptr %220, align 1
  %222 = add nuw nsw i32 %189, 2
  %223 = getelementptr i8, ptr %21, i32 %222
  %224 = load i8, ptr %223, align 1
  %225 = add nuw nsw i32 %189, 3
  %226 = getelementptr i8, ptr %21, i32 %225
  %227 = load i8, ptr %226, align 1
  %228 = icmp ne i8 %221, 4
  %229 = icmp ne i8 %224, 4
  %230 = select i1 %228, i1 true, i1 %229
  %231 = icmp ne i8 %227, 2
  %232 = select i1 %230, i1 true, i1 %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 1
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr inbounds %struct.nouveau_drm, ptr %235, i32 0, i32 3
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.drm_device, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.26, ptr noundef %240) #10
  br label %261

241:                                              ; preds = %218
  %242 = add nuw nsw i32 %189, 4
  %243 = getelementptr i8, ptr %21, i32 %242
  %244 = load i32, ptr %243, align 1
  %245 = and i32 %244, 1023
  %246 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 6
  store i32 %245, ptr %246, align 4
  br label %261

247:                                              ; preds = %166
  %248 = add i8 %167, -1
  %249 = load i8, ptr %165, align 1
  %250 = zext i8 %249 to i32
  %251 = getelementptr i8, ptr %168, i32 %250
  %252 = icmp eq i8 %248, 0
  br i1 %252, label %253, label %166

253:                                              ; preds = %247, %151, %146
  %254 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 1
  %255 = load ptr, ptr %254, align 8
  %256 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 3
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr inbounds %struct.drm_device, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.nouveau_drm, ptr %147, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %259, ptr noundef nonnull @.str.19, ptr noundef %260, i32 noundef 65) #10
  br label %261

261:                                              ; preds = %253, %241, %233, %207, %195, %191, %175, %144
  %262 = load ptr, ptr %6, align 4
  %263 = getelementptr inbounds %struct.drm_device, ptr %262, i32 0, i32 5
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 18, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %315

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 18, i32 4
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 18, i32 2
  %272 = load i16, ptr %271, align 4
  %273 = zext i16 %272 to i32
  %274 = add nuw nsw i32 %273, 10
  %275 = getelementptr i8, ptr %270, i32 %274
  %276 = load i8, ptr %275, align 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %315, label %278

278:                                              ; preds = %268
  %279 = add nuw nsw i32 %273, 12
  %280 = getelementptr i8, ptr %270, i32 %279
  %281 = add nuw nsw i32 %273, 9
  %282 = getelementptr i8, ptr %270, i32 %281
  br label %283

283:                                              ; preds = %309, %278
  %284 = phi i8 [ %276, %278 ], [ %310, %309 ]
  %285 = phi ptr [ %280, %278 ], [ %313, %309 ]
  %286 = load i8, ptr %285, align 1
  %287 = icmp eq i8 %286, 68
  br i1 %287, label %288, label %309

288:                                              ; preds = %283
  %289 = getelementptr i8, ptr %285, i32 2
  %290 = load i16, ptr %289, align 1
  %291 = icmp eq i16 %290, 4
  br i1 %291, label %300, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 1
  %294 = load ptr, ptr %293, align 8
  %295 = getelementptr inbounds %struct.nouveau_drm, ptr %294, i32 0, i32 3
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds %struct.drm_device, ptr %296, i32 0, i32 2
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %298, ptr noundef nonnull @.str.27, ptr noundef %299) #10
  br label %323

300:                                              ; preds = %288
  %301 = getelementptr i8, ptr %285, i32 4
  %302 = load i16, ptr %301, align 1
  %303 = zext i16 %302 to i32
  %304 = load ptr, ptr %22, align 4
  %305 = add nuw nsw i32 %303, 2
  %306 = getelementptr i8, ptr %304, i32 %305
  %307 = load i16, ptr %306, align 1
  %308 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24
  store i16 %307, ptr %308, align 4
  br label %323

309:                                              ; preds = %283
  %310 = add i8 %284, -1
  %311 = load i8, ptr %282, align 1
  %312 = zext i8 %311 to i32
  %313 = getelementptr i8, ptr %285, i32 %312
  %314 = icmp eq i8 %310, 0
  br i1 %314, label %315, label %283

315:                                              ; preds = %309, %268, %261
  %316 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 1
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.nouveau_drm, ptr %317, i32 0, i32 3
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.drm_device, ptr %319, i32 0, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %321, ptr noundef nonnull @.str.19, ptr noundef %322, i32 noundef 68) #10
  br label %323

323:                                              ; preds = %315, %300, %292
  %324 = load ptr, ptr %6, align 4
  %325 = getelementptr inbounds %struct.drm_device, ptr %324, i32 0, i32 5
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 18, i32 1
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %356

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 18, i32 4
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 18, i32 2
  %334 = load i16, ptr %333, align 4
  %335 = zext i16 %334 to i32
  %336 = add nuw nsw i32 %335, 10
  %337 = getelementptr i8, ptr %332, i32 %336
  %338 = load i8, ptr %337, align 1
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %356, label %340

340:                                              ; preds = %330
  %341 = add nuw nsw i32 %335, 12
  %342 = getelementptr i8, ptr %332, i32 %341
  %343 = add nuw nsw i32 %335, 9
  %344 = getelementptr i8, ptr %332, i32 %343
  br label %345

345:                                              ; preds = %350, %340
  %346 = phi i8 [ %338, %340 ], [ %351, %350 ]
  %347 = phi ptr [ %342, %340 ], [ %354, %350 ]
  %348 = load i8, ptr %347, align 1
  %349 = icmp eq i8 %348, 73
  br i1 %349, label %364, label %350

350:                                              ; preds = %345
  %351 = add i8 %346, -1
  %352 = load i8, ptr %344, align 1
  %353 = zext i8 %352 to i32
  %354 = getelementptr i8, ptr %347, i32 %353
  %355 = icmp eq i8 %351, 0
  br i1 %355, label %356, label %345

356:                                              ; preds = %350, %330, %323
  %357 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 2, i32 1
  %358 = load ptr, ptr %357, align 8
  %359 = getelementptr inbounds %struct.nouveau_drm, ptr %358, i32 0, i32 3
  %360 = load ptr, ptr %359, align 8
  %361 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 2
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %362, ptr noundef nonnull @.str.19, ptr noundef %363, i32 noundef 73) #10
  br label %1478

364:                                              ; preds = %345
  %365 = getelementptr i8, ptr %347, i32 2
  %366 = load i16, ptr %365, align 1
  %367 = icmp ult i16 %366, 14
  br i1 %367, label %368, label %376

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 2, i32 1
  %370 = load ptr, ptr %369, align 8
  %371 = getelementptr inbounds %struct.nouveau_drm, ptr %370, i32 0, i32 3
  %372 = load ptr, ptr %371, align 8
  %373 = getelementptr inbounds %struct.drm_device, ptr %372, i32 0, i32 2
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.nouveau_drm, ptr %326, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.28, ptr noundef %375) #10
  br label %1478

376:                                              ; preds = %364
  %377 = getelementptr i8, ptr %347, i32 4
  %378 = load i16, ptr %377, align 1
  %379 = zext i16 %378 to i32
  %380 = load ptr, ptr %22, align 4
  %381 = getelementptr i8, ptr %380, i32 %379
  %382 = load i16, ptr %381, align 1
  %383 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 18
  store i16 %382, ptr %383, align 2
  %384 = load ptr, ptr %325, align 4
  %385 = getelementptr inbounds %struct.nouveau_drm, ptr %384, i32 0, i32 18, i32 1
  %386 = load i32, ptr %385, align 4
  %387 = icmp eq i32 %386, 1
  br i1 %387, label %388, label %435

388:                                              ; preds = %376
  %389 = getelementptr inbounds %struct.nouveau_drm, ptr %384, i32 0, i32 18, i32 4
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.nouveau_drm, ptr %384, i32 0, i32 18, i32 2
  %392 = load i16, ptr %391, align 4
  %393 = zext i16 %392 to i32
  %394 = add nuw nsw i32 %393, 10
  %395 = getelementptr i8, ptr %390, i32 %394
  %396 = load i8, ptr %395, align 1
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %435, label %398

398:                                              ; preds = %388
  %399 = add nuw nsw i32 %393, 12
  %400 = getelementptr i8, ptr %390, i32 %399
  %401 = add nuw nsw i32 %393, 9
  %402 = getelementptr i8, ptr %390, i32 %401
  br label %403

403:                                              ; preds = %429, %398
  %404 = phi i8 [ %396, %398 ], [ %430, %429 ]
  %405 = phi ptr [ %400, %398 ], [ %433, %429 ]
  %406 = load i8, ptr %405, align 1
  %407 = icmp eq i8 %406, 77
  br i1 %407, label %408, label %429

408:                                              ; preds = %403
  %409 = getelementptr i8, ptr %405, i32 2
  %410 = load i16, ptr %409, align 1
  %411 = icmp ult i16 %410, 5
  br i1 %411, label %444, label %412

412:                                              ; preds = %408
  %413 = getelementptr i8, ptr %405, i32 4
  %414 = load i16, ptr %413, align 1
  %415 = zext i16 %414 to i32
  %416 = getelementptr i8, ptr %405, i32 1
  %417 = load i8, ptr %416, align 1
  %418 = icmp ult i8 %417, 2
  %419 = add nuw nsw i32 %415, 2
  %420 = select i1 %418, i32 %419, i32 %415
  %421 = select i1 %418, i32 3, i32 1
  %422 = getelementptr i8, ptr %380, i32 %420
  %423 = load i8, ptr %422, align 1
  %424 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 21
  store i8 %423, ptr %424, align 4
  %425 = add nuw nsw i32 %421, %415
  %426 = getelementptr i8, ptr %380, i32 %425
  %427 = load i16, ptr %426, align 1
  %428 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 20
  store i16 %427, ptr %428, align 2
  br label %444

429:                                              ; preds = %403
  %430 = add i8 %404, -1
  %431 = load i8, ptr %402, align 1
  %432 = zext i8 %431 to i32
  %433 = getelementptr i8, ptr %405, i32 %432
  %434 = icmp eq i8 %430, 0
  br i1 %434, label %435, label %403

435:                                              ; preds = %429, %388, %376
  %436 = getelementptr inbounds %struct.nouveau_drm, ptr %384, i32 0, i32 2, i32 1
  %437 = load ptr, ptr %436, align 8
  %438 = getelementptr inbounds %struct.nouveau_drm, ptr %437, i32 0, i32 3
  %439 = load ptr, ptr %438, align 8
  %440 = getelementptr inbounds %struct.drm_device, ptr %439, i32 0, i32 2
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.nouveau_drm, ptr %384, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %441, ptr noundef nonnull @.str.19, ptr noundef %442, i32 noundef 77) #10
  %443 = load ptr, ptr %6, align 4
  br label %444

444:                                              ; preds = %435, %412, %408
  %445 = phi ptr [ %324, %412 ], [ %324, %408 ], [ %443, %435 ]
  %446 = getelementptr inbounds %struct.drm_device, ptr %445, i32 0, i32 5
  %447 = load ptr, ptr %446, align 4
  %448 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 18, i32 1
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, 1
  br i1 %450, label %451, label %497

451:                                              ; preds = %444
  %452 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 18, i32 4
  %453 = load ptr, ptr %452, align 4
  %454 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 18, i32 2
  %455 = load i16, ptr %454, align 4
  %456 = zext i16 %455 to i32
  %457 = add nuw nsw i32 %456, 10
  %458 = getelementptr i8, ptr %453, i32 %457
  %459 = load i8, ptr %458, align 1
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %497, label %461

461:                                              ; preds = %451
  %462 = add nuw nsw i32 %456, 12
  %463 = getelementptr i8, ptr %453, i32 %462
  %464 = add nuw nsw i32 %456, 9
  %465 = getelementptr i8, ptr %453, i32 %464
  br label %466

466:                                              ; preds = %491, %461
  %467 = phi i8 [ %459, %461 ], [ %492, %491 ]
  %468 = phi ptr [ %463, %461 ], [ %495, %491 ]
  %469 = load i8, ptr %468, align 1
  %470 = icmp eq i8 %469, 76
  br i1 %470, label %471, label %491

471:                                              ; preds = %466
  %472 = getelementptr i8, ptr %468, i32 2
  %473 = load i16, ptr %472, align 1
  %474 = icmp eq i16 %473, 2
  br i1 %474, label %483, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 2, i32 1
  %477 = load ptr, ptr %476, align 8
  %478 = getelementptr inbounds %struct.nouveau_drm, ptr %477, i32 0, i32 3
  %479 = load ptr, ptr %478, align 8
  %480 = getelementptr inbounds %struct.drm_device, ptr %479, i32 0, i32 2
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %481, ptr noundef nonnull @.str.29, ptr noundef %482) #10
  br label %505

483:                                              ; preds = %471
  %484 = getelementptr i8, ptr %468, i32 4
  %485 = load i16, ptr %484, align 1
  %486 = zext i16 %485 to i32
  %487 = load ptr, ptr %22, align 4
  %488 = getelementptr i8, ptr %487, i32 %486
  %489 = load i16, ptr %488, align 1
  %490 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 3
  store i16 %489, ptr %490, align 4
  br label %505

491:                                              ; preds = %466
  %492 = add i8 %467, -1
  %493 = load i8, ptr %465, align 1
  %494 = zext i8 %493 to i32
  %495 = getelementptr i8, ptr %468, i32 %494
  %496 = icmp eq i8 %492, 0
  br i1 %496, label %497, label %466

497:                                              ; preds = %491, %451, %444
  %498 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 2, i32 1
  %499 = load ptr, ptr %498, align 8
  %500 = getelementptr inbounds %struct.nouveau_drm, ptr %499, i32 0, i32 3
  %501 = load ptr, ptr %500, align 8
  %502 = getelementptr inbounds %struct.drm_device, ptr %501, i32 0, i32 2
  %503 = load ptr, ptr %502, align 4
  %504 = getelementptr inbounds %struct.nouveau_drm, ptr %447, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %503, ptr noundef nonnull @.str.19, ptr noundef %504, i32 noundef 76) #10
  br label %505

505:                                              ; preds = %497, %483, %475
  %506 = load ptr, ptr %6, align 4
  %507 = getelementptr inbounds %struct.drm_device, ptr %506, i32 0, i32 5
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 18, i32 1
  %510 = load i32, ptr %509, align 4
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %512, label %610

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 18, i32 4
  %514 = load ptr, ptr %513, align 4
  %515 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 18, i32 2
  %516 = load i16, ptr %515, align 4
  %517 = zext i16 %516 to i32
  %518 = add nuw nsw i32 %517, 10
  %519 = getelementptr i8, ptr %514, i32 %518
  %520 = load i8, ptr %519, align 1
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %610, label %522

522:                                              ; preds = %512
  %523 = add nuw nsw i32 %517, 12
  %524 = getelementptr i8, ptr %514, i32 %523
  %525 = add nuw nsw i32 %517, 9
  %526 = getelementptr i8, ptr %514, i32 %525
  br label %527

527:                                              ; preds = %604, %522
  %528 = phi i8 [ %520, %522 ], [ %605, %604 ]
  %529 = phi ptr [ %524, %522 ], [ %608, %604 ]
  %530 = load i8, ptr %529, align 1
  %531 = icmp eq i8 %530, 84
  br i1 %531, label %532, label %604

532:                                              ; preds = %527
  %533 = getelementptr i8, ptr %529, i32 2
  %534 = load i16, ptr %533, align 1
  %535 = icmp eq i16 %534, 2
  br i1 %535, label %544, label %536

536:                                              ; preds = %532
  %537 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 1
  %538 = load ptr, ptr %537, align 8
  %539 = getelementptr inbounds %struct.nouveau_drm, ptr %538, i32 0, i32 3
  %540 = load ptr, ptr %539, align 8
  %541 = getelementptr inbounds %struct.drm_device, ptr %540, i32 0, i32 2
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %542, ptr noundef nonnull @.str.30, ptr noundef %543) #10
  br label %797

544:                                              ; preds = %532
  %545 = getelementptr i8, ptr %529, i32 4
  %546 = load i16, ptr %545, align 1
  %547 = zext i16 %546 to i32
  %548 = load ptr, ptr %22, align 4
  %549 = getelementptr i8, ptr %548, i32 %547
  %550 = load i16, ptr %549, align 1
  %551 = icmp eq i16 %550, 0
  %552 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 1
  %553 = load ptr, ptr %552, align 8
  %554 = getelementptr inbounds %struct.nouveau_drm, ptr %553, i32 0, i32 3
  %555 = load ptr, ptr %554, align 8
  %556 = getelementptr inbounds %struct.drm_device, ptr %555, i32 0, i32 2
  %557 = load ptr, ptr %556, align 4
  %558 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 12
  br i1 %551, label %559, label %560

559:                                              ; preds = %544
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %557, ptr noundef nonnull @.str.31, ptr noundef %558) #10
  br label %797

560:                                              ; preds = %544
  %561 = zext i16 %550 to i32
  %562 = getelementptr i8, ptr %548, i32 %561
  %563 = load i8, ptr %562, align 1
  %564 = zext i8 %563 to i32
  %565 = lshr i32 %564, 4
  %566 = and i32 %564, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %557, ptr noundef nonnull @.str.32, ptr noundef %558, i32 noundef %565, i32 noundef %566) #10
  %567 = load ptr, ptr %22, align 4
  %568 = getelementptr i8, ptr %567, i32 %561
  %569 = load i8, ptr %568, align 1
  %570 = icmp eq i8 %569, 17
  br i1 %570, label %571, label %797

571:                                              ; preds = %560
  %572 = add nuw nsw i32 %561, 7
  %573 = getelementptr i8, ptr %567, i32 %572
  %574 = load i16, ptr %573, align 1
  %575 = zext i16 %574 to i32
  %576 = getelementptr i8, ptr %567, i32 %575
  %577 = load i8, ptr %576, align 1
  %578 = icmp eq i8 %577, 113
  br i1 %578, label %579, label %587

579:                                              ; preds = %571
  %580 = add nuw nsw i32 %561, 9
  %581 = getelementptr i8, ptr %567, i32 %580
  %582 = load i16, ptr %581, align 1
  %583 = zext i16 %582 to i32
  %584 = getelementptr i8, ptr %567, i32 %583
  %585 = load i8, ptr %584, align 1
  %586 = icmp eq i8 %585, 113
  br i1 %586, label %594, label %587

587:                                              ; preds = %579, %571
  %588 = load ptr, ptr %552, align 8
  %589 = getelementptr inbounds %struct.nouveau_drm, ptr %588, i32 0, i32 3
  %590 = load ptr, ptr %589, align 8
  %591 = getelementptr inbounds %struct.drm_device, ptr %590, i32 0, i32 2
  %592 = load ptr, ptr %591, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %592, ptr noundef nonnull @.str.33, ptr noundef %558) #10
  %593 = load ptr, ptr %22, align 4
  br label %594

594:                                              ; preds = %587, %579
  %595 = phi ptr [ %593, %587 ], [ %567, %579 ]
  %596 = add nuw nsw i32 %561, 11
  %597 = getelementptr i8, ptr %595, i32 %596
  %598 = load i16, ptr %597, align 1
  %599 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25
  store i16 %598, ptr %599, align 4
  %600 = add nuw nsw i32 %561, 13
  %601 = getelementptr i8, ptr %595, i32 %600
  %602 = load i16, ptr %601, align 1
  %603 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25, i32 1
  store i16 %602, ptr %603, align 2
  br label %797

604:                                              ; preds = %527
  %605 = add i8 %528, -1
  %606 = load i8, ptr %526, align 1
  %607 = zext i8 %606 to i32
  %608 = getelementptr i8, ptr %529, i32 %607
  %609 = icmp eq i8 %605, 0
  br i1 %609, label %610, label %527

610:                                              ; preds = %604, %512, %505
  %611 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 1
  %612 = load ptr, ptr %611, align 8
  %613 = getelementptr inbounds %struct.nouveau_drm, ptr %612, i32 0, i32 3
  %614 = load ptr, ptr %613, align 8
  %615 = getelementptr inbounds %struct.drm_device, ptr %614, i32 0, i32 2
  %616 = load ptr, ptr %615, align 4
  %617 = getelementptr inbounds %struct.nouveau_drm, ptr %508, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %616, ptr noundef nonnull @.str.19, ptr noundef %617, i32 noundef 84) #10
  br label %797

618:                                              ; preds = %12
  %619 = getelementptr inbounds %struct.nvkm_bios, ptr %18, i32 0, i32 5
  %620 = load i32, ptr %619, align 4
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %1478, label %622

622:                                              ; preds = %618
  store i32 0, ptr %19, align 4
  %623 = load i32, ptr %619, align 4
  %624 = trunc i32 %623 to i16
  %625 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 2
  store i16 %624, ptr %625, align 4
  %626 = and i32 %623, 65535
  %627 = load ptr, ptr %4, align 4
  %628 = getelementptr i8, ptr %21, i32 %626
  %629 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 8
  store i8 75, ptr %629, align 4
  %630 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 15
  store i32 256000, ptr %630, align 4
  %631 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 16
  store i32 128000, ptr %631, align 4
  %632 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24
  %633 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 12
  store i32 90000, ptr %633, align 4
  %634 = getelementptr i8, ptr %628, i32 5
  %635 = load i8, ptr %634, align 1
  %636 = getelementptr i8, ptr %628, i32 6
  %637 = load i8, ptr %636, align 1
  %638 = getelementptr inbounds %struct.nouveau_drm, ptr %627, i32 0, i32 2, i32 1
  %639 = load ptr, ptr %638, align 8
  %640 = getelementptr inbounds %struct.nouveau_drm, ptr %639, i32 0, i32 3
  %641 = load ptr, ptr %640, align 8
  %642 = getelementptr inbounds %struct.drm_device, ptr %641, i32 0, i32 2
  %643 = load ptr, ptr %642, align 4
  %644 = getelementptr inbounds %struct.nouveau_drm, ptr %627, i32 0, i32 2, i32 12
  %645 = zext i8 %635 to i32
  %646 = zext i8 %637 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %643, ptr noundef nonnull @.str.34, ptr noundef %644, i32 noundef %645, i32 noundef %646) #10
  %647 = icmp ult i8 %635, 5
  br i1 %647, label %648, label %651

648:                                              ; preds = %622
  %649 = load ptr, ptr %22, align 4
  %650 = getelementptr i8, ptr %649, i32 54
  store i16 0, ptr %650, align 2
  br label %651

651:                                              ; preds = %648, %622
  %652 = icmp ne i8 %637, 1
  %653 = select i1 %647, i1 %652, i1 false
  %654 = icmp ugt i8 %635, 5
  %655 = or i1 %654, %653
  br i1 %655, label %656, label %662

656:                                              ; preds = %651
  %657 = load ptr, ptr %638, align 8
  %658 = getelementptr inbounds %struct.nouveau_drm, ptr %657, i32 0, i32 3
  %659 = load ptr, ptr %658, align 8
  %660 = getelementptr inbounds %struct.drm_device, ptr %659, i32 0, i32 2
  %661 = load ptr, ptr %660, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %661, ptr noundef nonnull @.str.35, ptr noundef %644) #10
  br label %1478

662:                                              ; preds = %651
  switch i8 %635, label %663 [
    i8 0, label %797
    i8 1, label %676
    i8 2, label %676
    i8 3, label %676
  ]

663:                                              ; preds = %662
  %664 = icmp eq i8 %635, 4
  %665 = icmp eq i8 %637, 0
  %666 = select i1 %664, i1 true, i1 %665
  %667 = icmp ult i8 %637, 6
  %668 = select i1 %666, i1 true, i1 %667
  br i1 %668, label %676, label %669

669:                                              ; preds = %663
  %670 = icmp ult i8 %637, 16
  br i1 %670, label %676, label %671

671:                                              ; preds = %669
  %672 = icmp eq i8 %637, 16
  br i1 %672, label %676, label %673

673:                                              ; preds = %671
  %674 = icmp ugt i8 %637, 19
  %675 = icmp ugt i8 %637, 38
  br label %676

676:                                              ; preds = %673, %671, %669, %663, %662, %662, %662
  %677 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ true, %663 ], [ true, %669 ], [ true, %671 ], [ true, %673 ]
  %678 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ false, %663 ], [ true, %669 ], [ true, %671 ], [ true, %673 ]
  %679 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ false, %663 ], [ false, %669 ], [ true, %671 ], [ true, %673 ]
  %680 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ false, %663 ], [ false, %669 ], [ false, %671 ], [ true, %673 ]
  %681 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ false, %663 ], [ false, %669 ], [ false, %671 ], [ %674, %673 ]
  %682 = phi i1 [ false, %662 ], [ false, %662 ], [ false, %662 ], [ false, %663 ], [ false, %669 ], [ false, %671 ], [ %675, %673 ]
  %683 = load i8, ptr %628, align 1
  %684 = getelementptr i8, ptr %628, i32 1
  %685 = load i8, ptr %684, align 1
  %686 = add i8 %683, %685
  %687 = getelementptr i8, ptr %628, i32 2
  %688 = load i8, ptr %687, align 1
  %689 = add i8 %688, %686
  %690 = getelementptr i8, ptr %628, i32 3
  %691 = load i8, ptr %690, align 1
  %692 = add i8 %691, %689
  %693 = getelementptr i8, ptr %628, i32 4
  %694 = load i8, ptr %693, align 1
  %695 = add i8 %694, %692
  %696 = load i8, ptr %634, align 1
  %697 = add i8 %696, %695
  %698 = load i8, ptr %636, align 1
  %699 = add i8 %698, %697
  %700 = getelementptr i8, ptr %628, i32 7
  %701 = load i8, ptr %700, align 1
  %702 = sub i8 0, %699
  %703 = icmp eq i8 %701, %702
  br i1 %703, label %710, label %704

704:                                              ; preds = %676
  %705 = load ptr, ptr %638, align 8
  %706 = getelementptr inbounds %struct.nouveau_drm, ptr %705, i32 0, i32 3
  %707 = load ptr, ptr %706, align 8
  %708 = getelementptr inbounds %struct.drm_device, ptr %707, i32 0, i32 2
  %709 = load ptr, ptr %708, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %709, ptr noundef nonnull @.str.36, ptr noundef %644) #10
  br label %1478

710:                                              ; preds = %676
  %711 = getelementptr i8, ptr %628, i32 9
  %712 = load i8, ptr %711, align 1
  %713 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 13
  store i8 %712, ptr %713, align 2
  %714 = icmp ult i8 %637, 16
  %715 = select i1 %647, i1 true, i1 %714
  br i1 %715, label %716, label %718

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 17
  store i8 1, ptr %717, align 4
  br label %718

718:                                              ; preds = %716, %710
  %719 = icmp ult i8 %635, 2
  %720 = select i1 %719, i32 14, i32 18
  %721 = getelementptr i8, ptr %628, i32 %720
  %722 = load i16, ptr %721, align 1
  %723 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 18
  store i16 %722, ptr %723, align 2
  %724 = add nuw nsw i32 %720, 2
  %725 = getelementptr i8, ptr %628, i32 %724
  %726 = load i16, ptr %725, align 1
  %727 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 19
  store i16 %726, ptr %727, align 4
  %728 = icmp ugt i8 %635, 2
  br i1 %728, label %729, label %739

729:                                              ; preds = %718
  %730 = getelementptr i8, ptr %628, i32 24
  %731 = load i16, ptr %730, align 1
  %732 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26
  store i16 %731, ptr %732, align 4
  %733 = getelementptr i8, ptr %628, i32 26
  %734 = load i16, ptr %733, align 1
  %735 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 1
  store i16 %734, ptr %735, align 2
  %736 = getelementptr i8, ptr %628, i32 28
  %737 = load i16, ptr %736, align 1
  %738 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 2
  store i16 %737, ptr %738, align 4
  br label %739

739:                                              ; preds = %729, %718
  %740 = add i32 %623, 54
  %741 = and i32 %740, 65535
  %742 = select i1 %677, i32 %741, i32 72
  %743 = load ptr, ptr %22, align 4
  %744 = getelementptr i8, ptr %743, i32 %742
  %745 = load i8, ptr %744, align 1
  %746 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3
  store i8 %745, ptr %746, align 2
  %747 = add nuw nsw i32 %742, 1
  %748 = getelementptr i8, ptr %743, i32 %747
  %749 = load i8, ptr %748, align 1
  %750 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3, i32 1
  store i8 %749, ptr %750, align 1
  %751 = add nuw nsw i32 %742, 2
  %752 = getelementptr i8, ptr %743, i32 %751
  %753 = load i8, ptr %752, align 1
  %754 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3, i32 2
  store i8 %753, ptr %754, align 2
  br i1 %678, label %755, label %760

755:                                              ; preds = %739
  %756 = getelementptr i8, ptr %628, i32 67
  %757 = load i32, ptr %756, align 1
  store i32 %757, ptr %630, align 4
  %758 = getelementptr i8, ptr %628, i32 71
  %759 = load i32, ptr %758, align 1
  store i32 %759, ptr %631, align 4
  br label %760

760:                                              ; preds = %755, %739
  br i1 %679, label %761, label %766

761:                                              ; preds = %760
  %762 = add i32 %623, 75
  %763 = and i32 %762, 65535
  %764 = getelementptr i8, ptr %743, i32 %763
  %765 = load i16, ptr %764, align 1
  store i16 %765, ptr %723, align 2
  br label %766

766:                                              ; preds = %761, %760
  br i1 %680, label %767, label %783

767:                                              ; preds = %766
  %768 = getelementptr i8, ptr %628, i32 89
  %769 = load i16, ptr %768, align 1
  %770 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25
  store i16 %769, ptr %770, align 4
  %771 = getelementptr i8, ptr %628, i32 91
  %772 = load i16, ptr %771, align 1
  %773 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25, i32 1
  store i16 %772, ptr %773, align 2
  %774 = getelementptr i8, ptr %628, i32 95
  %775 = load i16, ptr %774, align 1
  %776 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 4
  store i16 %775, ptr %776, align 2
  %777 = getelementptr i8, ptr %628, i32 105
  %778 = load i16, ptr %777, align 1
  store i16 %778, ptr %632, align 4
  %779 = getelementptr i8, ptr %628, i32 107
  %780 = load i16, ptr %779, align 1
  %781 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 1
  store i16 %780, ptr %781, align 2
  %782 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 2
  store i32 1, ptr %782, align 4
  br label %783

783:                                              ; preds = %767, %766
  br i1 %681, label %784, label %791

784:                                              ; preds = %783
  %785 = getelementptr i8, ptr %628, i32 117
  %786 = load i16, ptr %785, align 1
  %787 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 3
  store i16 %786, ptr %787, align 4
  %788 = getelementptr i8, ptr %628, i32 119
  %789 = load i16, ptr %788, align 1
  %790 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 4
  store i16 %789, ptr %790, align 2
  br label %791

791:                                              ; preds = %784, %783
  br i1 %682, label %792, label %797

792:                                              ; preds = %791
  %793 = getelementptr i8, ptr %628, i32 156
  %794 = load i16, ptr %793, align 1
  %795 = zext i16 %794 to i32
  %796 = mul nuw nsw i32 %795, 10
  store i32 %796, ptr %633, align 4
  br label %797

797:                                              ; preds = %792, %791, %662, %610, %594, %560, %559, %536
  %798 = load ptr, ptr %4, align 4
  %799 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %800 = icmp eq ptr %799, null
  br i1 %800, label %801, label %869

801:                                              ; preds = %797
  %802 = load i32, ptr %19, align 4
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %1478

804:                                              ; preds = %801
  %805 = load ptr, ptr %4, align 4
  %806 = load ptr, ptr %7, align 4
  %807 = getelementptr i8, ptr %806, i32 -102
  %808 = load i16, ptr %807, align 2
  %809 = and i16 %808, 4080
  %810 = getelementptr inbounds %struct.nouveau_drm, ptr %805, i32 0, i32 2, i32 3, i32 1, i32 4
  %811 = load i8, ptr %810, align 1
  %812 = icmp ugt i8 %811, 1
  %813 = icmp ne i16 %809, 256
  %814 = select i1 %812, i1 %813, i1 false
  %815 = icmp ne i16 %809, 336
  %816 = select i1 %814, i1 %815, i1 false
  %817 = icmp ne i16 %809, 416
  %818 = select i1 %816, i1 %817, i1 false
  %819 = icmp ne i16 %809, 512
  %820 = select i1 %818, i1 %819, i1 false
  %821 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3
  %822 = load i8, ptr %821, align 2
  %823 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 1
  %824 = load i32, ptr %823, align 4
  %825 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %824
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %825, i8 0, i32 40, i1 false) #11
  %826 = load i32, ptr %823, align 4
  %827 = add i32 %826, 1
  store i32 %827, ptr %823, align 4
  store i32 %826, ptr %825, align 4
  %828 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %824, i32 3
  store i32 0, ptr %828, align 4
  %829 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %824, i32 4
  store i8 %822, ptr %829, align 4
  %830 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %824, i32 5
  store i8 1, ptr %830, align 1
  %831 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %824, i32 9
  store i8 1, ptr %831, align 1
  %832 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3, i32 1
  %833 = load i8, ptr %832, align 1
  %834 = zext i8 %833 to i32
  %835 = tail call i32 @nv04_tv_identify(ptr noundef %0, i32 noundef %834) #11
  %836 = icmp sgt i32 %835, -1
  br i1 %836, label %837, label %843

837:                                              ; preds = %804
  %838 = load i8, ptr %832, align 1
  %839 = load i32, ptr %823, align 4
  %840 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %839
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %840, i8 0, i32 40, i1 false) #11
  %841 = load i32, ptr %823, align 4
  %842 = add i32 %841, 1
  store i32 %842, ptr %823, align 4
  store i32 %841, ptr %840, align 4
  br label %858

843:                                              ; preds = %804
  %844 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25
  %845 = load i16, ptr %844, align 4
  %846 = icmp eq i16 %845, 0
  br i1 %846, label %847, label %851

847:                                              ; preds = %843
  %848 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 25, i32 1
  %849 = load i16, ptr %848, align 2
  %850 = icmp eq i16 %849, 0
  br i1 %850, label %1161, label %851

851:                                              ; preds = %847, %843
  %852 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 26, i32 3, i32 2
  %853 = load i8, ptr %852, align 2
  %854 = load i32, ptr %823, align 4
  %855 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %854
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %855, i8 0, i32 40, i1 false) #11
  %856 = load i32, ptr %823, align 4
  %857 = add i32 %856, 1
  store i32 %857, ptr %823, align 4
  store i32 %856, ptr %855, align 4
  br label %858

858:                                              ; preds = %851, %837
  %859 = phi i32 [ %854, %851 ], [ %839, %837 ]
  %860 = phi i32 [ 2, %851 ], [ 1, %837 ]
  %861 = phi i8 [ %853, %851 ], [ %838, %837 ]
  %862 = phi i8 [ 1, %851 ], [ 0, %837 ]
  %863 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %859, i32 3
  store i32 %860, ptr %863, align 4
  %864 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %859, i32 4
  store i8 %861, ptr %864, align 4
  %865 = select i1 %820, i8 3, i8 1
  %866 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %859, i32 5
  store i8 %865, ptr %866, align 1
  %867 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %859, i32 8
  store i8 1, ptr %867, align 4
  %868 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %859, i32 9
  store i8 %862, ptr %868, align 1
  br label %1161

869:                                              ; preds = %797
  %870 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22
  %871 = getelementptr inbounds %struct.nouveau_drm, ptr %798, i32 0, i32 2, i32 1
  %872 = load ptr, ptr %871, align 8
  %873 = getelementptr inbounds %struct.nouveau_drm, ptr %872, i32 0, i32 3
  %874 = load ptr, ptr %873, align 8
  %875 = getelementptr inbounds %struct.drm_device, ptr %874, i32 0, i32 2
  %876 = load ptr, ptr %875, align 4
  %877 = getelementptr inbounds %struct.nouveau_drm, ptr %798, i32 0, i32 2, i32 12
  %878 = load i8, ptr %799, align 1
  %879 = zext i8 %878 to i32
  %880 = lshr i32 %879, 4
  %881 = and i32 %879, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %876, ptr noundef nonnull @.str.37, ptr noundef %877, i32 noundef %880, i32 noundef %881) #10
  %882 = load i8, ptr %799, align 1
  store i8 %882, ptr %870, align 4
  %883 = tail call i32 @olddcb_outp_foreach(ptr noundef %0, ptr noundef null, ptr noundef nonnull @parse_dcb_entry) #11
  %884 = load i8, ptr %870, align 4
  %885 = icmp ult i8 %884, 33
  br i1 %885, label %886, label %976

886:                                              ; preds = %869
  %887 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 1
  %888 = load i32, ptr %887, align 4
  %889 = icmp sgt i32 %888, 0
  br i1 %889, label %890, label %974

890:                                              ; preds = %886
  %891 = load ptr, ptr %4, align 4
  %892 = getelementptr inbounds %struct.nouveau_drm, ptr %891, i32 0, i32 2, i32 1
  %893 = getelementptr inbounds %struct.nouveau_drm, ptr %891, i32 0, i32 2, i32 12
  br label %899

894:                                              ; preds = %946, %899
  %895 = phi i32 [ %900, %899 ], [ %947, %946 ]
  %896 = icmp slt i32 %902, %895
  br i1 %896, label %899, label %897

897:                                              ; preds = %894
  %898 = icmp sgt i32 %895, 0
  br i1 %898, label %951, label %974

899:                                              ; preds = %894, %890
  %900 = phi i32 [ %888, %890 ], [ %895, %894 ]
  %901 = phi i32 [ 0, %890 ], [ %902, %894 ]
  %902 = add nuw nsw i32 %901, 1
  %903 = icmp slt i32 %902, %900
  br i1 %903, label %904, label %894

904:                                              ; preds = %899
  %905 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %901, i32 4
  %906 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %901, i32 3
  %907 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %901, i32 8
  %908 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %901, i32 9
  %909 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %901, i32 5
  br label %910

910:                                              ; preds = %946, %904
  %911 = phi i32 [ %900, %904 ], [ %947, %946 ]
  %912 = phi i32 [ %900, %904 ], [ %948, %946 ]
  %913 = phi i32 [ %902, %904 ], [ %949, %946 ]
  %914 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %913, i32 3
  %915 = load i32, ptr %914, align 4
  %916 = icmp eq i32 %915, 100
  br i1 %916, label %946, label %917

917:                                              ; preds = %910
  %918 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %913, i32 4
  %919 = load i8, ptr %918, align 4
  %920 = load i8, ptr %905, align 4
  %921 = icmp eq i8 %919, %920
  br i1 %921, label %922, label %946

922:                                              ; preds = %917
  %923 = load i32, ptr %906, align 4
  %924 = icmp eq i32 %915, %923
  br i1 %924, label %925, label %946

925:                                              ; preds = %922
  %926 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %913, i32 8
  %927 = load i8, ptr %926, align 4
  %928 = load i8, ptr %907, align 4
  %929 = icmp eq i8 %927, %928
  br i1 %929, label %930, label %946

930:                                              ; preds = %925
  %931 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %913, i32 9
  %932 = load i8, ptr %931, align 1
  %933 = load i8, ptr %908, align 1
  %934 = icmp eq i8 %932, %933
  br i1 %934, label %935, label %946

935:                                              ; preds = %930
  %936 = load ptr, ptr %892, align 8
  %937 = getelementptr inbounds %struct.nouveau_drm, ptr %936, i32 0, i32 3
  %938 = load ptr, ptr %937, align 8
  %939 = getelementptr inbounds %struct.drm_device, ptr %938, i32 0, i32 2
  %940 = load ptr, ptr %939, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %940, ptr noundef nonnull @.str.43, ptr noundef %893, i32 noundef %901, i32 noundef %913) #10
  %941 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %913, i32 5
  %942 = load i8, ptr %941, align 1
  %943 = load i8, ptr %909, align 1
  %944 = or i8 %943, %942
  store i8 %944, ptr %909, align 1
  store i32 100, ptr %914, align 4
  %945 = load i32, ptr %887, align 4
  br label %946

946:                                              ; preds = %935, %930, %925, %922, %917, %910
  %947 = phi i32 [ %911, %917 ], [ %911, %922 ], [ %911, %925 ], [ %911, %930 ], [ %945, %935 ], [ %911, %910 ]
  %948 = phi i32 [ %912, %917 ], [ %912, %922 ], [ %912, %925 ], [ %912, %930 ], [ %945, %935 ], [ %912, %910 ]
  %949 = add nuw nsw i32 %913, 1
  %950 = icmp slt i32 %949, %948
  br i1 %950, label %910, label %894

951:                                              ; preds = %968, %897
  %952 = phi i32 [ %969, %968 ], [ %895, %897 ]
  %953 = phi i32 [ %970, %968 ], [ %895, %897 ]
  %954 = phi i32 [ %971, %968 ], [ 0, %897 ]
  %955 = phi i32 [ %972, %968 ], [ 0, %897 ]
  %956 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %955
  %957 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %955, i32 3
  %958 = load i32, ptr %957, align 4
  %959 = icmp eq i32 %958, 100
  br i1 %959, label %968, label %960

960:                                              ; preds = %951
  %961 = icmp eq i32 %954, %955
  br i1 %961, label %965, label %962

962:                                              ; preds = %960
  %963 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %954
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %963, ptr noundef align 4 dereferenceable(40) %956, i32 40, i1 false) #11
  store i32 %954, ptr %963, align 4
  %964 = load i32, ptr %887, align 4
  br label %965

965:                                              ; preds = %962, %960
  %966 = phi i32 [ %964, %962 ], [ %952, %960 ]
  %967 = add i32 %954, 1
  br label %968

968:                                              ; preds = %965, %951
  %969 = phi i32 [ %952, %951 ], [ %966, %965 ]
  %970 = phi i32 [ %953, %951 ], [ %966, %965 ]
  %971 = phi i32 [ %954, %951 ], [ %967, %965 ]
  %972 = add nuw nsw i32 %955, 1
  %973 = icmp slt i32 %972, %970
  br i1 %973, label %951, label %974

974:                                              ; preds = %968, %897, %886
  %975 = phi i32 [ 0, %897 ], [ 0, %886 ], [ %971, %968 ]
  store i32 %975, ptr %887, align 4
  br label %976

976:                                              ; preds = %974, %869
  %977 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %978 = icmp eq ptr %977, null
  br i1 %978, label %1069, label %979

979:                                              ; preds = %1064, %976
  %980 = phi ptr [ %1067, %1064 ], [ %977, %976 ]
  %981 = phi i8 [ %1066, %1064 ], [ 0, %976 ]
  %982 = phi i32 [ %1065, %1064 ], [ 0, %976 ]
  %983 = load i8, ptr %980, align 1
  %984 = icmp ugt i8 %983, 47
  br i1 %984, label %985, label %1069

985:                                              ; preds = %979
  %986 = getelementptr i8, ptr %980, i32 1
  %987 = load i8, ptr %986, align 1
  %988 = icmp ugt i8 %987, 21
  br i1 %988, label %989, label %1069

989:                                              ; preds = %985
  %990 = getelementptr i8, ptr %980, i32 20
  %991 = load i16, ptr %990, align 1
  %992 = icmp eq i16 %991, 0
  br i1 %992, label %1069, label %993

993:                                              ; preds = %989
  %994 = load ptr, ptr %4, align 4
  %995 = getelementptr inbounds %struct.nouveau_drm, ptr %994, i32 0, i32 18, i32 4
  %996 = load ptr, ptr %995, align 4
  %997 = zext i16 %991 to i32
  %998 = getelementptr i8, ptr %996, i32 %997
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1069, label %1000

1000:                                             ; preds = %993
  %1001 = load i8, ptr %998, align 1
  %1002 = add i8 %1001, -48
  %1003 = icmp ult i8 %1002, 17
  br i1 %1003, label %1004, label %1069

1004:                                             ; preds = %1000
  %1005 = getelementptr i8, ptr %998, i32 2
  %1006 = load i8, ptr %1005, align 1
  %1007 = icmp ugt i8 %1006, %981
  br i1 %1007, label %1008, label %1069

1008:                                             ; preds = %1004
  %1009 = and i32 %982, 255
  %1010 = getelementptr i8, ptr %998, i32 1
  %1011 = load i8, ptr %1010, align 1
  %1012 = zext i8 %1011 to i32
  %1013 = getelementptr i8, ptr %998, i32 %1012
  %1014 = getelementptr i8, ptr %998, i32 3
  %1015 = load i8, ptr %1014, align 1
  %1016 = zext i8 %1015 to i32
  %1017 = mul nuw nsw i32 %1009, %1016
  %1018 = getelementptr i8, ptr %1013, i32 %1017
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1069, label %1020

1020:                                             ; preds = %1008
  %1021 = load i8, ptr %1018, align 1
  %1022 = icmp eq i8 %1021, -1
  br i1 %1022, label %1064, label %1023

1023:                                             ; preds = %1020
  %1024 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1049, label %1026

1026:                                             ; preds = %1023
  %1027 = load i8, ptr %1024, align 1
  %1028 = icmp ugt i8 %1027, 47
  br i1 %1028, label %1029, label %1049

1029:                                             ; preds = %1026
  %1030 = getelementptr i8, ptr %1024, i32 1
  %1031 = load i8, ptr %1030, align 1
  %1032 = icmp ugt i8 %1031, 21
  br i1 %1032, label %1033, label %1049

1033:                                             ; preds = %1029
  %1034 = getelementptr i8, ptr %1024, i32 20
  %1035 = load i16, ptr %1034, align 1
  %1036 = icmp eq i16 %1035, 0
  br i1 %1036, label %1048, label %1037

1037:                                             ; preds = %1033
  %1038 = load ptr, ptr %4, align 4
  %1039 = getelementptr inbounds %struct.nouveau_drm, ptr %1038, i32 0, i32 18, i32 4
  %1040 = load ptr, ptr %1039, align 4
  %1041 = zext i16 %1035 to i32
  %1042 = getelementptr i8, ptr %1040, i32 %1041
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1048, label %1044

1044:                                             ; preds = %1037
  %1045 = load i8, ptr %1042, align 1
  %1046 = add i8 %1045, -48
  %1047 = icmp ult i8 %1046, 17
  br i1 %1047, label %1049, label %1048

1048:                                             ; preds = %1044, %1037, %1033
  br label %1049

1049:                                             ; preds = %1048, %1044, %1029, %1026, %1023
  %1050 = phi ptr [ %1042, %1044 ], [ null, %1048 ], [ null, %1029 ], [ null, %1026 ], [ null, %1023 ]
  %1051 = getelementptr i8, ptr %1050, i32 3
  %1052 = load i8, ptr %1051, align 1
  %1053 = icmp ult i8 %1052, 4
  %1054 = load ptr, ptr %871, align 8
  %1055 = getelementptr inbounds %struct.nouveau_drm, ptr %1054, i32 0, i32 3
  %1056 = load ptr, ptr %1055, align 8
  %1057 = getelementptr inbounds %struct.drm_device, ptr %1056, i32 0, i32 2
  %1058 = load ptr, ptr %1057, align 4
  br i1 %1053, label %1059, label %1062

1059:                                             ; preds = %1049
  %1060 = load i16, ptr %1018, align 1
  %1061 = zext i16 %1060 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1058, ptr noundef nonnull @.str.38, ptr noundef %877, i32 noundef %982, i32 noundef %1061) #10
  br label %1064

1062:                                             ; preds = %1049
  %1063 = load i32, ptr %1018, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1058, ptr noundef nonnull @.str.39, ptr noundef %877, i32 noundef %982, i32 noundef %1063) #10
  br label %1064

1064:                                             ; preds = %1062, %1059, %1020
  %1065 = add i32 %982, 1
  %1066 = trunc i32 %1065 to i8
  %1067 = tail call ptr @olddcb_table(ptr noundef %0) #11
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1069, label %979

1069:                                             ; preds = %1064, %1008, %1004, %1000, %993, %989, %985, %979, %976
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11
  %1070 = load ptr, ptr %6, align 4
  %1071 = getelementptr inbounds %struct.drm_device, ptr %1070, i32 0, i32 2
  %1072 = load ptr, ptr %1071, align 4
  %1073 = getelementptr i8, ptr %1072, i32 -102
  %1074 = load i16, ptr %1073, align 2
  %1075 = icmp eq i16 %1074, 914
  br i1 %1075, label %1076, label %1087

1076:                                             ; preds = %1069
  %1077 = getelementptr i8, ptr %1072, i32 -100
  %1078 = load i16, ptr %1077, align 4
  %1079 = icmp eq i16 %1078, 4221
  br i1 %1079, label %1080, label %1087

1080:                                             ; preds = %1076
  %1081 = getelementptr i8, ptr %1072, i32 -98
  %1082 = load i16, ptr %1081, align 2
  %1083 = icmp eq i16 %1082, 8354
  br i1 %1083, label %1084, label %1087

1084:                                             ; preds = %1080
  %1085 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 1
  %1086 = load i32, ptr %1085, align 4
  br label %1099

1087:                                             ; preds = %1080, %1076, %1069
  %1088 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 1
  %1089 = load i32, ptr %1088, align 4
  %1090 = icmp sgt i32 %1089, 0
  br i1 %1090, label %1094, label %1160

1091:                                             ; preds = %1094
  %1092 = add nuw nsw i32 %1095, 1
  %1093 = icmp eq i32 %1092, %1089
  br i1 %1093, label %1099, label %1094

1094:                                             ; preds = %1091, %1087
  %1095 = phi i32 [ %1092, %1091 ], [ 0, %1087 ]
  %1096 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %1095, i32 6
  %1097 = load i8, ptr %1096, align 2
  %1098 = icmp eq i8 %1097, 0
  br i1 %1098, label %1091, label %1160

1099:                                             ; preds = %1091, %1084
  %1100 = phi i32 [ %1086, %1084 ], [ %1089, %1091 ]
  %1101 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 1
  %1102 = icmp sgt i32 %1100, 0
  br i1 %1102, label %1103, label %1160

1103:                                             ; preds = %1124, %1099
  %1104 = phi i32 [ %1126, %1124 ], [ 0, %1099 ]
  %1105 = phi i32 [ %1128, %1124 ], [ 0, %1099 ]
  %1106 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %1105, i32 4
  %1107 = load i8, ptr %1106, align 4
  %1108 = icmp eq i8 %1107, 15
  br i1 %1108, label %1109, label %1112

1109:                                             ; preds = %1103
  %1110 = add i32 %1104, 1
  %1111 = trunc i32 %1104 to i8
  br label %1124

1112:                                             ; preds = %1103
  %1113 = zext i8 %1107 to i32
  %1114 = getelementptr [16 x i8], ptr %3, i32 0, i32 %1113
  %1115 = load i8, ptr %1114, align 1
  %1116 = icmp eq i8 %1115, 0
  br i1 %1116, label %1117, label %1120

1117:                                             ; preds = %1112
  %1118 = add i32 %1104, 1
  %1119 = trunc i32 %1118 to i8
  store i8 %1119, ptr %1114, align 1
  br label %1120

1120:                                             ; preds = %1117, %1112
  %1121 = phi i8 [ %1115, %1112 ], [ %1119, %1117 ]
  %1122 = phi i32 [ %1104, %1112 ], [ %1118, %1117 ]
  %1123 = add i8 %1121, -1
  br label %1124

1124:                                             ; preds = %1120, %1109
  %1125 = phi i8 [ %1123, %1120 ], [ %1111, %1109 ]
  %1126 = phi i32 [ %1122, %1120 ], [ %1110, %1109 ]
  %1127 = getelementptr %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 22, i32 2, i32 %1105, i32 6
  store i8 %1125, ptr %1127, align 2
  %1128 = add nuw nsw i32 %1105, 1
  %1129 = load i32, ptr %1101, align 4
  %1130 = icmp slt i32 %1128, %1129
  br i1 %1130, label %1103, label %1131

1131:                                             ; preds = %1124
  %1132 = icmp eq i32 %1105, 0
  br i1 %1132, label %1160, label %1133

1133:                                             ; preds = %1131
  %1134 = tail call ptr @olddcb_table(ptr noundef %1070) #11
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1160, label %1136

1136:                                             ; preds = %1133
  %1137 = load i8, ptr %1134, align 1
  %1138 = icmp ugt i8 %1137, 47
  br i1 %1138, label %1139, label %1160

1139:                                             ; preds = %1136
  %1140 = getelementptr i8, ptr %1134, i32 1
  %1141 = load i8, ptr %1140, align 1
  %1142 = icmp ugt i8 %1141, 21
  br i1 %1142, label %1143, label %1160

1143:                                             ; preds = %1139
  %1144 = getelementptr i8, ptr %1134, i32 20
  %1145 = load i16, ptr %1144, align 1
  %1146 = icmp eq i16 %1145, 0
  br i1 %1146, label %1160, label %1147

1147:                                             ; preds = %1143
  %1148 = getelementptr inbounds %struct.drm_device, ptr %1070, i32 0, i32 5
  %1149 = load ptr, ptr %1148, align 4
  %1150 = getelementptr inbounds %struct.nouveau_drm, ptr %1149, i32 0, i32 18, i32 4
  %1151 = load ptr, ptr %1150, align 4
  %1152 = zext i16 %1145 to i32
  %1153 = getelementptr i8, ptr %1151, i32 %1152
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1160, label %1155

1155:                                             ; preds = %1147
  %1156 = load i8, ptr %1153, align 1
  %1157 = add i8 %1156, -48
  %1158 = icmp ult i8 %1157, 17
  br i1 %1158, label %1159, label %1160

1159:                                             ; preds = %1155
  store i8 0, ptr %1153, align 1
  br label %1160

1160:                                             ; preds = %1159, %1155, %1147, %1143, %1139, %1136, %1133, %1131, %1099, %1094, %1087
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %1161

1161:                                             ; preds = %1160, %858, %847
  %1162 = load i8, ptr %28, align 1
  %1163 = icmp eq i8 %1162, 0
  br i1 %1163, label %1478, label %1164

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 11
  store i8 0, ptr %1165, align 4
  %1166 = load ptr, ptr %4, align 4
  %1167 = getelementptr inbounds %struct.nouveau_drm, ptr %1166, i32 0, i32 2, i32 3, i32 1, i32 4
  %1168 = load i8, ptr %1167, align 1
  %1169 = icmp ugt i8 %1168, 5
  br i1 %1169, label %1287, label %1170

1170:                                             ; preds = %1164
  %1171 = getelementptr inbounds %struct.nouveau_drm, ptr %1166, i32 0, i32 2, i32 3
  %1172 = getelementptr inbounds %struct.nouveau_drm, ptr %1166, i32 0, i32 2, i32 3, i32 0, i32 6
  %1173 = load ptr, ptr %1172, align 8
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1177, label %1175, !prof !9

1175:                                             ; preds = %1170
  %1176 = getelementptr i8, ptr %1173, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1176, i8 6) #11, !srcloc !16
  br label %1178

1177:                                             ; preds = %1170
  tail call void @nvif_object_wr(ptr noundef %1171, i32 noundef 1, i64 noundef 6296532, i32 noundef 6) #11
  br label %1178

1178:                                             ; preds = %1177, %1175
  %1179 = load ptr, ptr %1172, align 8
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1185, label %1181, !prof !9

1181:                                             ; preds = %1178
  %1182 = getelementptr i8, ptr %1179, i32 6296533
  %1183 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1182) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1184 = zext i8 %1183 to i32
  br label %1187

1185:                                             ; preds = %1178
  %1186 = tail call i32 @nvif_object_rd(ptr noundef %1171, i32 noundef 1, i64 noundef 6296533) #11
  br label %1187

1187:                                             ; preds = %1185, %1181
  %1188 = phi i32 [ %1184, %1181 ], [ %1186, %1185 ]
  %1189 = and i32 %1188, 255
  %1190 = load ptr, ptr %4, align 4
  %1191 = getelementptr inbounds %struct.nouveau_drm, ptr %1190, i32 0, i32 2, i32 3
  %1192 = getelementptr inbounds %struct.nouveau_drm, ptr %1190, i32 0, i32 2, i32 3, i32 0, i32 6
  %1193 = load ptr, ptr %1192, align 8
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1197, label %1195, !prof !9

1195:                                             ; preds = %1187
  %1196 = getelementptr i8, ptr %1193, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1196, i8 7) #11, !srcloc !16
  br label %1198

1197:                                             ; preds = %1187
  tail call void @nvif_object_wr(ptr noundef %1191, i32 noundef 1, i64 noundef 6296532, i32 noundef 7) #11
  br label %1198

1198:                                             ; preds = %1197, %1195
  %1199 = load ptr, ptr %1192, align 8
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1205, label %1201, !prof !9

1201:                                             ; preds = %1198
  %1202 = getelementptr i8, ptr %1199, i32 6296533
  %1203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1202) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1204 = zext i8 %1203 to i32
  br label %1207

1205:                                             ; preds = %1198
  %1206 = tail call i32 @nvif_object_rd(ptr noundef %1191, i32 noundef 1, i64 noundef 6296533) #11
  br label %1207

1207:                                             ; preds = %1205, %1201
  %1208 = phi i32 [ %1204, %1201 ], [ %1206, %1205 ]
  %1209 = shl i32 %1208, 8
  %1210 = and i32 %1209, 256
  %1211 = or i32 %1210, %1189
  %1212 = load ptr, ptr %4, align 4
  %1213 = getelementptr inbounds %struct.nouveau_drm, ptr %1212, i32 0, i32 2, i32 3
  %1214 = getelementptr inbounds %struct.nouveau_drm, ptr %1212, i32 0, i32 2, i32 3, i32 0, i32 6
  %1215 = load ptr, ptr %1214, align 8
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1219, label %1217, !prof !9

1217:                                             ; preds = %1207
  %1218 = getelementptr i8, ptr %1215, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1218, i8 7) #11, !srcloc !16
  br label %1220

1219:                                             ; preds = %1207
  tail call void @nvif_object_wr(ptr noundef %1213, i32 noundef 1, i64 noundef 6296532, i32 noundef 7) #11
  br label %1220

1220:                                             ; preds = %1219, %1217
  %1221 = load ptr, ptr %1214, align 8
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1227, label %1223, !prof !9

1223:                                             ; preds = %1220
  %1224 = getelementptr i8, ptr %1221, i32 6296533
  %1225 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1224) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1226 = zext i8 %1225 to i32
  br label %1229

1227:                                             ; preds = %1220
  %1228 = tail call i32 @nvif_object_rd(ptr noundef %1213, i32 noundef 1, i64 noundef 6296533) #11
  br label %1229

1229:                                             ; preds = %1227, %1223
  %1230 = phi i32 [ %1226, %1223 ], [ %1228, %1227 ]
  %1231 = shl i32 %1230, 4
  %1232 = and i32 %1231, 512
  %1233 = or i32 %1211, %1232
  %1234 = load ptr, ptr %4, align 4
  %1235 = getelementptr inbounds %struct.nouveau_drm, ptr %1234, i32 0, i32 2, i32 3
  %1236 = getelementptr inbounds %struct.nouveau_drm, ptr %1234, i32 0, i32 2, i32 3, i32 0, i32 6
  %1237 = load ptr, ptr %1236, align 8
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1241, label %1239, !prof !9

1239:                                             ; preds = %1229
  %1240 = getelementptr i8, ptr %1237, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1240, i8 37) #11, !srcloc !16
  br label %1242

1241:                                             ; preds = %1229
  tail call void @nvif_object_wr(ptr noundef %1235, i32 noundef 1, i64 noundef 6296532, i32 noundef 37) #11
  br label %1242

1242:                                             ; preds = %1241, %1239
  %1243 = load ptr, ptr %1236, align 8
  %1244 = icmp eq ptr %1243, null
  br i1 %1244, label %1249, label %1245, !prof !9

1245:                                             ; preds = %1242
  %1246 = getelementptr i8, ptr %1243, i32 6296533
  %1247 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1246) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1248 = zext i8 %1247 to i32
  br label %1251

1249:                                             ; preds = %1242
  %1250 = tail call i32 @nvif_object_rd(ptr noundef %1235, i32 noundef 1, i64 noundef 6296533) #11
  br label %1251

1251:                                             ; preds = %1249, %1245
  %1252 = phi i32 [ %1248, %1245 ], [ %1250, %1249 ]
  %1253 = shl i32 %1252, 10
  %1254 = and i32 %1253, 1024
  %1255 = or i32 %1233, %1254
  %1256 = load ptr, ptr %4, align 4
  %1257 = getelementptr inbounds %struct.nouveau_drm, ptr %1256, i32 0, i32 2, i32 3
  %1258 = getelementptr inbounds %struct.nouveau_drm, ptr %1256, i32 0, i32 2, i32 3, i32 0, i32 6
  %1259 = load ptr, ptr %1258, align 8
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1263, label %1261, !prof !9

1261:                                             ; preds = %1251
  %1262 = getelementptr i8, ptr %1259, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1262, i8 65) #11, !srcloc !16
  br label %1264

1263:                                             ; preds = %1251
  tail call void @nvif_object_wr(ptr noundef %1257, i32 noundef 1, i64 noundef 6296532, i32 noundef 65) #11
  br label %1264

1264:                                             ; preds = %1263, %1261
  %1265 = load ptr, ptr %1258, align 8
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1271, label %1267, !prof !9

1267:                                             ; preds = %1264
  %1268 = getelementptr i8, ptr %1265, i32 6296533
  %1269 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1268) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1270 = zext i8 %1269 to i32
  br label %1273

1271:                                             ; preds = %1264
  %1272 = tail call i32 @nvif_object_rd(ptr noundef %1257, i32 noundef 1, i64 noundef 6296533) #11
  br label %1273

1273:                                             ; preds = %1271, %1267
  %1274 = phi i32 [ %1270, %1267 ], [ %1272, %1271 ]
  %1275 = shl i32 %1274, 11
  %1276 = and i32 %1275, 2048
  %1277 = or i32 %1255, %1276
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1279, label %1287

1279:                                             ; preds = %1273
  %1280 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %1281 = load ptr, ptr %1280, align 8
  %1282 = getelementptr inbounds %struct.nouveau_drm, ptr %1281, i32 0, i32 3
  %1283 = load ptr, ptr %1282, align 8
  %1284 = getelementptr inbounds %struct.drm_device, ptr %1283, i32 0, i32 2
  %1285 = load ptr, ptr %1284, align 4
  %1286 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1285, ptr noundef nonnull @.str.10, ptr noundef %1286) #10
  store i8 1, ptr %1165, align 4
  br label %1287

1287:                                             ; preds = %1279, %1273, %1164
  %1288 = tail call i32 @nouveau_run_vbios_init(ptr noundef %0)
  %1289 = load i8, ptr %28, align 1
  %1290 = icmp ult i8 %1289, 5
  br i1 %1290, label %1294, label %1291

1291:                                             ; preds = %1287
  %1292 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 14
  %1293 = load i8, ptr %1292, align 1, !range !8
  br label %1318

1294:                                             ; preds = %1287
  %1295 = load ptr, ptr %4, align 4
  %1296 = getelementptr inbounds %struct.nouveau_drm, ptr %1295, i32 0, i32 2, i32 3
  %1297 = getelementptr inbounds %struct.nouveau_drm, ptr %1295, i32 0, i32 2, i32 3, i32 0, i32 6
  %1298 = load ptr, ptr %1297, align 8
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1302, label %1300, !prof !9

1300:                                             ; preds = %1294
  %1301 = getelementptr i8, ptr %1298, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1301, i8 75) #11, !srcloc !16
  br label %1303

1302:                                             ; preds = %1294
  tail call void @nvif_object_wr(ptr noundef %1296, i32 noundef 1, i64 noundef 6296532, i32 noundef 75) #11
  br label %1303

1303:                                             ; preds = %1302, %1300
  %1304 = load ptr, ptr %1297, align 8
  %1305 = icmp eq ptr %1304, null
  br i1 %1305, label %1310, label %1306, !prof !9

1306:                                             ; preds = %1303
  %1307 = getelementptr i8, ptr %1304, i32 6296533
  %1308 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1307) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %1309 = zext i8 %1308 to i32
  br label %1312

1310:                                             ; preds = %1303
  %1311 = tail call i32 @nvif_object_rd(ptr noundef %1296, i32 noundef 1, i64 noundef 6296533) #11
  br label %1312

1312:                                             ; preds = %1310, %1306
  %1313 = phi i32 [ %1309, %1306 ], [ %1311, %1310 ]
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 14
  %1316 = lshr i8 %1314, 6
  %1317 = and i8 %1316, 1
  store i8 %1317, ptr %1315, align 1
  br label %1318

1318:                                             ; preds = %1312, %1291
  %1319 = phi i8 [ %1293, %1291 ], [ %1317, %1312 ]
  %1320 = icmp eq i8 %1319, 0
  br i1 %1320, label %1321, label %1324

1321:                                             ; preds = %1318
  %1322 = load i8, ptr %28, align 1
  %1323 = icmp ugt i8 %1322, 4
  br i1 %1323, label %1324, label %1477

1324:                                             ; preds = %1321, %1318
  %1325 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false) #11, !annotation !14
  %1326 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24
  %1327 = load i16, ptr %1326, align 4
  %1328 = icmp eq i16 %1327, 0
  br i1 %1328, label %1329, label %1343

1329:                                             ; preds = %1324
  %1330 = load i32, ptr @__drm_debug, align 4
  %1331 = and i32 %1330, 2
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1341, label %1333

1333:                                             ; preds = %1329
  %1334 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 1
  %1335 = load ptr, ptr %1334, align 8
  %1336 = getelementptr inbounds %struct.nouveau_drm, ptr %1335, i32 0, i32 3
  %1337 = load ptr, ptr %1336, align 8
  %1338 = getelementptr inbounds %struct.drm_device, ptr %1337, i32 0, i32 2
  %1339 = load ptr, ptr %1338, align 4
  %1340 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1339, ptr noundef nonnull @.str.44, ptr noundef %1340) #10
  br label %1341

1341:                                             ; preds = %1333, %1329
  %1342 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 8
  store i8 75, ptr %1342, align 4
  br label %1476

1343:                                             ; preds = %1324
  %1344 = zext i16 %1327 to i32
  %1345 = load ptr, ptr %22, align 4
  %1346 = getelementptr i8, ptr %1345, i32 %1344
  %1347 = load i8, ptr %1346, align 1
  switch i8 %1347, label %1362 [
    i8 5, label %1373
    i8 16, label %1348
    i8 32, label %1349
  ]

1348:                                             ; preds = %1343
  br label %1373

1349:                                             ; preds = %1343
  %1350 = getelementptr i8, ptr %1346, i32 1
  %1351 = load i8, ptr %1350, align 1
  %1352 = getelementptr i8, ptr %1346, i32 2
  %1353 = load i8, ptr %1352, align 1
  %1354 = getelementptr i8, ptr %1346, i32 3
  %1355 = load i8, ptr %1354, align 1
  %1356 = getelementptr i8, ptr %1346, i32 4
  %1357 = load i8, ptr %1356, align 1
  %1358 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 8
  store i8 %1357, ptr %1358, align 4
  %1359 = zext i8 %1355 to i32
  %1360 = zext i8 %1351 to i32
  %1361 = zext i8 %1353 to i32
  br label %1373

1362:                                             ; preds = %1343
  %1363 = zext i8 %1347 to i32
  %1364 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 1
  %1365 = load ptr, ptr %1364, align 8
  %1366 = getelementptr inbounds %struct.nouveau_drm, ptr %1365, i32 0, i32 3
  %1367 = load ptr, ptr %1366, align 8
  %1368 = getelementptr inbounds %struct.drm_device, ptr %1367, i32 0, i32 2
  %1369 = load ptr, ptr %1368, align 4
  %1370 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 12
  %1371 = lshr i32 %1363, 4
  %1372 = and i32 %1363, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1369, ptr noundef nonnull @.str.45, ptr noundef %1370, i32 noundef %1371, i32 noundef %1372) #10
  br label %1476

1373:                                             ; preds = %1349, %1348, %1343
  %1374 = phi i32 [ %1361, %1349 ], [ 44, %1348 ], [ 42, %1343 ]
  %1375 = phi i32 [ %1359, %1349 ], [ 15, %1348 ], [ 15, %1343 ]
  %1376 = phi i32 [ -7, %1349 ], [ 0, %1348 ], [ -1, %1343 ]
  %1377 = phi i32 [ %1360, %1349 ], [ 0, %1348 ], [ 0, %1343 ]
  br i1 %1320, label %1476, label %1378

1378:                                             ; preds = %1373
  %1379 = call fastcc i32 @parse_lvds_manufacturer_table_header(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %2) #11
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1381, label %1476

1381:                                             ; preds = %1378
  %1382 = load i8, ptr %2, align 1
  switch i8 %1382, label %1383 [
    i8 64, label %1386
    i8 48, label %1386
  ]

1383:                                             ; preds = %1381
  %1384 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 1
  %1385 = load i16, ptr %1384, align 2
  br label %1399

1386:                                             ; preds = %1381, %1381
  %1387 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 3
  %1388 = load i16, ptr %1387, align 4
  %1389 = getelementptr inbounds %struct.lvdstableheader, ptr %2, i32 0, i32 1
  %1390 = load i8, ptr %1389, align 1
  %1391 = zext i8 %1390 to i16
  %1392 = add i16 %1388, 1
  %1393 = add i16 %1392, %1391
  %1394 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 1
  store i16 %1393, ptr %1394, align 2
  %1395 = getelementptr inbounds %struct.lvdstableheader, ptr %2, i32 0, i32 2
  %1396 = load i8, ptr %1395, align 1
  %1397 = zext i8 %1396 to i32
  %1398 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 2
  store i32 %1397, ptr %1398, align 4
  br label %1399

1399:                                             ; preds = %1386, %1383
  %1400 = phi i16 [ %1385, %1383 ], [ %1393, %1386 ]
  %1401 = icmp eq i16 %1400, 0
  br i1 %1401, label %1402, label %1410

1402:                                             ; preds = %1399
  %1403 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 1
  %1404 = load ptr, ptr %1403, align 8
  %1405 = getelementptr inbounds %struct.nouveau_drm, ptr %1404, i32 0, i32 3
  %1406 = load ptr, ptr %1405, align 8
  %1407 = getelementptr inbounds %struct.drm_device, ptr %1406, i32 0, i32 2
  %1408 = load ptr, ptr %1407, align 4
  %1409 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1408, ptr noundef nonnull @.str.46, ptr noundef %1409) #10
  br label %1476

1410:                                             ; preds = %1399
  %1411 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 1
  %1412 = tail call fastcc i32 @get_fp_strap(ptr noundef %0, ptr noundef %6) #11
  %1413 = load ptr, ptr %22, align 4
  %1414 = load i16, ptr %1411, align 2
  %1415 = zext i16 %1414 to i32
  %1416 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 2
  %1417 = load i32, ptr %1416, align 4
  %1418 = mul i32 %1417, %1412
  %1419 = add i32 %1418, %1415
  %1420 = getelementptr i8, ptr %1413, i32 %1419
  %1421 = load i8, ptr %1420, align 1
  %1422 = zext i8 %1421 to i32
  %1423 = icmp ult i32 %1375, %1422
  br i1 %1423, label %1424, label %1432

1424:                                             ; preds = %1410
  %1425 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 1
  %1426 = load ptr, ptr %1425, align 8
  %1427 = getelementptr inbounds %struct.nouveau_drm, ptr %1426, i32 0, i32 3
  %1428 = load ptr, ptr %1427, align 8
  %1429 = getelementptr inbounds %struct.drm_device, ptr %1428, i32 0, i32 2
  %1430 = load ptr, ptr %1429, align 4
  %1431 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1430, ptr noundef nonnull @.str.47, ptr noundef %1431) #10
  br label %1476

1432:                                             ; preds = %1410
  %1433 = icmp ugt i8 %1382, 16
  br i1 %1433, label %1434, label %1440

1434:                                             ; preds = %1432
  %1435 = icmp ne i32 %1412, 15
  %1436 = icmp ne i8 %1421, 15
  %1437 = select i1 %1435, i1 true, i1 %1436
  %1438 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 9
  %1439 = zext i1 %1437 to i8
  store i8 %1439, ptr %1438, align 1
  br label %1440

1440:                                             ; preds = %1434, %1432
  %1441 = icmp eq i32 %1412, 15
  %1442 = icmp eq i8 %1421, 15
  %1443 = select i1 %1441, i1 true, i1 %1442
  br i1 %1443, label %1476, label %1444

1444:                                             ; preds = %1440
  %1445 = load i16, ptr %1326, align 4
  %1446 = zext i16 %1445 to i32
  %1447 = mul nuw nsw i32 %1374, %1422
  %1448 = add nsw i32 %1377, %1376
  %1449 = add nsw i32 %1448, %1447
  %1450 = add nsw i32 %1449, %1446
  %1451 = trunc i32 %1450 to i16
  %1452 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 24, i32 5
  store i16 %1451, ptr %1452, align 4
  %1453 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 1
  %1454 = load ptr, ptr %1453, align 8
  %1455 = getelementptr inbounds %struct.nouveau_drm, ptr %1454, i32 0, i32 3
  %1456 = load ptr, ptr %1455, align 8
  %1457 = getelementptr inbounds %struct.drm_device, ptr %1456, i32 0, i32 2
  %1458 = load ptr, ptr %1457, align 4
  %1459 = getelementptr inbounds %struct.nouveau_drm, ptr %1325, i32 0, i32 2, i32 12
  %1460 = and i32 %1450, 65535
  %1461 = add nuw nsw i32 %1460, 11
  %1462 = getelementptr i8, ptr %1413, i32 %1461
  %1463 = load i16, ptr %1462, align 1
  %1464 = zext i16 %1463 to i32
  %1465 = add nuw nsw i32 %1464, 1
  %1466 = add nuw nsw i32 %1460, 25
  %1467 = getelementptr i8, ptr %1413, i32 %1466
  %1468 = load i16, ptr %1467, align 1
  %1469 = zext i16 %1468 to i32
  %1470 = add nuw nsw i32 %1469, 1
  %1471 = add nuw nsw i32 %1460, 7
  %1472 = getelementptr i8, ptr %1413, i32 %1471
  %1473 = load i16, ptr %1472, align 1
  %1474 = zext i16 %1473 to i32
  %1475 = mul nuw nsw i32 %1474, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1458, ptr noundef nonnull @.str.48, ptr noundef %1459, i32 noundef %1465, i32 noundef %1470, i32 noundef %1475) #10
  br label %1476

1476:                                             ; preds = %1444, %1440, %1424, %1402, %1378, %1373, %1362, %1341
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #11
  br label %1477

1477:                                             ; preds = %1476, %1321
  store i8 1, ptr %1165, align 4
  br label %1478

1478:                                             ; preds = %1477, %1161, %801, %704, %656, %618, %368, %356, %120, %101, %84, %69, %1
  %1479 = phi i32 [ 0, %1477 ], [ 0, %1 ], [ 0, %1161 ], [ -22, %801 ], [ -19, %618 ], [ -19, %69 ], [ -19, %84 ], [ -19, %101 ], [ -19, %120 ], [ -19, %356 ], [ -19, %368 ], [ -19, %656 ], [ -19, %704 ]
  ret i32 %1479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @nouveau_bios_takedown(ptr nocapture noundef %0) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_bind_head(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @parse_dcb_entry(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22
  %8 = load i8, ptr %7, align 4
  %9 = icmp ugt i8 %8, 31
  %10 = select i1 %9, i32 4, i32 6
  %11 = getelementptr i8, ptr %3, i32 %10
  %12 = load i32, ptr %11, align 1
  %13 = load i32, ptr %3, align 1
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -102
  %17 = load i16, ptr %16, align 2
  switch i16 %17, label %101 [
    i16 1037, label %18
    i16 513, label %30
    i16 3235, label %53
    i16 1557, label %63
    i16 1057, label %73
  ]

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %15, i32 -100
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 4136
  br i1 %21, label %22, label %101

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %15, i32 -98
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 411
  %26 = icmp eq i32 %13, 33710866
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %101

28:                                               ; preds = %22
  %29 = icmp eq i32 %12, 32
  br i1 %29, label %369, label %101

30:                                               ; preds = %4
  %31 = getelementptr i8, ptr %15, i32 -100
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 5218
  br i1 %33, label %34, label %101

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %15, i32 -98
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, -30639
  %38 = icmp eq i32 %13, -234860524
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %101

40:                                               ; preds = %34
  %41 = icmp eq i32 %12, -1
  br i1 %41, label %42, label %101

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %45, i8 0, i32 40, i1 false) #11
  %46 = load i32, ptr %43, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %43, align 4
  store i32 %46, ptr %45, align 4
  %48 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44, i32 3
  store i32 2, ptr %48, align 4
  %49 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44, i32 4
  store i8 1, ptr %49, align 4
  %50 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44, i32 5
  store i8 1, ptr %50, align 1
  %51 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44, i32 8
  store i8 1, ptr %51, align 4
  %52 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %44, i32 9
  store i8 1, ptr %52, align 1
  br label %369

53:                                               ; preds = %4
  %54 = getelementptr i8, ptr %15, i32 -100
  %55 = load i16, ptr %54, align 4
  %56 = icmp eq i16 %55, 5762
  br i1 %56, label %57, label %101

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %15, i32 -98
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, 12291
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = icmp ult i32 %2, 4
  br i1 %62, label %91, label %101

63:                                               ; preds = %4
  %64 = getelementptr i8, ptr %15, i32 -100
  %65 = load i16, ptr %64, align 4
  %66 = icmp eq i16 %65, 5762
  br i1 %66, label %67, label %101

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %15, i32 -98
  %69 = load i16, ptr %68, align 2
  %70 = icmp eq i16 %69, 9733
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = icmp ult i32 %2, 4
  br i1 %72, label %96, label %101

73:                                               ; preds = %4
  %74 = getelementptr i8, ptr %15, i32 -100
  %75 = load i16, ptr %74, align 4
  %76 = icmp eq i16 %75, 14402
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %15, i32 -98
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, -14445
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  switch i32 %2, label %101 [
    i32 0, label %82
    i32 1, label %85
    i32 2, label %88
  ]

82:                                               ; preds = %81
  %83 = icmp eq i32 %13, 33555200
  %84 = select i1 %83, i32 33624832, i32 %13
  br label %101

85:                                               ; preds = %81
  %86 = icmp eq i32 %13, 67179280
  %87 = select i1 %86, i32 67109648, i32 %13
  br label %101

88:                                               ; preds = %81
  %89 = icmp eq i32 %13, 33624850
  %90 = select i1 %89, i32 33555218, i32 %13
  br label %101

91:                                               ; preds = %61
  %92 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.50, i32 0, i32 %2
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.49, i32 0, i32 %2
  %95 = load i32, ptr %94, align 4
  br label %101

96:                                               ; preds = %71
  %97 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.50, i32 0, i32 %2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds [4 x i32], ptr @switch.table.parse_dcb_entry.51, i32 0, i32 %2
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %96, %91, %88, %85, %82, %81, %77, %73, %71, %67, %63, %61, %57, %53, %40, %34, %30, %28, %22, %18, %4
  %102 = phi i32 [ %12, %73 ], [ %12, %77 ], [ %12, %81 ], [ %12, %63 ], [ %12, %67 ], [ %12, %57 ], [ %12, %53 ], [ %12, %40 ], [ %12, %34 ], [ %12, %30 ], [ %12, %28 ], [ %12, %22 ], [ %12, %18 ], [ %12, %4 ], [ %12, %82 ], [ %12, %85 ], [ %12, %88 ], [ %93, %91 ], [ 0, %61 ], [ %98, %96 ], [ 0, %71 ]
  %103 = phi i32 [ %13, %73 ], [ %13, %77 ], [ %13, %81 ], [ %13, %63 ], [ %13, %67 ], [ %13, %57 ], [ %13, %53 ], [ -234860524, %40 ], [ %13, %34 ], [ %13, %30 ], [ 33710866, %28 ], [ %13, %22 ], [ %13, %18 ], [ %13, %4 ], [ %84, %82 ], [ %87, %85 ], [ %90, %88 ], [ %95, %91 ], [ 14, %61 ], [ %100, %96 ], [ 14, %71 ]
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %106, i8 0, i32 40, i1 false) #11
  %107 = load i32, ptr %104, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %104, align 4
  store i32 %107, ptr %106, align 4
  %109 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nouveau_drm, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.drm_device, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.40, ptr noundef %115, i32 noundef %2, i32 noundef %103, i32 noundef %102) #10
  %116 = load i8, ptr %7, align 4
  %117 = icmp ugt i8 %116, 31
  br i1 %117, label %118, label %282

118:                                              ; preds = %101
  %119 = load ptr, ptr %5, align 4
  %120 = and i32 %103, 15
  %121 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 3
  store i32 %120, ptr %121, align 4
  %122 = trunc i32 %103 to i8
  %123 = lshr i8 %122, 4
  %124 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 4
  store i8 %123, ptr %124, align 4
  %125 = lshr i32 %103, 8
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 15
  %128 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 5
  store i8 %127, ptr %128, align 1
  %129 = lshr i32 %103, 12
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 15
  %132 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 6
  store i8 %131, ptr %132, align 2
  %133 = lshr i32 %103, 16
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 15
  %136 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 7
  store i8 %135, ptr %136, align 1
  %137 = lshr i32 %103, 20
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 3
  %140 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 8
  store i8 %139, ptr %140, align 4
  %141 = lshr i32 %103, 24
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 15
  %144 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 9
  store i8 %143, ptr %144, align 1
  switch i32 %120, label %258 [
    i32 0, label %145
    i32 3, label %154
    i32 1, label %201
    i32 6, label %209
    i32 2, label %233
    i32 14, label %255
  ]

145:                                              ; preds = %118
  %146 = load i8, ptr %7, align 4
  %147 = icmp ult i8 %146, 48
  %148 = and i32 %102, 65535
  %149 = mul nuw nsw i32 %148, 10
  %150 = and i32 %102, 255
  %151 = mul nuw nsw i32 %150, 10000
  %152 = select i1 %147, i32 %149, i32 %151
  %153 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i32 %152, ptr %153, align 4
  br label %258

154:                                              ; preds = %118
  %155 = and i32 %102, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i8 1, ptr %158, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i8, ptr %7, align 4
  %161 = icmp ult i8 %160, 34
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i8 1, ptr %163, align 4
  %164 = and i32 %102, 12
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %185, label %166

166:                                              ; preds = %162
  %167 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  %168 = getelementptr inbounds %struct.anon.82, ptr %167, i32 0, i32 3
  store i8 1, ptr %168, align 2
  br label %185

169:                                              ; preds = %159
  %170 = and i32 %102, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  %174 = getelementptr inbounds %struct.anon.82, ptr %173, i32 0, i32 2
  store i8 1, ptr %174, align 1
  br label %175

175:                                              ; preds = %172, %169
  %176 = and i32 %102, 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  %180 = getelementptr inbounds %struct.anon.82, ptr %179, i32 0, i32 3
  store i8 1, ptr %180, align 2
  br label %181

181:                                              ; preds = %178, %175
  %182 = lshr i32 %102, 4
  %183 = and i32 %182, 3
  %184 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i32 %183, ptr %184, align 4
  br label %185

185:                                              ; preds = %181, %166, %162
  %186 = phi i32 [ 0, %166 ], [ %183, %181 ], [ 0, %162 ]
  %187 = phi i32 [ -14, %166 ], [ -8, %181 ], [ -14, %162 ]
  %188 = and i32 %187, %102
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %258, label %190

190:                                              ; preds = %185
  %191 = load i8, ptr %7, align 4
  %192 = icmp ugt i8 %191, 63
  br i1 %192, label %268, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 1
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.nouveau_drm, ptr %195, i32 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.drm_device, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.41, ptr noundef %200) #10
  br label %258

201:                                              ; preds = %118
  %202 = load i8, ptr %7, align 4
  %203 = icmp ugt i8 %202, 47
  %204 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  br i1 %203, label %205, label %208

205:                                              ; preds = %201
  %206 = trunc i32 %102 to i8
  %207 = lshr i8 %206, 7
  store i8 %207, ptr %204, align 4
  br label %258

208:                                              ; preds = %201
  store i8 0, ptr %204, align 4
  br label %258

209:                                              ; preds = %118
  %210 = lshr i32 %102, 4
  %211 = and i32 %210, 3
  %212 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i32 %211, ptr %212, align 4
  %213 = lshr i32 %102, 8
  %214 = trunc i32 %213 to i8
  %215 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 12
  store i8 %214, ptr %215, align 4
  %216 = lshr i32 %102, 21
  %217 = and i32 %216, 7
  %218 = icmp ult i32 %217, 3
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = getelementptr inbounds [3 x i32], ptr @switch.table.parse_dcb_entry.52, i32 0, i32 %217
  %221 = load i32, ptr %220, align 4
  br label %222

222:                                              ; preds = %219, %209
  %223 = phi i32 [ %221, %219 ], [ 810000, %209 ]
  %224 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 2
  store i32 %223, ptr %224, align 4
  %225 = lshr i32 %102, 24
  %226 = and i32 %225, 15
  switch i32 %226, label %231 [
    i32 15, label %227
    i32 4, label %227
    i32 3, label %229
    i32 2, label %229
  ]

227:                                              ; preds = %222, %222
  %228 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i32 4, ptr %228, align 4
  br label %258

229:                                              ; preds = %222, %222
  %230 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i32 2, ptr %230, align 4
  br label %258

231:                                              ; preds = %222
  %232 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i32 1, ptr %232, align 4
  br label %258

233:                                              ; preds = %118
  %234 = load i8, ptr %7, align 4
  %235 = icmp ugt i8 %234, 63
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = lshr i32 %102, 4
  %238 = and i32 %237, 3
  %239 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i32 %238, ptr %239, align 4
  %240 = lshr i32 %102, 8
  %241 = trunc i32 %240 to i8
  %242 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 12
  store i8 %241, ptr %242, align 4
  br label %258

243:                                              ; preds = %233
  %244 = icmp ugt i8 %234, 47
  br i1 %244, label %245, label %249

245:                                              ; preds = %243
  %246 = lshr i32 %102, 8
  %247 = and i32 %246, 7
  %248 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i32 %247, ptr %248, align 4
  br label %258

249:                                              ; preds = %243
  %250 = icmp ugt i8 %234, 33
  br i1 %250, label %251, label %258

251:                                              ; preds = %249
  %252 = lshr i32 %102, 4
  %253 = and i32 %252, 7
  %254 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i32 %253, ptr %254, align 4
  br label %258

255:                                              ; preds = %118
  %256 = load i32, ptr %104, align 4
  %257 = add i32 %256, -1
  store i32 %257, ptr %104, align 4
  br label %369

258:                                              ; preds = %251, %249, %245, %236, %231, %229, %227, %208, %205, %193, %185, %145, %118
  %259 = phi i32 [ %211, %227 ], [ %211, %229 ], [ %211, %231 ], [ %186, %193 ], [ %186, %185 ], [ 0, %145 ], [ 0, %208 ], [ 0, %205 ], [ 0, %249 ], [ 0, %251 ], [ 0, %245 ], [ %238, %236 ], [ 0, %118 ]
  %260 = load i8, ptr %7, align 4
  %261 = icmp ult i8 %260, 64
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i8, ptr %144, align 1
  %264 = zext i8 %263 to i32
  %265 = tail call i32 @llvm.cttz.i32(i32 %264, i1 true) #11, !range !20
  %266 = shl i32 3, %265
  %267 = icmp eq i32 %266, %264
  br label %273

268:                                              ; preds = %258, %190
  %269 = phi i32 [ %259, %258 ], [ %186, %190 ]
  %270 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 3
  br label %273

273:                                              ; preds = %268, %262
  %274 = phi i1 [ %272, %268 ], [ %267, %262 ]
  %275 = phi i32 [ %269, %268 ], [ %259, %262 ]
  %276 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 11
  %277 = zext i1 %274 to i8
  store i8 %277, ptr %276, align 1
  %278 = and i32 %102, 1048576
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %340, label %280

280:                                              ; preds = %273
  %281 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 14
  store i8 1, ptr %281, align 4
  br label %340

282:                                              ; preds = %101
  %283 = and i32 %103, 15
  switch i32 %283, label %296 [
    i32 0, label %284
    i32 1, label %286
    i32 2, label %288
    i32 4, label %288
    i32 3, label %294
  ]

284:                                              ; preds = %282
  %285 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 3
  store i32 0, ptr %285, align 4
  br label %305

286:                                              ; preds = %282
  %287 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 3
  store i32 1, ptr %287, align 4
  br label %305

288:                                              ; preds = %282, %282
  %289 = and i32 %103, 16
  %290 = icmp eq i32 %289, 0
  %291 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 3
  br i1 %290, label %293, label %292

292:                                              ; preds = %288
  store i32 3, ptr %291, align 4
  br label %305

293:                                              ; preds = %288
  store i32 2, ptr %291, align 4
  br label %305

294:                                              ; preds = %282
  %295 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 3
  store i32 3, ptr %295, align 4
  br label %305

296:                                              ; preds = %282
  %297 = load ptr, ptr %5, align 4
  %298 = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 1
  %299 = load ptr, ptr %298, align 8
  %300 = getelementptr inbounds %struct.nouveau_drm, ptr %299, i32 0, i32 3
  %301 = load ptr, ptr %300, align 8
  %302 = getelementptr inbounds %struct.drm_device, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.42, ptr noundef %304, i32 noundef %283) #10
  br label %369

305:                                              ; preds = %294, %293, %292, %286, %284
  %306 = phi i32 [ 3, %292 ], [ 2, %293 ], [ 3, %294 ], [ 1, %286 ], [ 0, %284 ]
  %307 = lshr i32 %103, 14
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 15
  %310 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 4
  store i8 %309, ptr %310, align 4
  %311 = lshr i32 %103, 18
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 7
  %314 = add nuw nsw i8 %313, 1
  %315 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 5
  store i8 %314, ptr %315, align 1
  %316 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 9
  store i8 %314, ptr %316, align 1
  %317 = lshr i32 %103, 21
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 15
  %320 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 8
  store i8 %319, ptr %320, align 4
  %321 = lshr i32 %103, 25
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 7
  %324 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 7
  store i8 %323, ptr %324, align 1
  %325 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 11
  store i8 0, ptr %325, align 1
  switch i32 %306, label %369 [
    i32 0, label %326
    i32 1, label %330
    i32 3, label %332
  ]

326:                                              ; preds = %305
  %327 = and i32 %102, 65535
  %328 = mul nuw nsw i32 %327, 10
  %329 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i32 %328, ptr %329, align 4
  br label %369

330:                                              ; preds = %305
  %331 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  store i8 0, ptr %331, align 4
  br label %364

332:                                              ; preds = %305
  %333 = and i32 %103, 16128
  %334 = icmp eq i32 %333, 4096
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13, i32 0, i32 1
  store i8 1, ptr %336, align 4
  br label %337

337:                                              ; preds = %335, %332
  %338 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 13
  %339 = getelementptr inbounds %struct.anon.82, ptr %338, i32 0, i32 3
  store i8 1, ptr %339, align 2
  br label %369

340:                                              ; preds = %280, %273
  %341 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 12
  %342 = load i8, ptr %341, align 4
  %343 = zext i8 %342 to i32
  %344 = shl nuw nsw i32 %343, 8
  %345 = load i8, ptr %140, align 4
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 4
  %348 = load i32, ptr %121, align 4
  %349 = or i32 %348, %344
  %350 = or i32 %349, %347
  %351 = trunc i32 %350 to i16
  %352 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 1
  store i16 %351, ptr %352, align 4
  %353 = load i8, ptr %128, align 1
  %354 = zext i8 %353 to i32
  %355 = shl nuw nsw i32 %354, 8
  %356 = shl nuw nsw i32 %275, 6
  %357 = or i32 %355, %356
  %358 = load i8, ptr %144, align 1
  %359 = zext i8 %358 to i32
  %360 = or i32 %357, %359
  %361 = trunc i32 %360 to i16
  %362 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 2
  store i16 %361, ptr %362, align 2
  %363 = icmp eq i32 %348, 1
  br i1 %363, label %364, label %369

364:                                              ; preds = %340, %330
  %365 = phi i8 [ %319, %330 ], [ %345, %340 ]
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = getelementptr %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 22, i32 2, i32 %105, i32 4
  store i8 15, ptr %368, align 4
  br label %369

369:                                              ; preds = %367, %364, %340, %337, %326, %305, %296, %255, %42, %28
  %370 = phi i32 [ 0, %367 ], [ 0, %340 ], [ 0, %364 ], [ 0, %28 ], [ 0, %42 ], [ 1, %296 ], [ 1, %255 ], [ 0, %305 ], [ 0, %337 ], [ 0, %326 ]
  ret i32 %370
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_tv_identify(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
!10 = !{i64 4002701}
!11 = !{i64 2151542154}
!12 = !{i64 2151543376}
!13 = !{i64 4002283}
!14 = !{!"auto-init"}
!15 = !{i64 2151542506}
!16 = !{i64 4002086}
!17 = !{i64 4002481}
!18 = !{i64 2151541208}
!19 = !{i8 0, i8 9}
!20 = !{i32 0, i32 33}
