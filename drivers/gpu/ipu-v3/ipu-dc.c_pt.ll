; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-dc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-dc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_init_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_init_sync\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_init_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_enable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_disable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dc_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ipu_dc = type { i32, ptr, ptr, i32, i8 }
%struct.ipu_dc_priv = type { ptr, ptr, ptr, ptr, [10 x %struct.ipu_dc], %struct.mutex, %struct.completion, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@.str = private unnamed_addr constant [38 x i8] c"%s: hactive does not align to 8 byte\0A\00", align 1
@__func__.ipu_dc_init_sync = private unnamed_addr constant [17 x i8] c"ipu_dc_init_sync\00", align 1
@__kstrtab_ipu_dc_init_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_init_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_init_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_init_sync to i32), ptr @__kstrtab_ipu_dc_init_sync, ptr @__kstrtabns_ipu_dc_init_sync }, section "___ksymtab_gpl+ipu_dc_init_sync", align 4
@__kstrtab_ipu_dc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_enable to i32), ptr @__kstrtab_ipu_dc_enable, ptr @__kstrtabns_ipu_dc_enable }, section "___ksymtab_gpl+ipu_dc_enable", align 4
@__kstrtab_ipu_dc_enable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_enable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_enable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_enable_channel to i32), ptr @__kstrtab_ipu_dc_enable_channel, ptr @__kstrtabns_ipu_dc_enable_channel }, section "___ksymtab_gpl+ipu_dc_enable_channel", align 4
@__kstrtab_ipu_dc_disable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_disable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_disable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_disable_channel to i32), ptr @__kstrtab_ipu_dc_disable_channel, ptr @__kstrtabns_ipu_dc_disable_channel }, section "___ksymtab_gpl+ipu_dc_disable_channel", align 4
@__kstrtab_ipu_dc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_disable to i32), ptr @__kstrtab_ipu_dc_disable, ptr @__kstrtabns_ipu_dc_disable }, section "___ksymtab_gpl+ipu_dc_disable", align 4
@__kstrtab_ipu_dc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_get to i32), ptr @__kstrtab_ipu_dc_get, ptr @__kstrtabns_ipu_dc_get }, section "___ksymtab_gpl+ipu_dc_get", align 4
@__kstrtab_ipu_dc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dc_put to i32), ptr @__kstrtab_ipu_dc_put, ptr @__kstrtabns_ipu_dc_put }, section "___ksymtab_gpl+ipu_dc_put", align 4
@ipu_dc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"drivers/gpu/ipu-v3/ipu-dc.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ipu_dc_disable, ptr @__ksymtab_ipu_dc_disable_channel, ptr @__ksymtab_ipu_dc_enable, ptr @__ksymtab_ipu_dc_enable_channel, ptr @__ksymtab_ipu_dc_get, ptr @__ksymtab_ipu_dc_init_sync, ptr @__ksymtab_ipu_dc_put], section "llvm.metadata"
@switch.table.ipu_dc_init_sync = private unnamed_addr constant [15 x i32] [i32 131072, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 196608, i32 98304, i32 163840, i32 32768, i32 65536], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dc_init_sync(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @ipu_di_get_num(ptr noundef %1) #4
  store i32 %8, ptr %0, align 4
  %9 = and i32 %4, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ipu_dc_priv, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ipu_dc_init_sync) #5
  br label %14

14:                                               ; preds = %11, %5
  %15 = add i32 %3, -4105
  %16 = icmp ult i32 %15, 15
  br i1 %16, label %18, label %17

17:                                               ; preds = %18, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 9, ptr noundef null) #4
  br label %26

