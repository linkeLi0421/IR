; ModuleID = '/llk/IR/mm/memfd.c_pt.bc'
source_filename = "../mm/memfd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.87, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.88, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.89, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.87 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.88 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.89 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.32, %struct.atomic_t }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.32 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.97, [64 x ptr], %union.anon.98 }
%union.anon.97 = type { %struct.list_head }
%union.anon.98 = type { [3 x [2 x i32]] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"memfd:\00", align 1

@sys_memfd_create = dso_local alias i32 (ptr, i32), ptr @__se_sys_memfd_create

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memfd_fcntl(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  switch i32 %1, label %296 [
    i32 1033, label %5
    i32 1034, label %279
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %296, label %12

12:                                               ; preds = %5
  %13 = icmp ult i32 %2, 32
  br i1 %13, label %14, label %296

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %15) #7
  %16 = icmp eq ptr %0, null
  br i1 %16, label %277, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %277, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @shmem_aops
  br i1 %24, label %25, label %277

25:                                               ; preds = %21
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr i8, ptr %26, i32 -52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %277, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %27, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %277

33:                                               ; preds = %29
  %34 = and i32 %2, 8
  %35 = icmp ne i32 %34, 0
  %36 = and i32 %30, 8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %274

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 4
  %41 = load volatile i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %51, %39
  %43 = phi i32 [ %41, %39 ], [ %52, %51 ]
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %277, label %45, !prof !8

45:                                               ; preds = %42
  %46 = add i32 %43, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #7, !srcloc !10
  br label %47

47:                                               ; preds = %47, %45
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %43, i32 %46, ptr elementtype(i32) %40) #7, !srcloc !11
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  %52 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %53 = icmp eq i32 %52, %43
  br i1 %53, label %54, label %42, !prof !13

54:                                               ; preds = %51
  %55 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %56 = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 1
  store ptr %56, ptr %4, align 4
  %57 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %59 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i64 0, ptr %57, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %59, align 4
  %60 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %61, align 4
  tail call void @lru_add_drain() #7
  tail call void @_raw_spin_lock_irq(ptr noundef %56) #7
  %62 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %149, label %64

64:                                               ; preds = %146, %54
  %65 = phi ptr [ %147, %146 ], [ %62, %54 ]
  %66 = phi i32 [ %110, %146 ], [ 0, %54 ]
  %67 = ptrtoint ptr %65 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75, !prof !13

75:                                               ; preds = %70
  %76 = add i32 %72, -1
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi i32 [ %76, %75 ], [ %67, %70 ]
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 3
  %81 = load volatile i32, ptr %80, align 4
  %82 = load volatile i32, ptr %65, align 4
  %83 = and i32 %82, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load volatile i32, ptr %71, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89, !prof !13

89:                                               ; preds = %85, %77
  %90 = call i32 @__page_mapcount(ptr noundef nonnull %65) #7
  br label %95

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 2
  %93 = load volatile i32, ptr %92, align 4
  %94 = add i32 %93, 1
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i32 [ %90, %89 ], [ %94, %91 ]
  %97 = sub i32 %81, %96
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @xas_set_mark(ptr noundef nonnull %4, i32 noundef 2) #7
  br label %100

100:                                              ; preds = %99, %95, %64
  %101 = add i32 %66, 1
  %102 = icmp slt i32 %101, 4096
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  call void @xas_pause(ptr noundef nonnull %4) #7
  %104 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %105 = load i16, ptr %104, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %104, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %107 = call i32 @__cond_resched() #7
  %108 = load ptr, ptr %4, align 4
  call void @_raw_spin_lock_irq(ptr noundef %108) #7
  br label %109

109:                                              ; preds = %103, %100
  %110 = phi i32 [ %101, %100 ], [ 0, %103 ]
  %111 = load ptr, ptr %59, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = and i32 %112, 3
  %114 = icmp ne i32 %113, 0
  %115 = icmp eq ptr %111, null
  %116 = or i1 %115, %114
  br i1 %116, label %144, label %117, !prof !8

117:                                              ; preds = %109
  %118 = load i8, ptr %111, align 4
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %144, !prof !13

120:                                              ; preds = %117
  %121 = load i8, ptr %58, align 2
  %122 = zext i8 %121 to i32
  %123 = load i32, ptr %57, align 4
  %124 = and i32 %123, 63
  %125 = icmp eq i32 %124, %122
  br i1 %125, label %126, label %144, !prof !13

126:                                              ; preds = %140, %120
  %127 = phi i8 [ %141, %140 ], [ %121, %120 ]
  %128 = phi i32 [ %142, %140 ], [ %123, %120 ]
  %129 = icmp eq i32 %128, -1
  %130 = icmp eq i8 %127, 63
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %144, label %132, !prof !19

132:                                              ; preds = %126
  %133 = zext i8 %127 to i32
  %134 = add nuw nsw i32 %133, 1
  %135 = getelementptr %struct.xa_node, ptr %111, i32 0, i32 7, i32 %134
  %136 = load volatile ptr, ptr %135, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = and i32 %137, 3
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %144, label %140, !prof !8

140:                                              ; preds = %132
  %141 = add i8 %127, 1
  store i8 %141, ptr %58, align 2
  %142 = add nuw i32 %128, 1
  store i32 %142, ptr %57, align 4
  %143 = icmp eq ptr %136, null
  br i1 %143, label %126, label %146

144:                                              ; preds = %132, %126, %120, %117, %109
  %145 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef -1) #7
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi ptr [ %145, %144 ], [ %136, %140 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %64

149:                                              ; preds = %146, %54
  %150 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %151 = load i16, ptr %150, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %150, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  br label %153

153:                                              ; preds = %258, %149
  %154 = phi i32 [ 0, %149 ], [ %263, %258 ]
  %155 = phi i32 [ 0, %149 ], [ %259, %258 ]
  %156 = load ptr, ptr %4, align 4
  %157 = getelementptr inbounds %struct.xarray, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 134217728
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %265, label %161

161:                                              ; preds = %153
  %162 = icmp eq i32 %154, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  call void @lru_add_drain_all() #7
  br label %170

164:                                              ; preds = %161
  %165 = shl nuw nsw i32 100, %154
  %166 = sdiv i32 %165, 200
  %167 = call i32 @schedule_timeout_killable(i32 noundef %166) #7
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 %154, i32 4
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ 0, %163 ], [ %169, %164 ]
  store i32 0, ptr %57, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %59, align 4
  %172 = load ptr, ptr %4, align 4
  call void @_raw_spin_lock_irq(ptr noundef %172) #7
  %173 = call ptr @xas_find_marked(ptr noundef nonnull %4, i32 noundef -1, i32 noundef 2) #7
  %174 = icmp eq ptr %173, null
  br i1 %174, label %258, label %175

