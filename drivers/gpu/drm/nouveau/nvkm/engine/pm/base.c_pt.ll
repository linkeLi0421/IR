; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.121, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pm = type { ptr, %struct.nvkm_engine, %struct.anon.123, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.123 = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_perfdom = type { %struct.nvkm_object, ptr, %struct.list_head, %struct.list_head, ptr, [4 x ptr], [32 x i8], i32, i8, i32, i16, [0 x %struct.nvkm_perfsig] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_perfsig = type { ptr, [8 x i8] }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specmux = type { i32, i8, ptr, i8 }
%struct.nvkm_perfsrc = type { %struct.list_head, ptr, i32, i32, i8, i8 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_perfmon = type { %struct.nvkm_object, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvif_perfmon_query_domain_v0 = type { i8, i8, i8, i8, i16, [2 x i8], [64 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_perfmon_query_signal_v0 = type { i8, i8, i16, i8, i8, [2 x i8], [64 x i8] }
%struct.nvif_perfmon_query_source_v0 = type { i8, i8, i8, i8, [4 x i8], i32, i32, [64 x i8] }
%struct.nvif_perfdom_v0 = type { i8, i8, i8, [1 x i8], [4 x %struct.anon.134] }
%struct.anon.134 = type { [4 x i8], [4 x [8 x i64]], i16 }
%struct.nvkm_perfctr = type { %struct.list_head, i8, [4 x i8], [4 x [8 x i64]], i32, i32, i32 }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvif_perfdom_read_v0 = type { i8, [7 x i8], [4 x i32], i32, [4 x i8] }

@.str = private unnamed_addr constant [13 x i8] c"%s/%02x/%02x\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/%02x\00", align 1
@nvkm_pm = internal constant %struct.nvkm_engine_func { ptr @nvkm_pm_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_pm_fini, ptr null, ptr null, ptr null, %struct.anon { ptr @nvkm_pm_oclass_get }, %struct.anon.121 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@nvkm_pm_oclass = internal constant %struct.nvkm_device_oclass { ptr @nvkm_pm_oclass_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2, ptr null, ptr null } }, align 4
@nvkm_perfmon = internal constant %struct.nvkm_object_func { ptr @nvkm_perfmon_dtor, ptr null, ptr null, ptr @nvkm_perfmon_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_perfmon_child_get }, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query domain size %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon domain vers %d iter %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"NvPmShowAll\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"NvPmUnnamed\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query signal size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query signal vers %d dom %d iter %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/%s/%02x\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query source size %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [82 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon source vers %d dom %d sig %02x iter %02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create perfdom size %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create perfdom vers %d dom %d mode %02x\0A\00", align 1
@nvkm_perfdom = internal constant %struct.nvkm_object_func { ptr @nvkm_perfdom_dtor, ptr null, ptr null, ptr @nvkm_perfdom_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"%s: disabled source %08x %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom init size %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom init\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%s: enabled source %08x %08x %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom sample size %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom sample\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom read size %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom read vers %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_perfdom_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp ne i32 %2, 0
  %9 = ptrtoint ptr %6 to i32
  %10 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 3
  %11 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 3, i32 1
  %12 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 4, i32 1
  br label %14

14:                                               ; preds = %171, %7
  %15 = phi i1 [ %8, %7 ], [ %175, %171 ]
  %16 = phi i1 [ true, %7 ], [ %174, %171 ]
  %17 = phi i32 [ 0, %7 ], [ %173, %171 ]
  %18 = phi i32 [ %2, %7 ], [ %172, %171 ]
  %19 = mul i32 %17, %4
  %20 = add i32 %19, %3
  br i1 %16, label %25, label %21

21:                                               ; preds = %14
  %22 = shl nuw i32 1, %17
  %23 = and i32 %22, %18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %171, label %25

25:                                               ; preds = %21, %14
  %26 = load i16, ptr %6, align 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %167, label %28

28:                                               ; preds = %163, %25
  %29 = phi i16 [ %165, %163 ], [ %26, %25 ]
  %30 = phi i32 [ %164, %163 ], [ %20, %25 ]
  %31 = phi ptr [ %58, %163 ], [ %6, %25 ]
  %32 = zext i16 %29 to i32
  %33 = mul nuw nsw i32 %32, 12
  %34 = add nuw nsw i32 %33, 160
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3520) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %177, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 6
  %39 = ptrtoint ptr %31 to i32
  %40 = sub i32 %39, %9
  %41 = sdiv exact i32 %40, 12
  br i1 %15, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %17, i32 noundef %41)
  br label %46

44:                                               ; preds = %37
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %41)
  br label %46

46:                                               ; preds = %44, %42
  %47 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 2
  %48 = load ptr, ptr %11, align 4
  store ptr %47, ptr %11, align 4
  store ptr %10, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 2, i32 1
  store ptr %48, ptr %49, align 16
  store volatile ptr %47, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 3
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 3, i32 1
  store ptr %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nvkm_specdom, ptr %31, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 4
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 7
  store i32 %30, ptr %55, align 16
  %56 = load i16, ptr %31, align 4
  %57 = getelementptr inbounds %struct.nvkm_perfdom, ptr %35, i32 0, i32 10
  store i16 %56, ptr %57, align 4
  %58 = getelementptr %struct.nvkm_specdom, ptr %31, i32 1
  %59 = getelementptr inbounds %struct.nvkm_specdom, ptr %31, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_specsig, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %163, label %64

64:                                               ; preds = %158, %46
  %65 = phi ptr [ %161, %158 ], [ %62, %46 ]
  %66 = phi ptr [ %159, %158 ], [ %60, %46 ]
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = getelementptr %struct.nvkm_perfdom, ptr %35, i32 0, i32 11, i32 %68
  store ptr %65, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nvkm_specsig, ptr %66, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %158, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.nvkm_specsrc, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %158, label %77

77:                                               ; preds = %152, %73
  %78 = phi ptr [ %155, %152 ], [ %74, %73 ]
  %79 = phi ptr [ %154, %152 ], [ %71, %73 ]
  %80 = phi i8 [ %153, %152 ], [ 0, %73 ]
  %81 = getelementptr inbounds %struct.nvkm_specsrc, ptr %79, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_specmux, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %152, label %86

86:                                               ; preds = %142, %77
  %87 = phi ptr [ %149, %142 ], [ %83, %77 ]
  %88 = phi ptr [ %148, %142 ], [ %82, %77 ]
  %89 = phi i8 [ %145, %142 ], [ %80, %77 ]
  %90 = load ptr, ptr %12, align 4
  %91 = icmp eq ptr %90, %12
  br i1 %91, label %110, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %79, align 4
  %94 = getelementptr inbounds %struct.nvkm_specmux, ptr %88, i32 0, i32 1
  br label %95

95:                                               ; preds = %106, %92
  %96 = phi ptr [ %90, %92 ], [ %108, %106 ]
  %97 = phi i8 [ 0, %92 ], [ %107, %106 ]
  %98 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %96, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %93
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %96, i32 0, i32 4
  %103 = load i8, ptr %102, align 4
  %104 = load i8, ptr %94, align 4
  %105 = icmp eq i8 %103, %104
  br i1 %105, label %142, label %106

106:                                              ; preds = %101, %95
  %107 = add i8 %97, 1
  %108 = load ptr, ptr %96, align 4
  %109 = icmp eq ptr %108, %12
  br i1 %109, label %110, label %95

110:                                              ; preds = %106, %86
  %111 = phi i8 [ 0, %86 ], [ %107, %106 ]
  %112 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %113 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3520, i32 noundef 24) #15
  %114 = icmp eq ptr %113, null
  br i1 %114, label %177, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr %79, align 4
  %117 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %113, i32 0, i32 2
  store i32 %116, ptr %117, align 4
  %118 = load i32, ptr %88, align 4
  %119 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %113, i32 0, i32 3
  store i32 %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.nvkm_specmux, ptr %88, i32 0, i32 1
  %121 = load i8, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %113, i32 0, i32 4
  store i8 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nvkm_specmux, ptr %88, i32 0, i32 3
  %124 = load i8, ptr %123, align 4, !range !8
  %125 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %113, i32 0, i32 5
  store i8 %124, ptr %125, align 1
  %126 = load ptr, ptr %78, align 4
  %127 = tail call i32 @strlen(ptr noundef %126) #16
  %128 = load ptr, ptr %87, align 4
  %129 = tail call i32 @strlen(ptr noundef %128) #16
  %130 = add i32 %129, %127
  %131 = add i32 %130, 2
  %132 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %131, i32 noundef 3520) #14
  %133 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %113, i32 0, i32 1
  store ptr %132, ptr %133, align 8
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %115
  tail call void @kfree(ptr noundef nonnull %113) #16
  br label %177

136:                                              ; preds = %115
  %137 = load ptr, ptr %78, align 4
  %138 = load ptr, ptr %87, align 4
  %139 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %132, i32 noundef %131, ptr noundef nonnull @.str.2, ptr noundef %137, ptr noundef %138) #16
  %140 = load ptr, ptr %13, align 4
  store ptr %113, ptr %13, align 4
  store ptr %12, ptr %113, align 8
  %141 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %140, ptr %141, align 4
  store volatile ptr %113, ptr %140, align 4
  br label %142

142:                                              ; preds = %136, %101
  %143 = phi i8 [ %111, %136 ], [ %97, %101 ]
  %144 = add i8 %143, 1
  %145 = add i8 %89, 1
  %146 = zext i8 %89 to i32
  %147 = getelementptr %struct.nvkm_perfdom, ptr %35, i32 0, i32 11, i32 %68, i32 1, i32 %146
  store i8 %144, ptr %147, align 1
  %148 = getelementptr %struct.nvkm_specmux, ptr %88, i32 1
  %149 = getelementptr %struct.nvkm_specmux, ptr %88, i32 1, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %86

152:                                              ; preds = %142, %77
  %153 = phi i8 [ %80, %77 ], [ %145, %142 ]
  %154 = getelementptr %struct.nvkm_specsrc, ptr %79, i32 1
  %155 = getelementptr %struct.nvkm_specsrc, ptr %79, i32 1, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %77

158:                                              ; preds = %152, %73, %64
  %159 = getelementptr %struct.nvkm_specsig, ptr %66, i32 1
  %160 = getelementptr %struct.nvkm_specsig, ptr %66, i32 1, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %64

163:                                              ; preds = %158, %46
  %164 = add i32 %30, %5
  %165 = load i16, ptr %58, align 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %28

167:                                              ; preds = %163, %25
  %168 = shl nuw i32 1, %17
  %169 = xor i32 %168, -1
  %170 = and i32 %18, %169
  br label %171

171:                                              ; preds = %167, %21
  %172 = phi i32 [ %170, %167 ], [ %18, %21 ]
  %173 = add i32 %17, 1
  %174 = icmp eq i32 %173, 0
  %175 = icmp ne i32 %172, 0
  %176 = select i1 %174, i1 true, i1 %175
  br i1 %176, label %14, label %177

177:                                              ; preds = %171, %135, %110, %28
  %178 = phi i32 [ -12, %135 ], [ -12, %110 ], [ -12, %28 ], [ 0, %171 ]
  ret i32 %178
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_pm_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 3
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 4
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 1
  %12 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_pm, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %11) #16
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_pm_dtor(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 96
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -76
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #16
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  %14 = getelementptr i8, ptr %0, i32 104
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %23 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #16
  tail call void @kfree(ptr noundef %18) #16
  %25 = icmp eq ptr %19, %14
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %13
  %27 = getelementptr i8, ptr %0, i32 -4
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pm_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void %5(ptr noundef %3) #16
  br label %8

8:                                                ; preds = %7, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_pm_oclass_get(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %6, ptr noundef align 4 dereferenceable(20) getelementptr inbounds (%struct.nvkm_device_oclass, ptr @nvkm_pm_oclass, i32 0, i32 1), i32 20, i1 false)
  store ptr @nvkm_pm_oclass, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_pm_oclass_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 80) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %7, i32 -4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_perfmon, ptr noundef %1, ptr noundef nonnull %9) #16
  %13 = getelementptr inbounds %struct.nvkm_perfmon, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 8
  store ptr %9, ptr %4, align 4
  %14 = getelementptr i8, ptr %7, i32 88
  tail call void @_raw_spin_lock(ptr noundef %14) #16
  %15 = getelementptr i8, ptr %7, i32 92
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  store ptr %19, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi ptr [ %19, %18 ], [ %16, %11 ]
  %22 = load ptr, ptr %4, align 4
  %23 = icmp eq ptr %21, %22
  %24 = select i1 %23, i32 0, i32 -16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %25 = load i16, ptr %14, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  br label %27