18:                                               ; preds = %14
  %19 = trunc i32 %15 to i16
  %20 = lshr i16 23555, %19
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %17, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [15 x i32], ptr @switch.table.ipu_dc_init_sync, i32 0, i32 %15
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ 32768, %17 ], [ %25, %23 ]
  %28 = select i1 %2, i32 6, i32 5
  %29 = load i32, ptr %0, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 5
  br i1 %2, label %32, label %70

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %37 = and i32 %36, 65535
  %38 = shl nuw nsw i32 %31, 8
  %39 = shl nuw nsw i32 %31, 24
  %40 = or i32 %39, 196608
  %41 = or i32 %37, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #4, !srcloc !11
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr i8, ptr %44, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %47 = and i32 %46, -65536
  %48 = or i32 %38, %47
  %49 = or i32 %48, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %50 = load ptr, ptr %33, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #4, !srcloc !11
  %52 = load ptr, ptr %33, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %55 = and i32 %54, -65536
  %56 = or i32 %38, %55
  %57 = or i32 %56, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %58 = load ptr, ptr %33, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #4, !srcloc !11
  %60 = load ptr, ptr %6, align 4
  %61 = or i32 %27, %28
  %62 = or i32 %61, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %63 = getelementptr inbounds %struct.ipu_dc_priv, ptr %60, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = shl nuw nsw i32 %31, 3
  %66 = getelementptr i8, ptr %64, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %62) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr i8, ptr %67, i32 %65
  %69 = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 896) #4, !srcloc !11
  br label %139

70:                                               ; preds = %26
  %71 = or i32 %31, 2
  %72 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %76 = and i32 %75, 65535
  %77 = shl nuw nsw i32 %71, 24
  %78 = or i32 %77, 196608
  %79 = or i32 %76, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %80 = load ptr, ptr %72, align 4
  %81 = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #4, !srcloc !11
  %82 = add nuw nsw i32 %31, 3
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr i8, ptr %83, i32 16
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %86 = and i32 %85, -65536
  %87 = shl nuw nsw i32 %82, 8
  %88 = or i32 %87, 2
  %89 = or i32 %86, %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %90 = load ptr, ptr %72, align 4
  %91 = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #4, !srcloc !11
  %92 = add nuw nsw i32 %31, 1
  %93 = load ptr, ptr %72, align 4
  %94 = getelementptr i8, ptr %93, i32 24
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %96 = and i32 %95, -65536
  %97 = shl nuw nsw i32 %92, 8
  %98 = or i32 %97, 1
  %99 = or i32 %96, %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %100 = load ptr, ptr %72, align 4
  %101 = getelementptr i8, ptr %100, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #4, !srcloc !11
  %102 = load ptr, ptr %6, align 4
  %103 = or i32 %27, %28
  %104 = or i32 %103, 2176
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %105 = getelementptr inbounds %struct.ipu_dc_priv, ptr %102, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = shl nuw nsw i32 %71, 3
  %108 = getelementptr i8, ptr %106, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %104) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr i8, ptr %109, i32 %107
  %111 = getelementptr i8, ptr %110, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 896) #4, !srcloc !11
  %112 = load ptr, ptr %6, align 4
  %113 = or i32 %103, 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %114 = getelementptr inbounds %struct.ipu_dc_priv, ptr %112, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = shl nuw nsw i32 %82, 3
  %117 = getelementptr i8, ptr %115, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %113) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr i8, ptr %118, i32 %116
  %120 = getelementptr i8, ptr %119, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 384) #4, !srcloc !11
  %121 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %122 = getelementptr inbounds %struct.ipu_dc_priv, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = shl nuw nsw i32 %31, 3
  %125 = add nuw nsw i32 %124, 32
  %126 = getelementptr i8, ptr %123, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %127 = load ptr, ptr %122, align 4
  %128 = getelementptr i8, ptr %127, i32 %125
  %129 = getelementptr i8, ptr %128, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 640) #4, !srcloc !11
  %130 = load ptr, ptr %6, align 4
  %131 = or i32 %103, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %132 = getelementptr inbounds %struct.ipu_dc_priv, ptr %130, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = shl nuw nsw i32 %92, 3
  %135 = getelementptr i8, ptr %133, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %131) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %136 = load ptr, ptr %132, align 4
  %137 = getelementptr i8, ptr %136, i32 %134
  %138 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 896) #4, !srcloc !11
  br label %139