175:                                              ; preds = %170
  %176 = icmp eq i32 %171, 4
  br label %177

177:                                              ; preds = %255, %175
  %178 = phi ptr [ %173, %175 ], [ %256, %255 ]
  %179 = phi i32 [ 0, %175 ], [ %228, %255 ]
  %180 = phi i32 [ %155, %175 ], [ %218, %255 ]
  %181 = ptrtoint ptr %178 to i32
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %215

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 1
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 1
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189, !prof !13

189:                                              ; preds = %184
  %190 = add i32 %186, -1
  br label %191

191:                                              ; preds = %189, %184
  %192 = phi i32 [ %190, %189 ], [ %181, %184 ]
  %193 = inttoptr i32 %192 to ptr
  %194 = getelementptr inbounds %struct.page, ptr %193, i32 0, i32 3
  %195 = load volatile i32, ptr %194, align 4
  %196 = load volatile i32, ptr %178, align 4
  %197 = and i32 %196, 65536
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load volatile i32, ptr %185, align 4
  %201 = and i32 %200, 1
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203, !prof !13

203:                                              ; preds = %199, %191
  %204 = call i32 @__page_mapcount(ptr noundef nonnull %178) #7
  br label %209

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.page, ptr %178, i32 0, i32 2
  %207 = load volatile i32, ptr %206, align 4
  %208 = add i32 %207, 1
  br label %209

209:                                              ; preds = %205, %203
  %210 = phi i32 [ %204, %203 ], [ %208, %205 ]
  %211 = sub i32 %195, %210
  %212 = icmp eq i32 %211, 1
  %213 = select i1 %212, i1 true, i1 %176
  %214 = select i1 %212, i32 %180, i32 -16
  br i1 %213, label %215, label %217