27:                                               ; preds = %20, %5
  %28 = phi i32 [ %24, %20 ], [ -12, %5 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_perfmon_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_perfmon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !12
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_perfmon_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  switch i32 %1, label %429 [
    i32 0, label %5
    i32 1, label %100
    i32 2, label %251
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nvkm_perfmon, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #17
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 71
  br i1 %21, label %22, label %429

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %429

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 72
  br i1 %26, label %27, label %429

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i32 noundef %40) #17
  br label %42

42:                                               ; preds = %32, %27
  %43 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.nvkm_pm, ptr %7, i32 0, i32 3
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i8 [ 0, %42 ], [ %51, %46 ]
  %48 = phi ptr [ %45, %42 ], [ %49, %46 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %45
  %51 = add i8 %47, 1
  br i1 %50, label %52, label %46

52:                                               ; preds = %46
  %53 = zext i8 %44 to i32
  %54 = add nsw i32 %53, -1
  %55 = icmp ugt i8 %44, %47
  br i1 %55, label %429, label %56

56:                                               ; preds = %52
  %57 = icmp eq i8 %44, 0
  br i1 %57, label %96, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %45, align 4
  %60 = icmp eq ptr %59, %45
  br i1 %60, label %429, label %65

61:                                               ; preds = %65
  %62 = add nuw nsw i32 %67, 1
  %63 = load ptr, ptr %66, align 4
  %64 = icmp eq ptr %63, %45
  br i1 %64, label %429, label %65

65:                                               ; preds = %61, %58
  %66 = phi ptr [ %63, %61 ], [ %59, %58 ]
  %67 = phi i32 [ %62, %61 ], [ 0, %58 ]
  %68 = icmp eq i32 %67, %54
  br i1 %68, label %69, label %61

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %66, i32 -76
  %71 = icmp eq ptr %70, null
  br i1 %71, label %429, label %72

72:                                               ; preds = %69
  %73 = trunc i32 %54 to i8
  %74 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 1
  store i8 %73, ptr %74, align 1
  %75 = getelementptr i8, ptr %66, i32 80
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = icmp eq i16 %76, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %79, %72
  %80 = phi i32 [ %87, %79 ], [ 0, %72 ]
  %81 = phi i16 [ %86, %79 ], [ 0, %72 ]
  %82 = getelementptr %struct.nvkm_perfdom, ptr %70, i32 0, i32 11, i32 %80
  %83 = load ptr, ptr %82, align 4
  %84 = icmp ne ptr %83, null
  %85 = zext i1 %84 to i16
  %86 = add i16 %81, %85
  %87 = add nuw nsw i32 %80, 1
  %88 = icmp eq i32 %87, %77
  br i1 %88, label %89, label %79

89:                                               ; preds = %79, %72
  %90 = phi i16 [ 0, %72 ], [ %86, %79 ]
  %91 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 4
  store i16 %90, ptr %91, align 2
  %92 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 6
  %93 = getelementptr i8, ptr %66, i32 36
  %94 = tail call ptr @strncpy(ptr noundef %92, ptr noundef %93, i32 noundef 63) #16
  %95 = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %2, i32 0, i32 2
  store i8 4, ptr %95, align 2
  br label %96

96:                                               ; preds = %89, %56
  %97 = icmp ult i8 %44, %47
  %98 = add nuw i8 %44, 1
  %99 = select i1 %97, i8 %98, i8 -1
  store i8 %99, ptr %43, align 1
  br label %429

100:                                              ; preds = %4
  %101 = getelementptr inbounds %struct.nvkm_perfmon, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_pm, ptr %102, i32 0, i32 1, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %106, ptr noundef nonnull @.str.5, i1 noundef zeroext false) #16
  %108 = load ptr, ptr %105, align 4
  %109 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %108, ptr noundef nonnull @.str.6, i1 noundef zeroext %107) #16
  %110 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_client, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 8
  %114 = icmp ugt i32 %113, 4
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = getelementptr inbounds %struct.nvkm_client, ptr %111, i32 0, i32 1
  %117 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %3) #17
  br label %122

122:                                              ; preds = %115, %100
  %123 = icmp ugt i32 %3, 71
  br i1 %123, label %124, label %429

124:                                              ; preds = %122
  %125 = load i8, ptr %2, align 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %429

127:                                              ; preds = %124
  %128 = icmp eq i32 %3, 72
  br i1 %128, label %129, label %429

129:                                              ; preds = %127
  %130 = load ptr, ptr %110, align 4
  %131 = getelementptr inbounds %struct.nvkm_client, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 8
  %133 = icmp ugt i32 %132, 4
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.nvkm_client, ptr %130, i32 0, i32 1
  %136 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %137 = load i32, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 2
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %135, i32 noundef %137, i32 noundef %139, i32 noundef 0, i32 noundef %142, i32 noundef %145) #17
  br label %147