139:                                              ; preds = %70, %32
  %140 = phi i32 [ 0, %70 ], [ 512, %32 ]
  %141 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 8
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %145 = and i32 %144, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %146 = load ptr, ptr %141, align 4
  %147 = getelementptr i8, ptr %146, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #4, !srcloc !11
  %148 = load ptr, ptr %141, align 4
  %149 = getelementptr i8, ptr %148, i32 12
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %151 = and i32 %150, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %152 = load ptr, ptr %141, align 4
  %153 = getelementptr i8, ptr %152, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #4, !srcloc !11
  %154 = load ptr, ptr %141, align 4
  %155 = getelementptr i8, ptr %154, i32 12
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %157 = and i32 %156, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %158 = load ptr, ptr %141, align 4
  %159 = getelementptr i8, ptr %158, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #4, !srcloc !11
  %160 = load ptr, ptr %141, align 4
  %161 = getelementptr i8, ptr %160, i32 16
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %163 = and i32 %162, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %164 = load ptr, ptr %141, align 4
  %165 = getelementptr i8, ptr %164, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #4, !srcloc !11
  %166 = load ptr, ptr %141, align 4
  %167 = getelementptr i8, ptr %166, i32 20
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %169 = and i32 %168, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %170 = load ptr, ptr %141, align 4
  %171 = getelementptr i8, ptr %170, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #4, !srcloc !11
  %172 = load ptr, ptr %141, align 4
  %173 = getelementptr i8, ptr %172, i32 20
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %175 = and i32 %174, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %176 = load ptr, ptr %141, align 4
  %177 = getelementptr i8, ptr %176, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %175) #4, !srcloc !11
  %178 = load ptr, ptr %141, align 4
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %180 = and i32 %179, -513
  %181 = or i32 %180, %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %182 = load ptr, ptr %141, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %181) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %183 = load ptr, ptr %141, align 4
  %184 = getelementptr i8, ptr %183, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %185 = load ptr, ptr %7, align 4
  %186 = load i32, ptr %0, align 4
  %187 = shl i32 %186, 2
  %188 = add i32 %187, 232
  %189 = getelementptr i8, ptr %185, i32 %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %4) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_get_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dc_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ipu_module_enable(ptr noundef %10, i32 noundef 512) #4
  %12 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %15 = add i32 %14, 1
  store i32 %15, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dc_enable_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %5 = or i32 %4, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dc_disable_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %5 = and i32 %4, -225
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @ipu_module_disable(ptr noundef %11, i32 noundef 512) #4
  %13 = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr %5, align 4
  br label %18

18:                                               ; preds = %17, %14
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_dc_get(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 9
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_dc_priv, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #4
  %8 = getelementptr %struct.ipu_dc_priv, ptr %6, i32 0, i32 4, i32 %1, i32 4
  %9 = load i8, ptr %8, align 4, !range !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr %struct.ipu_dc_priv, ptr %6, i32 0, i32 4, i32 %1
  store i8 1, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi ptr [ %12, %11 ], [ inttoptr (i32 -16 to ptr), %4 ]
  tail call void @mutex_unlock(ptr noundef %7) #4
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ inttoptr (i32 -19 to ptr), %2 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dc_put(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dc_priv, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.ipu_dc, ptr %0, i32 0, i32 4
  store i8 0, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dc_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 256, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %349, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ipu_dc_priv, ptr %5, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipu_dc_init.__key) #4
  %9 = getelementptr inbounds %struct.ipu_dc_priv, ptr %5, i32 0, i32 3
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ipu_dc_priv, ptr %5, i32 0, i32 2
  store ptr %0, ptr %10, align 4
  %11 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #4
  store ptr %11, ptr %5, align 4
  %12 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %3, i32 noundef 4096) #4
  %13 = getelementptr inbounds %struct.ipu_dc_priv, ptr %5, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %12, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %349, label %18