215:                                              ; preds = %209, %177
  %216 = phi i32 [ %180, %177 ], [ %214, %209 ]
  call void @xas_clear_mark(ptr noundef nonnull %4, i32 noundef 2) #7
  br label %217

217:                                              ; preds = %215, %209
  %218 = phi i32 [ %216, %215 ], [ %180, %209 ]
  %219 = add i32 %179, 1
  %220 = icmp slt i32 %219, 4096
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  call void @xas_pause(ptr noundef nonnull %4) #7
  %222 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %223 = load i16, ptr %222, align 4
  %224 = add i16 %223, 1
  store i16 %224, ptr %222, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %225 = call i32 @__cond_resched() #7
  %226 = load ptr, ptr %4, align 4
  call void @_raw_spin_lock_irq(ptr noundef %226) #7
  br label %227

227:                                              ; preds = %221, %217
  %228 = phi i32 [ 0, %221 ], [ %219, %217 ]
  %229 = load ptr, ptr %59, align 4
  %230 = ptrtoint ptr %229 to i32
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  %233 = icmp eq ptr %229, null
  %234 = or i1 %233, %232
  br i1 %234, label %253, label %235, !prof !8

235:                                              ; preds = %227
  %236 = load i8, ptr %229, align 4
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %253, !prof !13

238:                                              ; preds = %235
  %239 = load i8, ptr %58, align 2
  %240 = zext i8 %239 to i32
  %241 = add nuw nsw i32 %240, 1
  %242 = getelementptr %struct.xa_node, ptr %229, i32 0, i32 8, i32 0, i32 2
  %243 = call i32 @_find_next_bit_le(ptr noundef %242, i32 noundef 64, i32 noundef %241) #7
  %244 = trunc i32 %243 to i8
  store i8 %244, ptr %58, align 2
  %245 = load i32, ptr %57, align 4
  %246 = and i32 %245, -64
  %247 = add i32 %246, %243
  store i32 %247, ptr %57, align 4
  %248 = icmp eq i32 %243, 64
  br i1 %248, label %253, label %249

249:                                              ; preds = %238
  %250 = getelementptr %struct.xa_node, ptr %229, i32 0, i32 7, i32 %243
  %251 = load volatile ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %249, %238, %235, %227
  %254 = call ptr @xas_find_marked(ptr noundef nonnull %4, i32 noundef -1, i32 noundef 2) #7
  br label %255

255:                                              ; preds = %253, %249
  %256 = phi ptr [ %251, %249 ], [ %254, %253 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %177

258:                                              ; preds = %255, %170
  %259 = phi i32 [ %155, %170 ], [ %218, %255 ]
  %260 = load ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %261 = load i16, ptr %260, align 4
  %262 = add i16 %261, 1
  store i16 %262, ptr %260, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %263 = add i32 %171, 1
  %264 = icmp slt i32 %263, 5
  br i1 %264, label %153, label %265

265:                                              ; preds = %258, %153
  %266 = phi i32 [ %155, %153 ], [ %259, %258 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i32, ptr %27, align 4
  br label %274

270:                                              ; preds = %265
  %271 = load ptr, ptr %18, align 8
  %272 = getelementptr inbounds %struct.address_space, ptr %271, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %272) #7, !srcloc !10
  %273 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %272, ptr %272, i32 1, ptr elementtype(i32) %272) #7, !srcloc !20
  br label %277

274:                                              ; preds = %268, %33
  %275 = phi i32 [ %269, %268 ], [ %30, %33 ]
  %276 = or i32 %275, %2
  store i32 %276, ptr %27, align 4
  br label %277

277:                                              ; preds = %274, %270, %42, %29, %25, %21, %17, %14
  %278 = phi i32 [ 0, %274 ], [ %266, %270 ], [ -22, %25 ], [ -1, %29 ], [ -22, %21 ], [ -22, %17 ], [ -22, %14 ], [ -16, %42 ]
  call void @up_write(ptr noundef %15) #7
  br label %296

279:                                              ; preds = %3
  %280 = icmp eq ptr %0, null
  br i1 %280, label %296, label %281

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %283 = load ptr, ptr %282, align 8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %296, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.address_space, ptr %283, i32 0, i32 9
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, @shmem_aops
  br i1 %288, label %289, label %296

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %291 = load ptr, ptr %290, align 8
  %292 = getelementptr i8, ptr %291, i32 -52
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %289
  %295 = load i32, ptr %292, align 4
  br label %296