147:                                              ; preds = %134, %129
  %148 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 2
  %149 = load i16, ptr %148, align 2
  %150 = zext i16 %149 to i32
  %151 = add nsw i32 %150, -1
  %152 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds %struct.nvkm_pm, ptr %102, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %155
  br i1 %157, label %429, label %162

158:                                              ; preds = %162
  %159 = add nuw nsw i32 %164, 1
  %160 = load ptr, ptr %163, align 4
  %161 = icmp eq ptr %160, %155
  br i1 %161, label %429, label %162

162:                                              ; preds = %158, %147
  %163 = phi ptr [ %160, %158 ], [ %156, %147 ]
  %164 = phi i32 [ %159, %158 ], [ 0, %147 ]
  %165 = icmp eq i32 %164, %154
  br i1 %165, label %166, label %158

166:                                              ; preds = %162
  %167 = getelementptr i8, ptr %163, i32 -76
  %168 = icmp eq ptr %167, null
  br i1 %168, label %429, label %169

169:                                              ; preds = %166
  %170 = getelementptr i8, ptr %163, i32 80
  %171 = load i16, ptr %170, align 4
  %172 = icmp ugt i16 %149, %171
  br i1 %172, label %429, label %173

173:                                              ; preds = %169
  %174 = icmp eq i16 %149, 0
  br i1 %174, label %231, label %175

175:                                              ; preds = %173
  %176 = getelementptr %struct.nvkm_perfdom, ptr %167, i32 0, i32 11, i32 %151
  br i1 %109, label %180, label %177

177:                                              ; preds = %175
  %178 = load ptr, ptr %176, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177, %175
  %181 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 6
  %182 = getelementptr i8, ptr %163, i32 36
  %183 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %181, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %182, i32 noundef %151) #16
  br label %187

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 6
  %186 = tail call ptr @strncpy(ptr noundef %185, ptr noundef nonnull %178, i32 noundef 63) #16
  br label %187

187:                                              ; preds = %184, %180
  %188 = trunc i32 %151 to i8
  %189 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 3
  store i8 %188, ptr %189, align 2
  %190 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 0
  %191 = load i8, ptr %190, align 1
  %192 = icmp ne i8 %191, 0
  %193 = zext i1 %192 to i8
  %194 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 1
  %195 = load i8, ptr %194, align 1
  %196 = icmp ne i8 %195, 0
  %197 = zext i1 %196 to i8
  %198 = add nuw nsw i8 %197, %193
  %199 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 2
  %200 = load i8, ptr %199, align 1
  %201 = icmp ne i8 %200, 0
  %202 = zext i1 %201 to i8
  %203 = add nuw nsw i8 %198, %202
  %204 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 3
  %205 = load i8, ptr %204, align 1
  %206 = icmp ne i8 %205, 0
  %207 = zext i1 %206 to i8
  %208 = add nuw nsw i8 %203, %207
  %209 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 4
  %210 = load i8, ptr %209, align 1
  %211 = icmp ne i8 %210, 0
  %212 = zext i1 %211 to i8
  %213 = add nuw nsw i8 %208, %212
  %214 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 5
  %215 = load i8, ptr %214, align 1
  %216 = icmp ne i8 %215, 0
  %217 = zext i1 %216 to i8
  %218 = add nuw nsw i8 %213, %217
  %219 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 6
  %220 = load i8, ptr %219, align 1
  %221 = icmp ne i8 %220, 0
  %222 = zext i1 %221 to i8
  %223 = add nuw nsw i8 %218, %222
  %224 = getelementptr %struct.nvkm_perfsig, ptr %176, i32 0, i32 1, i32 7
  %225 = load i8, ptr %224, align 1
  %226 = icmp ne i8 %225, 0
  %227 = zext i1 %226 to i8
  %228 = add nuw nsw i8 %223, %227
  %229 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %2, i32 0, i32 4
  store i8 %228, ptr %229, align 1
  %230 = load i16, ptr %170, align 4
  br label %231

231:                                              ; preds = %187, %173
  %232 = phi i16 [ %230, %187 ], [ %171, %173 ]
  %233 = zext i16 %232 to i32
  %234 = tail call i32 @llvm.smax.i32(i32 %150, i32 %233) #16
  %235 = add nsw i32 %234, -1
  br label %236

236:                                              ; preds = %241, %231
  %237 = phi i32 [ %151, %231 ], [ %238, %241 ]
  %238 = add nsw i32 %237, 1
  %239 = icmp eq i32 %237, %235
  br i1 %239, label %249, label %240

240:                                              ; preds = %236
  br i1 %107, label %245, label %241

241:                                              ; preds = %240
  %242 = getelementptr %struct.nvkm_perfdom, ptr %167, i32 0, i32 11, i32 %238
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %236, label %245

245:                                              ; preds = %241, %240
  %246 = phi i32 [ %237, %241 ], [ %151, %240 ]
  %247 = trunc i32 %246 to i16
  %248 = add i16 %247, 2
  br label %249

249:                                              ; preds = %245, %236
  %250 = phi i16 [ %248, %245 ], [ -1, %236 ]
  store i16 %250, ptr %148, align 2
  br label %429

251:                                              ; preds = %4
  %252 = getelementptr inbounds %struct.nvkm_perfmon, ptr %0, i32 0, i32 1
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.nvkm_client, ptr %255, i32 0, i32 3
  %257 = load i32, ptr %256, align 8
  %258 = icmp ugt i32 %257, 4
  br i1 %258, label %259, label %266

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.nvkm_client, ptr %255, i32 0, i32 1
  %261 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %262 = load i32, ptr %261, align 8
  %263 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %264 = load i32, ptr %263, align 4
  %265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %260, i32 noundef %262, i32 noundef %264, i32 noundef %3) #17
  br label %266

266:                                              ; preds = %259, %251
  %267 = icmp ugt i32 %3, 79
  br i1 %267, label %268, label %429

268:                                              ; preds = %266
  %269 = load i8, ptr %2, align 4
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %429

271:                                              ; preds = %268
  %272 = icmp eq i32 %3, 80
  br i1 %272, label %273, label %429

273:                                              ; preds = %271
  %274 = load ptr, ptr %254, align 4
  %275 = getelementptr inbounds %struct.nvkm_client, ptr %274, i32 0, i32 3
  %276 = load i32, ptr %275, align 8
  %277 = icmp ugt i32 %276, 4
  br i1 %277, label %278, label %294

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.nvkm_client, ptr %274, i32 0, i32 1
  %280 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %281 = load i32, ptr %280, align 8
  %282 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 1
  %285 = load i8, ptr %284, align 1
  %286 = zext i8 %285 to i32
  %287 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 2
  %288 = load i8, ptr %287, align 2
  %289 = zext i8 %288 to i32
  %290 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 3
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %279, i32 noundef %281, i32 noundef %283, i32 noundef 0, i32 noundef %286, i32 noundef %289, i32 noundef %292) #17
  br label %294

294:                                              ; preds = %278, %273
  %295 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 3
  %296 = load i8, ptr %295, align 1
  %297 = zext i8 %296 to i32
  %298 = add nsw i32 %297, -1
  %299 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 1
  %300 = load i8, ptr %299, align 1
  %301 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 2
  %302 = load i8, ptr %301, align 2
  %303 = zext i8 %300 to i32
  %304 = getelementptr inbounds %struct.nvkm_pm, ptr %253, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, %304
  br i1 %306, label %429, label %311

307:                                              ; preds = %311
  %308 = add nuw nsw i32 %313, 1
  %309 = load ptr, ptr %312, align 4
  %310 = icmp eq ptr %309, %304
  br i1 %310, label %429, label %311

311:                                              ; preds = %307, %294
  %312 = phi ptr [ %309, %307 ], [ %305, %294 ]
  %313 = phi i32 [ %308, %307 ], [ 0, %294 ]
  %314 = icmp eq i32 %313, %303
  br i1 %314, label %315, label %307

315:                                              ; preds = %311
  %316 = getelementptr i8, ptr %312, i32 -76
  %317 = icmp eq ptr %316, null
  br i1 %317, label %429, label %318

318:                                              ; preds = %315
  %319 = zext i8 %302 to i32
  %320 = getelementptr %struct.nvkm_perfdom, ptr %316, i32 0, i32 11, i32 %319
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  %323 = icmp eq ptr %320, null
  %324 = or i1 %323, %322
  br i1 %324, label %429, label %325