18:                                               ; preds = %7
  %19 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 0, i32 2
  store ptr %5, ptr %20, align 4
  %21 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 0, i32 1
  store ptr %14, ptr %21, align 4
  %22 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 1, i32 3
  store i32 1, ptr %22, align 4
  %23 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 1, i32 2
  store ptr %5, ptr %23, align 4
  %24 = getelementptr i8, ptr %14, i32 28
  %25 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 2, i32 3
  store i32 2, ptr %26, align 4
  %27 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 2, i32 2
  store ptr %5, ptr %27, align 4
  %28 = getelementptr i8, ptr %14, i32 56
  %29 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 2, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 3, i32 3
  store i32 3, ptr %30, align 4
  %31 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 3, i32 2
  store ptr %5, ptr %31, align 4
  %32 = getelementptr i8, ptr %14, i32 84
  %33 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 3, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 4, i32 3
  store i32 4, ptr %34, align 4
  %35 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 4, i32 2
  store ptr %5, ptr %35, align 4
  %36 = getelementptr i8, ptr %14, i32 88
  %37 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 4, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 5, i32 3
  store i32 5, ptr %38, align 4
  %39 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 5, i32 2
  store ptr %5, ptr %39, align 4
  %40 = getelementptr i8, ptr %14, i32 92
  %41 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 5, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 6, i32 3
  store i32 6, ptr %42, align 4
  %43 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 6, i32 2
  store ptr %5, ptr %43, align 4
  %44 = getelementptr i8, ptr %14, i32 120
  %45 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 6, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 7, i32 3
  store i32 7, ptr %46, align 4
  %47 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 7, i32 2
  store ptr %5, ptr %47, align 4
  %48 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 7, i32 1
  store ptr %14, ptr %48, align 4
  %49 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 8, i32 3
  store i32 8, ptr %49, align 4
  %50 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 8, i32 2
  store ptr %5, ptr %50, align 4
  %51 = getelementptr i8, ptr %14, i32 148
  %52 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 8, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 9, i32 3
  store i32 9, ptr %53, align 4
  %54 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 9, i32 2
  store ptr %5, ptr %54, align 4
  %55 = getelementptr i8, ptr %14, i32 180
  %56 = getelementptr %struct.ipu_dc_priv, ptr %5, i32 0, i32 4, i32 9, i32 1
  store ptr %55, ptr %56, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %57 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 14) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %58 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 2) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 132) #4, !srcloc !11
  %61 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 15
  store ptr %5, ptr %61, align 4
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 264
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %65 = and i32 %64, -65536
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #4, !srcloc !11
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr i8, ptr %68, i32 324
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %71 = and i32 %70, -65536
  %72 = or i32 %71, 2047
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #4, !srcloc !11
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr i8, ptr %75, i32 264
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %78 = and i32 %77, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i8, ptr %79, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #4, !srcloc !11
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr i8, ptr %81, i32 324
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %84 = and i32 %83, 65535
  %85 = or i32 %84, 268369920
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr i8, ptr %86, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #4, !srcloc !11
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 264
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %91 = and i32 %90, -993
  %92 = or i32 %91, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i8, ptr %93, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #4, !srcloc !11
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr i8, ptr %95, i32 328
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %98 = and i32 %97, -65536
  %99 = or i32 %98, 6143
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #4, !srcloc !11
  %102 = load ptr, ptr %5, align 4
  %103 = getelementptr i8, ptr %102, i32 264
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %105 = and i32 %104, -31745
  %106 = or i32 %105, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #4, !srcloc !11
  %109 = load ptr, ptr %5, align 4
  %110 = getelementptr i8, ptr %109, i32 264
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %112 = and i32 %111, 65535
  %113 = load ptr, ptr %5, align 4
  %114 = getelementptr i8, ptr %113, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #4, !srcloc !11
  %115 = load ptr, ptr %5, align 4
  %116 = getelementptr i8, ptr %115, i32 328
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %118 = and i32 %117, 65535
  %119 = or i32 %118, 83361792
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr i8, ptr %120, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #4, !srcloc !11
  %122 = load ptr, ptr %5, align 4
  %123 = getelementptr i8, ptr %122, i32 264
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %125 = and i32 %124, -2031617
  %126 = or i32 %125, 196608
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr i8, ptr %127, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #4, !srcloc !11
  %129 = load ptr, ptr %5, align 4
  %130 = getelementptr i8, ptr %129, i32 332
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %132 = and i32 %131, -65536
  %133 = or i32 %132, 2812
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %134 = load ptr, ptr %5, align 4
  %135 = getelementptr i8, ptr %134, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #4, !srcloc !11
  %136 = load ptr, ptr %5, align 4
  %137 = getelementptr i8, ptr %136, i32 264
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %139 = and i32 %138, -65011713
  %140 = or i32 %139, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %141 = load ptr, ptr %5, align 4
  %142 = getelementptr i8, ptr %141, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #4, !srcloc !11
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr i8, ptr %143, i32 332
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %146 = and i32 %145, 65535
  %147 = or i32 %146, 267911168
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %148 = load ptr, ptr %5, align 4
  %149 = getelementptr i8, ptr %148, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #4, !srcloc !11
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr i8, ptr %150, i32 264
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %153 = and i32 %152, -2080374785
  %154 = or i32 %153, 335544320
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %155 = load ptr, ptr %5, align 4
  %156 = getelementptr i8, ptr %155, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #4, !srcloc !11
  %157 = load ptr, ptr %5, align 4
  %158 = getelementptr i8, ptr %157, i32 268
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %160 = and i32 %159, -65536
  %161 = load ptr, ptr %5, align 4
  %162 = getelementptr i8, ptr %161, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #4, !srcloc !11
  %163 = load ptr, ptr %5, align 4
  %164 = getelementptr i8, ptr %163, i32 340
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %166 = and i32 %165, -65536
  %167 = or i32 %166, 4095
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr i8, ptr %168, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #4, !srcloc !11
  %170 = load ptr, ptr %5, align 4
  %171 = getelementptr i8, ptr %170, i32 268
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %173 = and i32 %172, -31745
  %174 = or i32 %173, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %175 = load ptr, ptr %5, align 4
  %176 = getelementptr i8, ptr %175, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #4, !srcloc !11
  %177 = load ptr, ptr %5, align 4
  %178 = getelementptr i8, ptr %177, i32 336
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %180 = and i32 %179, 65535
  %181 = or i32 %180, 134152192
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %182 = load ptr, ptr %5, align 4
  %183 = getelementptr i8, ptr %182, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #4, !srcloc !11
  %184 = load ptr, ptr %5, align 4
  %185 = getelementptr i8, ptr %184, i32 268
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %187 = and i32 %186, -993
  %188 = or i32 %187, 224
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %189 = load ptr, ptr %5, align 4
  %190 = getelementptr i8, ptr %189, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #4, !srcloc !11
  %191 = load ptr, ptr %5, align 4
  %192 = getelementptr i8, ptr %191, i32 336
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %194 = and i32 %193, -65536
  %195 = or i32 %194, 6143
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %196 = load ptr, ptr %5, align 4
  %197 = getelementptr i8, ptr %196, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #4, !srcloc !11
  %198 = load ptr, ptr %5, align 4
  %199 = getelementptr i8, ptr %198, i32 268
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %201 = and i32 %200, -32
  %202 = or i32 %201, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %203 = load ptr, ptr %5, align 4
  %204 = getelementptr i8, ptr %203, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #4, !srcloc !11
  %205 = load ptr, ptr %5, align 4
  %206 = getelementptr i8, ptr %205, i32 268
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %208 = and i32 %207, 65535
  %209 = load ptr, ptr %5, align 4
  %210 = getelementptr i8, ptr %209, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %208) #4, !srcloc !11
  %211 = load ptr, ptr %5, align 4
  %212 = getelementptr i8, ptr %211, i32 340
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %214 = and i32 %213, 65535
  %215 = or i32 %214, 100401152
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %216 = load ptr, ptr %5, align 4
  %217 = getelementptr i8, ptr %216, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #4, !srcloc !11
  %218 = load ptr, ptr %5, align 4
  %219 = getelementptr i8, ptr %218, i32 268
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %221 = and i32 %220, -2031617
  %222 = or i32 %221, 589824
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %223 = load ptr, ptr %5, align 4
  %224 = getelementptr i8, ptr %223, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %222) #4, !srcloc !11
  %225 = load ptr, ptr %5, align 4
  %226 = getelementptr i8, ptr %225, i32 344
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %228 = and i32 %227, -65536
  %229 = or i32 %228, 3068
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %230 = load ptr, ptr %5, align 4
  %231 = getelementptr i8, ptr %230, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #4, !srcloc !11
  %232 = load ptr, ptr %5, align 4
  %233 = getelementptr i8, ptr %232, i32 268
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %235 = and i32 %234, -65011713
  %236 = or i32 %235, 20971520
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %237 = load ptr, ptr %5, align 4
  %238 = getelementptr i8, ptr %237, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #4, !srcloc !11
  %239 = load ptr, ptr %5, align 4
  %240 = getelementptr i8, ptr %239, i32 344
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %242 = and i32 %241, 65535
  %243 = or i32 %242, 301727744
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %244 = load ptr, ptr %5, align 4
  %245 = getelementptr i8, ptr %244, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #4, !srcloc !11
  %246 = load ptr, ptr %5, align 4
  %247 = getelementptr i8, ptr %246, i32 268
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %249 = and i32 %248, -2080374785
  %250 = or i32 %249, 738197504
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %251 = load ptr, ptr %5, align 4
  %252 = getelementptr i8, ptr %251, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #4, !srcloc !11
  %253 = load ptr, ptr %5, align 4
  %254 = getelementptr i8, ptr %253, i32 272
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %256 = and i32 %255, -65536
  %257 = load ptr, ptr %5, align 4
  %258 = getelementptr i8, ptr %257, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #4, !srcloc !11
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr i8, ptr %259, i32 348
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %262 = and i32 %261, -65536
  %263 = or i32 %262, 1532
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %264 = load ptr, ptr %5, align 4
  %265 = getelementptr i8, ptr %264, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %263) #4, !srcloc !11
  %266 = load ptr, ptr %5, align 4
  %267 = getelementptr i8, ptr %266, i32 272
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %269 = and i32 %268, -32
  %270 = or i32 %269, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %271 = load ptr, ptr %5, align 4
  %272 = getelementptr i8, ptr %271, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #4, !srcloc !11
  %273 = load ptr, ptr %5, align 4
  %274 = getelementptr i8, ptr %273, i32 348
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %276 = and i32 %275, 65535
  %277 = or i32 %276, 234618880
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %278 = load ptr, ptr %5, align 4
  %279 = getelementptr i8, ptr %278, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #4, !srcloc !11
  %280 = load ptr, ptr %5, align 4
  %281 = getelementptr i8, ptr %280, i32 272
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %283 = and i32 %282, -993
  %284 = or i32 %283, 416
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %285 = load ptr, ptr %5, align 4
  %286 = getelementptr i8, ptr %285, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %284) #4, !srcloc !11
  %287 = load ptr, ptr %5, align 4
  %288 = getelementptr i8, ptr %287, i32 352
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %290 = and i32 %289, -65536
  %291 = or i32 %290, 5628
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %292 = load ptr, ptr %5, align 4
  %293 = getelementptr i8, ptr %292, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %291) #4, !srcloc !11
  %294 = load ptr, ptr %5, align 4
  %295 = getelementptr i8, ptr %294, i32 272
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %297 = and i32 %296, -31745
  %298 = or i32 %297, 14336
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %299 = load ptr, ptr %5, align 4
  %300 = getelementptr i8, ptr %299, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %298) #4, !srcloc !11
  %301 = load ptr, ptr %5, align 4
  %302 = getelementptr i8, ptr %301, i32 272
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %304 = and i32 %303, 65535
  %305 = load ptr, ptr %5, align 4
  %306 = getelementptr i8, ptr %305, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %306, i32 %304) #4, !srcloc !11
  %307 = load ptr, ptr %5, align 4
  %308 = getelementptr i8, ptr %307, i32 356
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %310 = and i32 %309, 65535
  %311 = or i32 %310, 134152192
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %312 = load ptr, ptr %5, align 4
  %313 = getelementptr i8, ptr %312, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %311) #4, !srcloc !11
  %314 = load ptr, ptr %5, align 4
  %315 = getelementptr i8, ptr %314, i32 272
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %315) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %317 = and i32 %316, -2080374785
  %318 = or i32 %317, 1140850688
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %319 = load ptr, ptr %5, align 4
  %320 = getelementptr i8, ptr %319, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #4, !srcloc !11
  %321 = load ptr, ptr %5, align 4
  %322 = getelementptr i8, ptr %321, i32 356
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %324 = and i32 %323, -65536
  %325 = or i32 %324, 4095
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %326 = load ptr, ptr %5, align 4
  %327 = getelementptr i8, ptr %326, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %325) #4, !srcloc !11
  %328 = load ptr, ptr %5, align 4
  %329 = getelementptr i8, ptr %328, i32 272
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %331 = and i32 %330, -65011713
  %332 = or i32 %331, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %333 = load ptr, ptr %5, align 4
  %334 = getelementptr i8, ptr %333, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 %332) #4, !srcloc !11
  %335 = load ptr, ptr %5, align 4
  %336 = getelementptr i8, ptr %335, i32 352
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  %338 = and i32 %337, 65535
  %339 = or i32 %338, 402587648
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %340 = load ptr, ptr %5, align 4
  %341 = getelementptr i8, ptr %340, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %341, i32 %339) #4, !srcloc !11
  %342 = load ptr, ptr %5, align 4
  %343 = getelementptr i8, ptr %342, i32 272
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %343) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %345 = and i32 %344, -2031617
  %346 = or i32 %345, 983040
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %347 = load ptr, ptr %5, align 4
  %348 = getelementptr i8, ptr %347, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %346) #4, !srcloc !11
  br label %349

349:                                              ; preds = %18, %7, %4
  %350 = phi i32 [ 0, %18 ], [ -12, %4 ], [ -12, %7 ]
  ret i32 %350
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dc_exit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3475802}
!9 = !{i64 2154761312}
!10 = !{i64 2154761550}
!11 = !{i64 3475384}
!12 = !{i64 2154761908}
!13 = !{i64 2154762251}
!14 = !{i64 2154764131}
!15 = !{i64 2154764335}
!16 = !{i64 2154764647}
!17 = !{i64 2154765008}
!18 = !{i64 2154767919}
!19 = !{i64 2154768114}
!20 = !{i64 2154769926}
!21 = !{i64 2154770121}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154782524}
!24 = !{i64 2154783000}
!25 = !{i64 2154783422}
!26 = !{i64 2154779039}
!27 = !{i64 2154779317}
!28 = !{i64 2154777339}
!29 = !{i64 2154777583}
!30 = !{i64 2154778189}
!31 = !{i64 2154778433}
