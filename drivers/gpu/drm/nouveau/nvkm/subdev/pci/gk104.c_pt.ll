; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pci/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pci_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.120 }
%struct.anon.120 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.121, %struct.anon.122, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.121 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.122 = type { i32, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk104_pci_func = internal constant %struct.nvkm_pci_func { ptr @g84_pci_init, ptr @nv40_pci_rd32, ptr @nv40_pci_wr08, ptr @nv40_pci_wr32, ptr @nv40_pci_msi_rearm, %struct.anon.120 { ptr @gk104_pcie_init, ptr @gk104_pcie_set_link, ptr @gk104_pcie_max_speed, ptr @g84_pcie_cur_speed, ptr @gf100_pcie_set_version, ptr @gf100_pcie_version, ptr @gk104_pcie_version_supported } }, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: adjusting cap to max speed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: failed to adjust cap speed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: adjusting lnkctl to max speed\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: failed to adjust lnkctl speed\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%s: dropping requested speed due too low cap speed\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: dropping requested speed due too low lnkctl speed\0A\00", align 1
@switch.table.gk104_pcie_set_link.9 = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_pci_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_pci_new_(ptr noundef nonnull @gk104_pci_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_pci_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pci_rd32(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_wr08(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_wr32(ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_pci_msi_rearm(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_pcie_init(ptr noundef %0) #0 {
  %2 = tail call i32 @gf100_pcie_version(ptr noundef %0) #3
  %3 = icmp slt i32 %2, 2
  br i1 %3, label %128, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @nvkm_pci_rd32(ptr noundef %0, i16 noundef zeroext 168) #3
  %6 = and i32 %5, 3
  %7 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 573888
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %15 = and i32 %14, 3145728
  switch i32 %15, label %18 [
    i32 0, label %19
    i32 1048576, label %16
    i32 2097152, label %17
  ]

16:                                               ; preds = %4
  br label %19

17:                                               ; preds = %4
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %18, %17, %16, %4
  %20 = phi i32 [ 0, %18 ], [ 0, %17 ], [ 1, %16 ], [ 2, %4 ]
  %21 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %0) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 573888
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 3
  %33 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %25, %19
  %36 = phi i32 [ 0, %19 ], [ %34, %25 ]
  %37 = icmp eq i32 %36, %20
  br i1 %37, label %101, label %38

38:                                               ; preds = %35, %23
  %39 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 4
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef %46) #4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load ptr, ptr %9, align 4
  switch i32 %20, label %75 [
    i32 0, label %49
    i32 1, label %58
    i32 2, label %67
  ]

49:                                               ; preds = %47
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %0, i1 noundef zeroext false) #3
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 573888
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %54 = and i32 %53, -196609
  %55 = or i32 %54, 65536
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr i8, ptr %56, i32 573888
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #3, !srcloc !11
  br label %75

58:                                               ; preds = %47
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %0, i1 noundef zeroext true) #3
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 573888
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %63 = and i32 %62, -196609
  %64 = or i32 %63, 131072
  %65 = load ptr, ptr %59, align 4
  %66 = getelementptr i8, ptr %65, i32 573888
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #3, !srcloc !11
  br label %75

67:                                               ; preds = %47
  tail call void @gf100_pcie_set_cap_speed(ptr noundef %0, i1 noundef zeroext true) #3
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 573888
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %72 = or i32 %71, 196608
  %73 = load ptr, ptr %68, align 4
  %74 = getelementptr i8, ptr %73, i32 573888
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #3, !srcloc !11
  br label %75

75:                                               ; preds = %67, %58, %49, %47
  %76 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %0) #3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %78
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 573888
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 3
  %88 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %80, %75
  %91 = phi i32 [ 0, %75 ], [ %89, %80 ]
  %92 = icmp eq i32 %91, %20
  br i1 %92, label %101, label %93

93:                                               ; preds = %90, %78
  %94 = load i32, ptr %39, align 4
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %99, ptr noundef nonnull @.str.1, ptr noundef %100) #4
  br label %101

101:                                              ; preds = %96, %93, %90, %35
  %102 = icmp eq i32 %8, %20
  br i1 %102, label %128, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %105, 3
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load ptr, ptr %9, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.2, ptr noundef %111) #4
  br label %112

112:                                              ; preds = %107, %103
  %113 = add nuw nsw i32 %20, 1
  %114 = tail call i32 @nvkm_pci_mask(ptr noundef %0, i16 noundef zeroext 168, i32 noundef 3, i32 noundef %113) #3
  %115 = tail call i32 @nvkm_pci_rd32(ptr noundef %0, i16 noundef zeroext 168) #3
  %116 = and i32 %115, 3
  %117 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, %20
  br i1 %119, label %128, label %120

120:                                              ; preds = %112
  %121 = load i32, ptr %104, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.3, ptr noundef %127) #4
  br label %128

128:                                              ; preds = %123, %120, %112, %101, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_pcie_set_link(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @nvkm_pci_rd32(ptr noundef %0, i16 noundef zeroext 168) #3
  %5 = and i32 %4, 3
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @gf100_pcie_cap_speed(ptr noundef %0) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 573888
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 3
  %21 = getelementptr inbounds [4 x i32], ptr @switch.table.gk104_pcie_set_link.9, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %12, %10, %3
  %24 = phi i32 [ 0, %3 ], [ -22, %10 ], [ %22, %12 ]
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %34, ptr noundef nonnull @.str.4, ptr noundef %35) #4
  br label %36

36:                                               ; preds = %30, %26, %23
  %37 = phi i32 [ %1, %23 ], [ %24, %30 ], [ %24, %26 ]
  %38 = icmp ugt i32 %37, %7
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef %48) #4
  br label %49

49:                                               ; preds = %43, %39, %36
  %50 = phi i32 [ %37, %36 ], [ %7, %43 ], [ %7, %39 ]
  %51 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq i32 %50, 1
  %54 = select i1 %53, i32 262144, i32 524288
  %55 = icmp eq i32 %50, 2
  %56 = select i1 %55, i32 0, i32 %54
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 573504
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %61 = and i32 %60, -786433
  %62 = or i32 %61, %56
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr i8, ptr %63, i32 573504
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #3, !srcloc !11
  %65 = load ptr, ptr %57, align 4
  %66 = getelementptr i8, ptr %65, i32 573504
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %68 = or i32 %67, 1
  %69 = load ptr, ptr %57, align 4
  %70 = getelementptr i8, ptr %69, i32 573504
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_pcie_max_speed(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 573888
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = and i32 %7, 3145728
  switch i32 %8, label %11 [
    i32 0, label %12
    i32 1048576, label %9
    i32 2097152, label %10
  ]

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %10, %9, %1
  %13 = phi i32 [ 0, %11 ], [ 0, %10 ], [ 1, %9 ], [ 2, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_pcie_cur_speed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pcie_set_version(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pcie_version(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_pcie_version_supported(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pci, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 573888
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 2
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_rd32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pcie_cap_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pcie_set_cap_speed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pci_mask(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 3945671}
!9 = !{i64 2151485124}
!10 = !{i64 2151486346}
!11 = !{i64 3945253}