325:                                              ; preds = %318
  %326 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 0
  %327 = load i8, ptr %326, align 1
  %328 = icmp ne i8 %327, 0
  %329 = zext i1 %328 to i8
  %330 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 1
  %331 = load i8, ptr %330, align 1
  %332 = icmp ne i8 %331, 0
  %333 = zext i1 %332 to i8
  %334 = add nuw nsw i8 %333, %329
  %335 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 2
  %336 = load i8, ptr %335, align 1
  %337 = icmp ne i8 %336, 0
  %338 = zext i1 %337 to i8
  %339 = add nuw nsw i8 %334, %338
  %340 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 3
  %341 = load i8, ptr %340, align 1
  %342 = icmp ne i8 %341, 0
  %343 = zext i1 %342 to i8
  %344 = add nuw nsw i8 %339, %343
  %345 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 4
  %346 = load i8, ptr %345, align 1
  %347 = icmp ne i8 %346, 0
  %348 = zext i1 %347 to i8
  %349 = add nuw nsw i8 %344, %348
  %350 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 5
  %351 = load i8, ptr %350, align 1
  %352 = icmp ne i8 %351, 0
  %353 = zext i1 %352 to i8
  %354 = add nuw nsw i8 %349, %353
  %355 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 6
  %356 = load i8, ptr %355, align 1
  %357 = icmp ne i8 %356, 0
  %358 = zext i1 %357 to i8
  %359 = add nuw nsw i8 %354, %358
  %360 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 7
  %361 = load i8, ptr %360, align 1
  %362 = icmp ne i8 %361, 0
  %363 = zext i1 %362 to i8
  %364 = add nuw nsw i8 %359, %363
  %365 = icmp ugt i8 %296, %364
  br i1 %365, label %429, label %366

366:                                              ; preds = %325
  %367 = icmp eq i8 %296, 0
  br i1 %367, label %425, label %368

368:                                              ; preds = %366
  %369 = getelementptr %struct.nvkm_perfsig, ptr %320, i32 0, i32 1, i32 %298
  %370 = load i8, ptr %369, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp eq i8 %327, 0
  br i1 %372, label %429, label %400

373:                                              ; preds = %400
  %374 = icmp eq i8 %331, 0
  br i1 %374, label %429, label %375

375:                                              ; preds = %373
  %376 = icmp eq i8 %331, %370
  br i1 %376, label %402, label %377

377:                                              ; preds = %375
  %378 = icmp eq i8 %336, 0
  br i1 %378, label %429, label %379

379:                                              ; preds = %377
  %380 = icmp eq i8 %336, %370
  br i1 %380, label %402, label %381

381:                                              ; preds = %379
  %382 = icmp eq i8 %341, 0
  br i1 %382, label %429, label %383

383:                                              ; preds = %381
  %384 = icmp eq i8 %341, %370
  br i1 %384, label %402, label %385

385:                                              ; preds = %383
  %386 = icmp eq i8 %346, 0
  br i1 %386, label %429, label %387

387:                                              ; preds = %385
  %388 = icmp eq i8 %346, %370
  br i1 %388, label %402, label %389

389:                                              ; preds = %387
  %390 = icmp eq i8 %351, 0
  br i1 %390, label %429, label %391

391:                                              ; preds = %389
  %392 = icmp eq i8 %351, %370
  br i1 %392, label %402, label %393

393:                                              ; preds = %391
  %394 = icmp eq i8 %356, 0
  br i1 %394, label %429, label %395

395:                                              ; preds = %393
  %396 = icmp eq i8 %356, %370
  %397 = icmp eq i8 %361, %370
  %398 = and i1 %362, %397
  %399 = select i1 %396, i1 true, i1 %398
  br i1 %399, label %402, label %429

400:                                              ; preds = %368
  %401 = icmp eq i8 %327, %370
  br i1 %401, label %402, label %373

402:                                              ; preds = %400, %395, %391, %387, %383, %379, %375
  %403 = getelementptr inbounds %struct.nvkm_pm, ptr %253, i32 0, i32 4
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, %403
  br i1 %405, label %429, label %410

406:                                              ; preds = %410
  %407 = add i32 %412, 1
  %408 = load ptr, ptr %411, align 4
  %409 = icmp eq ptr %408, %403
  br i1 %409, label %429, label %410

410:                                              ; preds = %406, %402
  %411 = phi ptr [ %408, %406 ], [ %404, %402 ]
  %412 = phi i32 [ %407, %406 ], [ 1, %402 ]
  %413 = icmp eq i32 %412, %371
  br i1 %413, label %414, label %406

414:                                              ; preds = %410
  %415 = icmp eq ptr %411, null
  br i1 %415, label %429, label %416

416:                                              ; preds = %414
  %417 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 5
  store i32 %371, ptr %417, align 4
  %418 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %411, i32 0, i32 3
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 6
  store i32 %419, ptr %420, align 4
  %421 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %2, i32 0, i32 7
  %422 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %411, i32 0, i32 1
  %423 = load ptr, ptr %422, align 4
  %424 = tail call ptr @strncpy(ptr noundef %421, ptr noundef %423, i32 noundef 63) #16
  br label %425

425:                                              ; preds = %416, %366
  %426 = icmp ult i8 %296, %364
  %427 = add nuw i8 %296, 1
  %428 = select i1 %426, i8 %427, i8 -1
  store i8 %428, ptr %295, align 1
  br label %429

429:                                              ; preds = %425, %414, %406, %402, %395, %393, %389, %385, %381, %377, %373, %368, %325, %318, %315, %307, %294, %271, %268, %266, %249, %169, %166, %158, %147, %127, %124, %122, %96, %69, %61, %58, %52, %25, %22, %20, %4
  %430 = phi i32 [ -22, %4 ], [ -22, %52 ], [ -22, %69 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ], [ -22, %58 ], [ 0, %96 ], [ -22, %169 ], [ -22, %166 ], [ -38, %122 ], [ -38, %124 ], [ -7, %127 ], [ -22, %147 ], [ 0, %249 ], [ -22, %325 ], [ -22, %414 ], [ -38, %266 ], [ -38, %268 ], [ -7, %271 ], [ -22, %315 ], [ -22, %294 ], [ -22, %318 ], [ -22, %402 ], [ -22, %393 ], [ -22, %389 ], [ -22, %385 ], [ -22, %381 ], [ -22, %377 ], [ -22, %373 ], [ -22, %368 ], [ -22, %395 ], [ 0, %425 ], [ -22, %61 ], [ -22, %158 ], [ -22, %406 ], [ -22, %307 ]
  ret i32 %430
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_perfmon_child_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 2
  store i32 -3, ptr %7, align 4
  store i32 0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 1
  store i32 0, ptr %8, align 4
  store ptr @nvkm_perfmon_child_new, ptr %2, align 8
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_perfmon_child_new(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [4 x ptr], align 4
  %6 = alloca [4 x ptr], align 4
  %7 = alloca [4 x [8 x i64]], align 8
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_perfmon, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #16
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %2) #17
  br label %24

24:                                               ; preds = %17, %4
  %25 = icmp ugt i32 %2, 1095
  br i1 %25, label %26, label %264

26:                                               ; preds = %24
  %27 = load i8, ptr %1, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %264

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 1096
  br i1 %30, label %31, label %264

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, i32 noundef %44, i32 noundef %47) #17
  br label %49

49:                                               ; preds = %36, %31
  %50 = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 1
  %51 = getelementptr inbounds %struct.nvkm_pm, ptr %11, i32 0, i32 3
  %52 = getelementptr inbounds %struct.nvkm_pm, ptr %11, i32 0, i32 4
  %53 = getelementptr inbounds ptr, ptr %6, i32 1
  %54 = getelementptr inbounds i8, ptr %7, i32 64
  %55 = getelementptr inbounds ptr, ptr %6, i32 2
  %56 = getelementptr inbounds i8, ptr %7, i32 128
  %57 = getelementptr inbounds ptr, ptr %6, i32 3
  %58 = getelementptr inbounds i8, ptr %7, i32 192
  br label %59

59:                                               ; preds = %241, %49
  %60 = phi i32 [ 0, %49 ], [ %246, %241 ]
  %61 = phi ptr [ null, %49 ], [ %93, %241 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(256) %7, i8 0, i32 256, i1 false) #16
  %62 = getelementptr %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 4, i32 %60
  br label %63

63:                                               ; preds = %179, %59
  %64 = phi i32 [ 0, %59 ], [ %180, %179 ]
  %65 = phi ptr [ %61, %59 ], [ %93, %179 ]
  %66 = getelementptr [4 x i8], ptr %62, i32 0, i32 %64
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq ptr %65, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8, ptr %50, align 1
  %71 = zext i8 %70 to i32
  %72 = load ptr, ptr %51, align 4
  %73 = icmp eq ptr %72, %51
  br i1 %73, label %92, label %78