296:                                              ; preds = %294, %289, %285, %281, %279, %277, %12, %5, %3
  %297 = phi i32 [ -22, %3 ], [ %278, %277 ], [ -1, %5 ], [ -22, %12 ], [ %295, %294 ], [ -22, %289 ], [ -22, %285 ], [ -22, %281 ], [ -22, %279 ]
  ret i32 %297
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_memfd_create(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = and i32 %1, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %11, label %84

8:                                                ; preds = %2
  %9 = and i32 %1, 67108856
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %8, %6
  %12 = tail call i32 @strnlen_user(ptr noundef %3, i32 noundef 250) #7
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %84, label %14

14:                                               ; preds = %11
  %15 = icmp ugt i32 %12, 250
  br i1 %15, label %84, label %16

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %12, 6
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(7) %18, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i32 7, i1 false) #7
  %21 = getelementptr i8, ptr %18, i32 6
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %12, i32 -1090519040) #9, !srcloc !21
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33, !prof !13

25:                                               ; preds = %20
  %26 = tail call ptr @llvm.thread.pointer() #7
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #10, !srcloc !22
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #7, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %31 = tail call i32 @arm_copy_from_user(ptr noundef %21, ptr noundef %3, i32 noundef %12) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #7, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !13

33:                                               ; preds = %25, %20
  %34 = phi i32 [ %31, %25 ], [ %12, %20 ]
  %35 = sub i32 %12, %34
  %36 = getelementptr i8, ptr %21, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %34, i1 false) #7
  br label %82

37:                                               ; preds = %25
  %38 = add nuw nsw i32 %12, 5
  %39 = getelementptr i8, ptr %18, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %37
  %43 = shl i32 %1, 19
  %44 = and i32 %43, 524288
  %45 = tail call i32 @get_unused_fd_flags(i32 noundef %44) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %42
  br i1 %5, label %48, label %51

48:                                               ; preds = %47
  %49 = tail call ptr @shmem_file_setup(ptr noundef nonnull %18, i64 noundef 0, i32 noundef 2097152) #7
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %47
  %52 = phi ptr [ %49, %48 ], [ inttoptr (i32 -38 to ptr), %47 ]
  %53 = ptrtoint ptr %52 to i32
  tail call void @put_unused_fd(i32 noundef %45) #7
  br label %82

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, 28
  store i32 %57, ptr %55, align 8
  %58 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 131072
  store i32 %60, ptr %58, align 4
  %61 = and i32 %1, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %54
  %64 = icmp eq ptr %49, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 17
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, @shmem_aops
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i8, ptr %75, i32 -52
  br label %77

77:                                               ; preds = %73, %69, %65, %63
  %78 = phi ptr [ %76, %73 ], [ null, %69 ], [ null, %65 ], [ null, %63 ]
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -2
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %54
  tail call void @fd_install(i32 noundef %45, ptr noundef %49) #7
  br label %82

82:                                               ; preds = %81, %51, %42, %37, %33
  %83 = phi i32 [ %45, %81 ], [ %53, %51 ], [ -14, %37 ], [ %45, %42 ], [ -14, %33 ]
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %84

84:                                               ; preds = %82, %16, %14, %11, %8, %6
  %85 = phi i32 [ -22, %6 ], [ -22, %8 ], [ -14, %11 ], [ -22, %14 ], [ -12, %16 ], [ %83, %82 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_killable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!9 = !{i64 2148448690}
!10 = !{i64 833878, i64 2148323849, i64 2148323875, i64 2148323922, i64 2148323944, i64 2148323972, i64 2148323992}
!11 = !{i64 819941, i64 819965, i64 819986, i64 820003, i64 820020}
!12 = !{i64 2148448890}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149002482}
!15 = !{i64 2148998306}
!16 = !{i64 2148998381, i64 2148998408, i64 2148998455, i64 2148998477, i64 2148998505, i64 2148998525}
!17 = !{i64 739801}
!18 = !{i64 2149026626}
!19 = !{!"branch_weights", i32 4001, i32 4000000}
!20 = !{i64 2148335264, i64 2148335290, i64 2148335319, i64 2148335353, i64 2148335384, i64 2148335407}
!21 = !{i64 2150967537, i64 2150967562}
!22 = !{i64 3463649}
!23 = !{i64 3463846}
!24 = !{i64 2150949125}