74:                                               ; preds = %78
  %75 = add nuw nsw i32 %80, 1
  %76 = load ptr, ptr %79, align 4
  %77 = icmp eq ptr %76, %51
  br i1 %77, label %92, label %78

78:                                               ; preds = %74, %69
  %79 = phi ptr [ %76, %74 ], [ %72, %69 ]
  %80 = phi i32 [ %75, %74 ], [ 0, %69 ]
  %81 = icmp eq i32 %80, %71
  br i1 %81, label %82, label %74

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %79, i32 -76
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %63
  %86 = phi ptr [ %65, %63 ], [ %83, %82 ]
  %87 = zext i8 %67 to i32
  %88 = getelementptr %struct.nvkm_perfdom, ptr %86, i32 0, i32 11, i32 %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr null, ptr %88
  br label %92

92:                                               ; preds = %85, %82, %74, %69
  %93 = phi ptr [ null, %69 ], [ null, %82 ], [ %86, %85 ], [ null, %74 ]
  %94 = phi ptr [ null, %69 ], [ null, %82 ], [ %91, %85 ], [ null, %74 ]
  %95 = getelementptr [4 x ptr], ptr %6, i32 0, i32 %64
  store ptr %94, ptr %95, align 4
  %96 = icmp ne i8 %67, 0
  %97 = icmp eq ptr %94, null
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %238, label %99

99:                                               ; preds = %92
  %100 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 0
  %101 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 1
  %102 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 2
  %103 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 3
  %104 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 4
  %105 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 5
  %106 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 6
  %107 = getelementptr %struct.nvkm_perfsig, ptr %94, i32 0, i32 1, i32 7
  br label %108

108:                                              ; preds = %176, %99
  %109 = phi i32 [ 0, %99 ], [ %177, %176 ]
  %110 = getelementptr %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 4, i32 %60, i32 1, i32 %64, i32 %109
  %111 = load i64, ptr %110, align 8
  %112 = getelementptr [4 x [8 x i64]], ptr %7, i32 0, i32 %64, i32 %109
  store i64 %111, ptr %112, align 8
  %113 = icmp eq i64 %111, 0
  br i1 %113, label %176, label %114

114:                                              ; preds = %108
  %115 = trunc i64 %111 to i32
  %116 = load i8, ptr %100, align 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %238, label %160

118:                                              ; preds = %160
  %119 = load i8, ptr %101, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %238, label %121

121:                                              ; preds = %118
  %122 = zext i8 %119 to i32
  %123 = icmp eq i32 %122, %115
  br i1 %123, label %163, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %102, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %238, label %127

127:                                              ; preds = %124
  %128 = zext i8 %125 to i32
  %129 = icmp eq i32 %128, %115
  br i1 %129, label %163, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %103, align 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %238, label %133

133:                                              ; preds = %130
  %134 = zext i8 %131 to i32
  %135 = icmp eq i32 %134, %115
  br i1 %135, label %163, label %136

136:                                              ; preds = %133
  %137 = load i8, ptr %104, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %238, label %139

139:                                              ; preds = %136
  %140 = zext i8 %137 to i32
  %141 = icmp eq i32 %140, %115
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = load i8, ptr %105, align 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %238, label %145

145:                                              ; preds = %142
  %146 = zext i8 %143 to i32
  %147 = icmp eq i32 %146, %115
  br i1 %147, label %163, label %148

148:                                              ; preds = %145
  %149 = load i8, ptr %106, align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %238, label %151

151:                                              ; preds = %148
  %152 = zext i8 %149 to i32
  %153 = icmp eq i32 %152, %115
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load i8, ptr %107, align 1
  %156 = icmp ne i8 %155, 0
  %157 = zext i8 %155 to i32
  %158 = icmp eq i32 %157, %115
  %159 = and i1 %156, %158
  br i1 %159, label %163, label %238

160:                                              ; preds = %114
  %161 = zext i8 %116 to i32
  %162 = icmp eq i32 %161, %115
  br i1 %162, label %163, label %118

163:                                              ; preds = %160, %154, %151, %145, %139, %133, %127, %121
  %164 = load ptr, ptr %52, align 4
  %165 = icmp eq ptr %164, %52
  br i1 %165, label %238, label %170

166:                                              ; preds = %170
  %167 = add i32 %172, 1
  %168 = load ptr, ptr %171, align 4
  %169 = icmp eq ptr %168, %52
  br i1 %169, label %238, label %170

170:                                              ; preds = %166, %163
  %171 = phi ptr [ %168, %166 ], [ %164, %163 ]
  %172 = phi i32 [ %167, %166 ], [ 1, %163 ]
  %173 = icmp eq i32 %172, %115
  br i1 %173, label %174, label %166

174:                                              ; preds = %170
  %175 = icmp eq ptr %171, null
  br i1 %175, label %238, label %176

176:                                              ; preds = %174, %108
  %177 = add nuw nsw i32 %109, 1
  %178 = icmp eq i32 %177, 8
  br i1 %178, label %179, label %108

179:                                              ; preds = %176
  %180 = add nuw nsw i32 %64, 1
  %181 = icmp eq i32 %180, 4
  br i1 %181, label %182, label %63

182:                                              ; preds = %179
  %183 = load i8, ptr %50, align 1
  %184 = getelementptr %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 4, i32 %60, i32 2
  %185 = load i16, ptr %184, align 8
  %186 = icmp eq ptr %93, null
  br i1 %186, label %239, label %187

187:                                              ; preds = %182
  %188 = getelementptr [4 x ptr], ptr %5, i32 0, i32 %60
  %189 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %190 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 3520, i32 noundef 288) #15
  store ptr %190, ptr %188, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %239, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.nvkm_perfctr, ptr %190, i32 0, i32 1
  store i8 %183, ptr %193, align 8
  %194 = zext i16 %185 to i32
  %195 = getelementptr inbounds %struct.nvkm_perfctr, ptr %190, i32 0, i32 5
  store i32 %194, ptr %195, align 4
  %196 = getelementptr inbounds %struct.nvkm_perfctr, ptr %190, i32 0, i32 4
  store i32 %60, ptr %196, align 8
  %197 = getelementptr inbounds %struct.nvkm_perfdom, ptr %93, i32 0, i32 11
  %198 = ptrtoint ptr %197 to i32
  %199 = load ptr, ptr %6, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %192
  %202 = getelementptr i8, ptr %190, i32 16
  %203 = ptrtoint ptr %199 to i32
  %204 = sub i32 %203, %198
  %205 = sdiv exact i32 %204, 12
  %206 = trunc i32 %205 to i8
  %207 = getelementptr %struct.nvkm_perfctr, ptr %190, i32 0, i32 2, i32 0
  store i8 %206, ptr %207, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %202, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 64, i1 false) #16
  br label %208

208:                                              ; preds = %201, %192
  %209 = load ptr, ptr %53, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %218, label %211

211:                                              ; preds = %208
  %212 = getelementptr i8, ptr %190, i32 80
  %213 = ptrtoint ptr %209 to i32
  %214 = sub i32 %213, %198
  %215 = sdiv exact i32 %214, 12
  %216 = trunc i32 %215 to i8
  %217 = getelementptr %struct.nvkm_perfctr, ptr %190, i32 0, i32 2, i32 1
  store i8 %216, ptr %217, align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %212, ptr noundef align 8 dereferenceable(64) %54, i32 64, i1 false) #16
  br label %218

218:                                              ; preds = %211, %208
  %219 = load ptr, ptr %55, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = getelementptr i8, ptr %190, i32 144
  %223 = ptrtoint ptr %219 to i32
  %224 = sub i32 %223, %198
  %225 = sdiv exact i32 %224, 12
  %226 = trunc i32 %225 to i8
  %227 = getelementptr %struct.nvkm_perfctr, ptr %190, i32 0, i32 2, i32 2
  store i8 %226, ptr %227, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %222, ptr noundef align 8 dereferenceable(64) %56, i32 64, i1 false) #16
  br label %228

228:                                              ; preds = %221, %218
  %229 = load ptr, ptr %57, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %241, label %231

231:                                              ; preds = %228
  %232 = getelementptr i8, ptr %190, i32 208
  %233 = ptrtoint ptr %229 to i32
  %234 = sub i32 %233, %198
  %235 = sdiv exact i32 %234, 12
  %236 = trunc i32 %235 to i8
  %237 = getelementptr %struct.nvkm_perfctr, ptr %190, i32 0, i32 2, i32 3
  store i8 %236, ptr %237, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %232, ptr noundef align 8 dereferenceable(64) %58, i32 64, i1 false) #16
  br label %241

238:                                              ; preds = %174, %166, %163, %154, %148, %142, %136, %130, %124, %118, %114, %92
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %264

239:                                              ; preds = %187, %182
  %240 = phi i32 [ -12, %187 ], [ -22, %182 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %264

241:                                              ; preds = %231, %228
  %242 = getelementptr inbounds %struct.nvkm_perfdom, ptr %93, i32 0, i32 3
  %243 = getelementptr inbounds %struct.nvkm_perfdom, ptr %93, i32 0, i32 3, i32 1
  %244 = load ptr, ptr %243, align 4
  store ptr %190, ptr %243, align 4
  store ptr %242, ptr %190, align 8
  %245 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  store ptr %244, ptr %245, align 4
  store volatile ptr %190, ptr %244, align 4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  %246 = add nuw nsw i32 %60, 1
  %247 = icmp eq i32 %246, 4
  br i1 %247, label %248, label %59

248:                                              ; preds = %241
  %249 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %250 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %249, i32 noundef 3520, i32 noundef 160) #15
  %251 = icmp eq ptr %250, null
  br i1 %251, label %264, label %252

252:                                              ; preds = %248
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_perfdom, ptr noundef %0, ptr noundef nonnull %250) #16
  %253 = getelementptr inbounds %struct.nvkm_perfdom, ptr %250, i32 0, i32 1
  store ptr %9, ptr %253, align 8
  store ptr %250, ptr %3, align 4
  %254 = getelementptr inbounds %struct.nvkm_perfdom, ptr %93, i32 0, i32 4
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.nvkm_perfdom, ptr %250, i32 0, i32 4
  store ptr %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.nvkm_perfdom, ptr %93, i32 0, i32 7
  %258 = load i32, ptr %257, align 8
  %259 = getelementptr inbounds %struct.nvkm_perfdom, ptr %250, i32 0, i32 7
  store i32 %258, ptr %259, align 8
  %260 = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %1, i32 0, i32 2
  %261 = load i8, ptr %260, align 2
  %262 = getelementptr inbounds %struct.nvkm_perfdom, ptr %250, i32 0, i32 8
  store i8 %261, ptr %262, align 4
  %263 = getelementptr i8, ptr %250, i32 96
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %263, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #16
  br label %264

264:                                              ; preds = %252, %248, %239, %238, %29, %26, %24
  %265 = phi i32 [ -12, %248 ], [ -22, %238 ], [ %240, %239 ], [ -38, %24 ], [ -38, %26 ], [ -7, %29 ], [ 0, %252 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %265
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_perfdom_dtor(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_perfmon, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_pm, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = getelementptr inbounds %struct.nvkm_pm, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.nvkm_pm, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.nvkm_pm, ptr %5, i32 0, i32 1, i32 1, i32 5
  %10 = getelementptr inbounds %struct.nvkm_pm, ptr %5, i32 0, i32 1, i32 1, i32 4
  br label %11

11:                                               ; preds = %169, %1
  %12 = phi i32 [ 0, %1 ], [ %170, %169 ]
  %13 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.nvkm_perfctr, ptr %14, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  br label %20

20:                                               ; preds = %158, %16
  %21 = phi i32 [ 0, %16 ], [ %160, %158 ]
  %22 = phi ptr [ null, %16 ], [ %159, %158 ]
  %23 = getelementptr %struct.nvkm_perfctr, ptr %14, i32 0, i32 2, i32 %21
  br label %24

24:                                               ; preds = %155, %20
  %25 = phi i32 [ 0, %20 ], [ %156, %155 ]
  %26 = phi ptr [ %22, %20 ], [ %50, %155 ]
  %27 = getelementptr %struct.nvkm_perfctr, ptr %14, i32 0, i32 3, i32 %21, i32 %25
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %158, label %30

30:                                               ; preds = %24
  %31 = load i8, ptr %23, align 1
  %32 = icmp eq ptr %26, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i8, ptr %18, align 8
  %35 = zext i8 %34 to i32
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %162, label %42

38:                                               ; preds = %42
  %39 = add nuw nsw i32 %44, 1
  %40 = load ptr, ptr %43, align 4
  %41 = icmp eq ptr %40, %7
  br i1 %41, label %162, label %42

42:                                               ; preds = %38, %33
  %43 = phi ptr [ %40, %38 ], [ %36, %33 ]
  %44 = phi i32 [ %39, %38 ], [ 0, %33 ]
  %45 = icmp eq i32 %44, %35
  br i1 %45, label %46, label %38

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %43, i32 -76
  %48 = icmp eq ptr %47, null
  br i1 %48, label %162, label %49

49:                                               ; preds = %46, %30
  %50 = phi ptr [ %26, %30 ], [ %47, %46 ]
  %51 = zext i8 %31 to i32
  %52 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %52, null
  %56 = or i1 %54, %55
  br i1 %56, label %162, label %57

57:                                               ; preds = %49
  %58 = trunc i64 %28 to i32
  %59 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 0
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %162, label %111

62:                                               ; preds = %111
  %63 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %162, label %66

66:                                               ; preds = %62
  %67 = zext i8 %64 to i32
  %68 = icmp eq i32 %67, %58
  br i1 %68, label %114, label %69

69:                                               ; preds = %66
  %70 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %162, label %73

73:                                               ; preds = %69
  %74 = zext i8 %71 to i32
  %75 = icmp eq i32 %74, %58
  br i1 %75, label %114, label %76

76:                                               ; preds = %73
  %77 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %162, label %80

80:                                               ; preds = %76
  %81 = zext i8 %78 to i32
  %82 = icmp eq i32 %81, %58
  br i1 %82, label %114, label %83

83:                                               ; preds = %80
  %84 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 4
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %162, label %87

87:                                               ; preds = %83
  %88 = zext i8 %85 to i32
  %89 = icmp eq i32 %88, %58
  br i1 %89, label %114, label %90

90:                                               ; preds = %87
  %91 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 5
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %162, label %94

94:                                               ; preds = %90
  %95 = zext i8 %92 to i32
  %96 = icmp eq i32 %95, %58
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 6
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %162, label %101

101:                                              ; preds = %97
  %102 = zext i8 %99 to i32
  %103 = icmp eq i32 %102, %58
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = getelementptr %struct.nvkm_perfdom, ptr %50, i32 0, i32 11, i32 %51, i32 1, i32 7
  %106 = load i8, ptr %105, align 1
  %107 = icmp ne i8 %106, 0
  %108 = zext i8 %106 to i32
  %109 = icmp eq i32 %108, %58
  %110 = and i1 %107, %109
  br i1 %110, label %114, label %162

111:                                              ; preds = %57
  %112 = zext i8 %60 to i32
  %113 = icmp eq i32 %112, %58
  br i1 %113, label %114, label %62

114:                                              ; preds = %111, %104, %101, %94, %87, %80, %73, %66
  %115 = load ptr, ptr %8, align 4
  %116 = icmp eq ptr %115, %8
  br i1 %116, label %162, label %121

117:                                              ; preds = %121
  %118 = add i32 %123, 1
  %119 = load ptr, ptr %122, align 4
  %120 = icmp eq ptr %119, %8
  br i1 %120, label %162, label %121

121:                                              ; preds = %117, %114
  %122 = phi ptr [ %119, %117 ], [ %115, %114 ]
  %123 = phi i32 [ %118, %117 ], [ 1, %114 ]
  %124 = icmp eq i32 %123, %58
  br i1 %124, label %125, label %117

125:                                              ; preds = %121
  %126 = icmp eq ptr %122, null
  br i1 %126, label %162, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %122, i32 0, i32 5
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 0, i32 -2147483648
  %132 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %122, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %122, i32 0, i32 4
  %135 = load i8, ptr %134, align 4
  %136 = zext i8 %135 to i32
  %137 = shl i32 %133, %136
  %138 = or i32 %137, %131
  %139 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %122, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %19, align 4
  %142 = getelementptr i8, ptr %141, i32 %140
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #16, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !14
  %144 = xor i32 %138, -1
  %145 = and i32 %143, %144
  %146 = load ptr, ptr %19, align 4
  %147 = getelementptr i8, ptr %146, i32 %140
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !15
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #16, !srcloc !16
  %148 = load i32, ptr %9, align 4
  %149 = icmp ugt i32 %148, 3
  br i1 %149, label %150, label %155

150:                                              ; preds = %127
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  %154 = load i32, ptr %139, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %153, ptr noundef nonnull @.str.14, ptr noundef %10, i32 noundef %154, i32 noundef %138) #17
  br label %155

155:                                              ; preds = %150, %127
  %156 = add nuw nsw i32 %25, 1
  %157 = icmp eq i32 %156, 8
  br i1 %157, label %158, label %24

158:                                              ; preds = %155, %24
  %159 = phi ptr [ %26, %24 ], [ %50, %155 ]
  %160 = add nuw nsw i32 %21, 1
  %161 = icmp eq i32 %160, 4
  br i1 %161, label %162, label %20

162:                                              ; preds = %158, %125, %117, %114, %104, %97, %90, %83, %76, %69, %62, %57, %49, %46, %38, %33
  %163 = load ptr, ptr %14, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  store ptr %167, ptr %168, align 4
  store volatile ptr %163, ptr %167, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %166, align 4
  br label %169

169:                                              ; preds = %165, %162, %11
  tail call void @kfree(ptr noundef %14) #16
  %170 = add nuw nsw i32 %12, 1
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %172, label %11

172:                                              ; preds = %169
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_perfdom_mthd(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  switch i32 %1, label %361 [
    i32 0, label %5
    i32 1, label %210
    i32 2, label %257
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_perfmon, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %3) #17
  br label %22

22:                                               ; preds = %15, %5
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %24, label %361

24:                                               ; preds = %22
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %30, i32 noundef %32, i32 noundef %34) #17
  br label %36

36:                                               ; preds = %29, %24
  %37 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 4
  %38 = getelementptr inbounds %struct.nvkm_pm, ptr %9, i32 0, i32 1, i32 1, i32 1
  %39 = getelementptr inbounds %struct.nvkm_pm, ptr %9, i32 0, i32 3
  %40 = getelementptr inbounds %struct.nvkm_pm, ptr %9, i32 0, i32 4
  %41 = getelementptr inbounds %struct.nvkm_pm, ptr %9, i32 0, i32 1, i32 1, i32 5
  %42 = getelementptr inbounds %struct.nvkm_pm, ptr %9, i32 0, i32 1, i32 1, i32 4
  br label %43

43:                                               ; preds = %203, %36
  %44 = phi i32 [ 0, %36 ], [ %204, %203 ]
  %45 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %203, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %37, align 4
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %46) #16
  %51 = load ptr, ptr %45, align 4
  %52 = load ptr, ptr %38, align 4
  %53 = getelementptr inbounds %struct.nvkm_perfctr, ptr %51, i32 0, i32 1
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 11
  br label %55

55:                                               ; preds = %199, %48
  %56 = phi i32 [ 0, %48 ], [ %201, %199 ]
  %57 = phi ptr [ null, %48 ], [ %200, %199 ]
  %58 = getelementptr %struct.nvkm_perfctr, ptr %51, i32 0, i32 2, i32 %56
  br label %59

59:                                               ; preds = %196, %55
  %60 = phi i32 [ 0, %55 ], [ %197, %196 ]
  %61 = phi ptr [ %57, %55 ], [ %85, %196 ]
  %62 = getelementptr %struct.nvkm_perfctr, ptr %51, i32 0, i32 3, i32 %56, i32 %60
  %63 = load i64, ptr %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %199, label %65

65:                                               ; preds = %59
  %66 = load i8, ptr %58, align 1
  %67 = icmp eq ptr %61, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i8, ptr %53, align 8
  %70 = zext i8 %69 to i32
  %71 = load ptr, ptr %39, align 4
  %72 = icmp eq ptr %71, %39
  br i1 %72, label %203, label %77

73:                                               ; preds = %77
  %74 = add nuw nsw i32 %79, 1
  %75 = load ptr, ptr %78, align 4
  %76 = icmp eq ptr %75, %39
  br i1 %76, label %203, label %77

77:                                               ; preds = %73, %68
  %78 = phi ptr [ %75, %73 ], [ %71, %68 ]
  %79 = phi i32 [ %74, %73 ], [ 0, %68 ]
  %80 = icmp eq i32 %79, %70
  br i1 %80, label %81, label %73

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %78, i32 -76
  %83 = icmp eq ptr %82, null
  br i1 %83, label %203, label %84

84:                                               ; preds = %81, %65
  %85 = phi ptr [ %61, %65 ], [ %82, %81 ]
  %86 = zext i8 %66 to i32
  %87 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = icmp eq ptr %87, null
  %91 = or i1 %89, %90
  br i1 %91, label %203, label %92

92:                                               ; preds = %84
  %93 = trunc i64 %63 to i32
  %94 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 0
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %203, label %146

97:                                               ; preds = %146
  %98 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %203, label %101

101:                                              ; preds = %97
  %102 = zext i8 %99 to i32
  %103 = icmp eq i32 %102, %93
  br i1 %103, label %149, label %104

104:                                              ; preds = %101
  %105 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %203, label %108

108:                                              ; preds = %104
  %109 = zext i8 %106 to i32
  %110 = icmp eq i32 %109, %93
  br i1 %110, label %149, label %111

111:                                              ; preds = %108
  %112 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 3
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %203, label %115

115:                                              ; preds = %111
  %116 = zext i8 %113 to i32
  %117 = icmp eq i32 %116, %93
  br i1 %117, label %149, label %118

118:                                              ; preds = %115
  %119 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 4
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %203, label %122

122:                                              ; preds = %118
  %123 = zext i8 %120 to i32
  %124 = icmp eq i32 %123, %93
  br i1 %124, label %149, label %125

125:                                              ; preds = %122
  %126 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 5
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %203, label %129

129:                                              ; preds = %125
  %130 = zext i8 %127 to i32
  %131 = icmp eq i32 %130, %93
  br i1 %131, label %149, label %132

132:                                              ; preds = %129
  %133 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 6
  %134 = load i8, ptr %133, align 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %203, label %136

136:                                              ; preds = %132
  %137 = zext i8 %134 to i32
  %138 = icmp eq i32 %137, %93
  br i1 %138, label %149, label %139

139:                                              ; preds = %136
  %140 = getelementptr %struct.nvkm_perfdom, ptr %85, i32 0, i32 11, i32 %86, i32 1, i32 7
  %141 = load i8, ptr %140, align 1
  %142 = icmp ne i8 %141, 0
  %143 = zext i8 %141 to i32
  %144 = icmp eq i32 %143, %93
  %145 = and i1 %142, %144
  br i1 %145, label %149, label %203

146:                                              ; preds = %92
  %147 = zext i8 %95 to i32
  %148 = icmp eq i32 %147, %93
  br i1 %148, label %149, label %97

149:                                              ; preds = %146, %139, %136, %129, %122, %115, %108, %101
  %150 = load ptr, ptr %40, align 4
  %151 = icmp eq ptr %150, %40
  br i1 %151, label %203, label %156

152:                                              ; preds = %156
  %153 = add i32 %158, 1
  %154 = load ptr, ptr %157, align 4
  %155 = icmp eq ptr %154, %40
  br i1 %155, label %203, label %156

156:                                              ; preds = %152, %149
  %157 = phi ptr [ %154, %152 ], [ %150, %149 ]
  %158 = phi i32 [ %153, %152 ], [ 1, %149 ]
  %159 = icmp eq i32 %158, %93
  br i1 %159, label %160, label %152

160:                                              ; preds = %156
  %161 = icmp eq ptr %157, null
  br i1 %161, label %203, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %157, i32 0, i32 5
  %164 = load i8, ptr %163, align 1, !range !8
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, i32 0, i32 -2147483648
  %167 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %157, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %157, i32 0, i32 4
  %170 = load i8, ptr %169, align 4
  %171 = zext i8 %170 to i32
  %172 = shl i32 %168, %171
  %173 = or i32 %172, %166
  %174 = lshr i64 %63, 32
  %175 = zext i8 %170 to i64
  %176 = shl i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = or i32 %166, %177
  %179 = getelementptr inbounds %struct.nvkm_perfsrc, ptr %157, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr %54, align 4
  %182 = getelementptr i8, ptr %181, i32 %180
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #16, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !14
  %184 = xor i32 %173, -1
  %185 = and i32 %183, %184
  %186 = or i32 %185, %178
  %187 = load ptr, ptr %54, align 4
  %188 = getelementptr i8, ptr %187, i32 %180
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !15
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #16, !srcloc !16
  %189 = load i32, ptr %41, align 4
  %190 = icmp ugt i32 %189, 3
  br i1 %190, label %191, label %196

191:                                              ; preds = %162
  %192 = load ptr, ptr %38, align 4
  %193 = getelementptr inbounds %struct.nvkm_device, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8
  %195 = load i32, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %194, ptr noundef nonnull @.str.17, ptr noundef %42, i32 noundef %195, i32 noundef %173, i32 noundef %178) #17
  br label %196

196:                                              ; preds = %191, %162
  %197 = add nuw nsw i32 %60, 1
  %198 = icmp eq i32 %197, 8
  br i1 %198, label %199, label %59

199:                                              ; preds = %196, %59
  %200 = phi ptr [ %61, %59 ], [ %85, %196 ]
  %201 = add nuw nsw i32 %56, 1
  %202 = icmp eq i32 %201, 4
  br i1 %202, label %203, label %55

203:                                              ; preds = %199, %160, %152, %149, %139, %132, %125, %118, %111, %104, %97, %92, %84, %81, %73, %68, %43
  %204 = add nuw nsw i32 %44, 1
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %206, label %43

206:                                              ; preds = %203
  %207 = load ptr, ptr %37, align 4
  %208 = getelementptr inbounds %struct.nvkm_funcdom, ptr %207, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  tail call void %209(ptr noundef %9, ptr noundef %0) #16
  br label %361

210:                                              ; preds = %4
  %211 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 1
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.nvkm_perfmon, ptr %212, i32 0, i32 1
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.nvkm_client, ptr %216, i32 0, i32 3
  %218 = load i32, ptr %217, align 8
  %219 = icmp ugt i32 %218, 4
  br i1 %219, label %220, label %227

220:                                              ; preds = %210
  %221 = getelementptr inbounds %struct.nvkm_client, ptr %216, i32 0, i32 1
  %222 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %223 = load i32, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %225 = load i32, ptr %224, align 4
  %226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %221, i32 noundef %223, i32 noundef %225, i32 noundef %3) #17
  br label %227

227:                                              ; preds = %220, %210
  %228 = icmp eq i32 %3, 0
  br i1 %228, label %229, label %361

229:                                              ; preds = %227
  %230 = load ptr, ptr %215, align 4
  %231 = getelementptr inbounds %struct.nvkm_client, ptr %230, i32 0, i32 3
  %232 = load i32, ptr %231, align 8
  %233 = icmp ugt i32 %232, 4
  br i1 %233, label %234, label %241

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.nvkm_client, ptr %230, i32 0, i32 1
  %236 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %237 = load i32, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %239 = load i32, ptr %238, align 4
  %240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %235, i32 noundef %237, i32 noundef %239) #17
  br label %241

241:                                              ; preds = %234, %229
  %242 = getelementptr inbounds %struct.nvkm_pm, ptr %214, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, 1
  store i32 %244, ptr %242, align 4
  %245 = getelementptr inbounds %struct.nvkm_pm, ptr %214, i32 0, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, %245
  br i1 %247, label %361, label %248

248:                                              ; preds = %248, %241
  %249 = phi ptr [ %255, %248 ], [ %246, %241 ]
  %250 = getelementptr i8, ptr %249, i32 -76
  %251 = getelementptr i8, ptr %249, i32 16
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.nvkm_funcdom, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  tail call void %254(ptr noundef %214, ptr noundef %250) #16
  %255 = load ptr, ptr %249, align 4
  %256 = icmp eq ptr %255, %245
  br i1 %256, label %361, label %248

257:                                              ; preds = %4
  %258 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 1
  %259 = load ptr, ptr %258, align 8
  %260 = getelementptr inbounds %struct.nvkm_perfmon, ptr %259, i32 0, i32 1
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.nvkm_client, ptr %263, i32 0, i32 3
  %265 = load i32, ptr %264, align 8
  %266 = icmp ugt i32 %265, 4
  br i1 %266, label %267, label %274

267:                                              ; preds = %257
  %268 = getelementptr inbounds %struct.nvkm_client, ptr %263, i32 0, i32 1
  %269 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %270 = load i32, ptr %269, align 8
  %271 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %272 = load i32, ptr %271, align 4
  %273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %268, i32 noundef %270, i32 noundef %272, i32 noundef %3) #17
  br label %274

274:                                              ; preds = %267, %257
  %275 = icmp ugt i32 %3, 31
  br i1 %275, label %276, label %361

276:                                              ; preds = %274
  %277 = load i8, ptr %2, align 4
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %361

279:                                              ; preds = %276
  %280 = icmp eq i32 %3, 32
  br i1 %280, label %281, label %361

281:                                              ; preds = %279
  %282 = load ptr, ptr %262, align 4
  %283 = getelementptr inbounds %struct.nvkm_client, ptr %282, i32 0, i32 3
  %284 = load i32, ptr %283, align 8
  %285 = icmp ugt i32 %284, 4
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.nvkm_client, ptr %282, i32 0, i32 1
  %288 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %289 = load i32, ptr %288, align 8
  %290 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %291 = load i32, ptr %290, align 4
  %292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %287, i32 noundef %289, i32 noundef %291, i32 noundef 0) #17
  br label %293

293:                                              ; preds = %286, %281
  %294 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 4
  %295 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 0
  %296 = load ptr, ptr %295, align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %302, label %298

298:                                              ; preds = %293
  %299 = load ptr, ptr %294, align 4
  %300 = getelementptr inbounds %struct.nvkm_funcdom, ptr %299, i32 0, i32 1
  %301 = load ptr, ptr %300, align 4
  tail call void %301(ptr noundef %261, ptr noundef %0, ptr noundef nonnull %296) #16
  br label %302

302:                                              ; preds = %298, %293
  %303 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %294, align 4
  %308 = getelementptr inbounds %struct.nvkm_funcdom, ptr %307, i32 0, i32 1
  %309 = load ptr, ptr %308, align 4
  tail call void %309(ptr noundef %261, ptr noundef %0, ptr noundef nonnull %304) #16
  br label %310

310:                                              ; preds = %306, %302
  %311 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 2
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %294, align 4
  %316 = getelementptr inbounds %struct.nvkm_funcdom, ptr %315, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  tail call void %317(ptr noundef %261, ptr noundef %0, ptr noundef nonnull %312) #16
  br label %318

318:                                              ; preds = %314, %310
  %319 = getelementptr %struct.nvkm_perfdom, ptr %0, i32 0, i32 5, i32 3
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %294, align 4
  %324 = getelementptr inbounds %struct.nvkm_funcdom, ptr %323, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  tail call void %325(ptr noundef %261, ptr noundef %0, ptr noundef nonnull %320) #16
  br label %326

326:                                              ; preds = %322, %318
  %327 = getelementptr inbounds %struct.nvkm_perfdom, ptr %0, i32 0, i32 9
  %328 = load i32, ptr %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %361, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %295, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.nvkm_perfctr, ptr %331, i32 0, i32 6
  %335 = load i32, ptr %334, align 8
  %336 = getelementptr %struct.nvif_perfdom_read_v0, ptr %2, i32 0, i32 2, i32 0
  store i32 %335, ptr %336, align 4
  br label %337

337:                                              ; preds = %333, %330
  %338 = load ptr, ptr %303, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.nvkm_perfctr, ptr %338, i32 0, i32 6
  %342 = load i32, ptr %341, align 8
  %343 = getelementptr %struct.nvif_perfdom_read_v0, ptr %2, i32 0, i32 2, i32 1
  store i32 %342, ptr %343, align 4
  br label %344

344:                                              ; preds = %340, %337
  %345 = load ptr, ptr %311, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %351, label %347

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.nvkm_perfctr, ptr %345, i32 0, i32 6
  %349 = load i32, ptr %348, align 8
  %350 = getelementptr %struct.nvif_perfdom_read_v0, ptr %2, i32 0, i32 2, i32 2
  store i32 %349, ptr %350, align 4
  br label %351

351:                                              ; preds = %347, %344
  %352 = load ptr, ptr %319, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.nvkm_perfctr, ptr %352, i32 0, i32 6
  %356 = load i32, ptr %355, align 8
  %357 = getelementptr %struct.nvif_perfdom_read_v0, ptr %2, i32 0, i32 2, i32 3
  store i32 %356, ptr %357, align 4
  br label %358

358:                                              ; preds = %354, %351
  %359 = load i32, ptr %327, align 8
  %360 = getelementptr inbounds %struct.nvif_perfdom_read_v0, ptr %2, i32 0, i32 3
  store i32 %359, ptr %360, align 4
  br label %361

361:                                              ; preds = %358, %326, %279, %276, %274, %248, %241, %227, %206, %22, %4
  %362 = phi i32 [ -22, %4 ], [ 0, %206 ], [ -38, %22 ], [ -38, %227 ], [ 0, %241 ], [ 0, %358 ], [ -11, %326 ], [ -38, %274 ], [ -38, %276 ], [ -7, %279 ], [ 0, %248 ]
  ret i32 %362
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }

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
!9 = !{i64 2148957323}
!10 = !{i64 2148953147}
!11 = !{i64 2148953222, i64 2148953249, i64 2148953296, i64 2148953318, i64 2148953346, i64 2148953366}
!12 = !{i64 2148980326}
!13 = !{i64 3961775}
!14 = !{i64 2151501228}
!15 = !{i64 2151502450}
!16 = !{i64 3961357}
