; ModuleID = '/llk/IR/net/bluetooth/mgmt_config.c_pt.bc'
source_filename = "../net/bluetooth/mgmt_config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mgmt_rp_read_def_system_config = type { %struct.anon.135, %struct.anon.136, %struct.anon.137, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152, %struct.anon.153, %struct.anon.154, %struct.anon.155, %struct.anon.156, %struct.anon.157, %struct.anon.158, %struct.anon.159, %struct.anon.160, %struct.anon.161, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165 }
%struct.anon.135 = type <{ %struct.mgmt_tlv, i16 }>
%struct.mgmt_tlv = type <{ i16, i8, [0 x i8] }>
%struct.anon.136 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.137 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.138 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.139 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.140 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.141 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.142 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.143 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.144 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.145 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.146 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.147 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.148 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.149 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.150 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.151 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.152 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.153 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.154 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.155 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.156 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.157 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.158 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.159 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.160 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.161 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.162 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.163 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.164 = type <{ %struct.mgmt_tlv, i16 }>
%struct.anon.165 = type { %struct.mgmt_tlv, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"%s: invalid len left %u, exp >= %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: unsupported parameter %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: invalid length %d, exp %zu for type %u\0A\00", align 1
@switch.table.set_def_system_config = private unnamed_addr constant [32 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @read_def_system_config(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.mgmt_rp_read_def_system_config, align 2
  call void @llvm.lifetime.start.p0(i64 154, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct.mgmt_tlv, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(154) %5, i8 0, i64 154, i1 false)
  store i8 2, ptr %6, align 2
  %7 = getelementptr inbounds %struct.anon.135, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 86
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %7, align 1
  %11 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 1
  store i16 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 1, i32 0, i32 1
  store i8 2, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 87
  %15 = load i16, ptr %14, align 8
  store i16 %15, ptr %13, align 2
  %16 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 2
  store i16 2, ptr %16, align 2
  %17 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 2, i32 0, i32 1
  store i8 2, ptr %17, align 2
  %18 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 88
  %20 = load i16, ptr %19, align 2
  store i16 %20, ptr %18, align 1
  %21 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 3
  store i16 3, ptr %21, align 1
  %22 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 3, i32 0, i32 1
  store i8 2, ptr %22, align 1
  %23 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 3, i32 1
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 89
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %23, align 2
  %27 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 4
  store i16 4, ptr %27, align 2
  %28 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 4, i32 0, i32 1
  store i8 2, ptr %28, align 2
  %29 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 4, i32 1
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 90
  %31 = load i16, ptr %30, align 2
  store i16 %31, ptr %29, align 1
  %32 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 5
  store i16 5, ptr %32, align 1
  %33 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 5, i32 0, i32 1
  store i8 2, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 5, i32 1
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 91
  %36 = load i16, ptr %35, align 8
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 6
  store i16 6, ptr %37, align 2
  %38 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 6, i32 0, i32 1
  store i8 2, ptr %38, align 2
  %39 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 6, i32 1
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 92
  %41 = load i16, ptr %40, align 2
  store i16 %41, ptr %39, align 1
  %42 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 7
  store i16 7, ptr %42, align 1
  %43 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 7, i32 0, i32 1
  store i8 2, ptr %43, align 1
  %44 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 7, i32 1
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 93
  %46 = load i16, ptr %45, align 4
  store i16 %46, ptr %44, align 2
  %47 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 8
  store i16 8, ptr %47, align 2
  %48 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 8, i32 0, i32 1
  store i8 2, ptr %48, align 2
  %49 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 8, i32 1
  %50 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 103
  %51 = load i16, ptr %50, align 8
  store i16 %51, ptr %49, align 1
  %52 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 9
  store i16 9, ptr %52, align 1
  %53 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 9, i32 0, i32 1
  store i8 2, ptr %53, align 1
  %54 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 9, i32 1
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 104
  %56 = load i16, ptr %55, align 2
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 10
  store i16 10, ptr %57, align 2
  %58 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 10, i32 0, i32 1
  store i8 2, ptr %58, align 2
  %59 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 10, i32 1
  %60 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %61 = load i16, ptr %60, align 4
  store i16 %61, ptr %59, align 1
  %62 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 11
  store i16 11, ptr %62, align 1
  %63 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 11, i32 0, i32 1
  store i8 2, ptr %63, align 1
  %64 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 11, i32 1
  %65 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %66 = load i16, ptr %65, align 2
  store i16 %66, ptr %64, align 2
  %67 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 12
  store i16 12, ptr %67, align 2
  %68 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 12, i32 0, i32 1
  store i8 2, ptr %68, align 2
  %69 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 12, i32 1
  %70 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 94
  %71 = load i16, ptr %70, align 2
  store i16 %71, ptr %69, align 1
  %72 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 13
  store i16 13, ptr %72, align 1
  %73 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 13, i32 0, i32 1
  store i8 2, ptr %73, align 1
  %74 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 13, i32 1
  %75 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 47
  %76 = load i16, ptr %75, align 2
  store i16 %76, ptr %74, align 2
  %77 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 14
  store i16 14, ptr %77, align 2
  %78 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 14, i32 0, i32 1
  store i8 2, ptr %78, align 2
  %79 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 14, i32 1
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 48
  %81 = load i16, ptr %80, align 4
  store i16 %81, ptr %79, align 1
  %82 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 15
  store i16 15, ptr %82, align 1
  %83 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 15, i32 0, i32 1
  store i8 2, ptr %83, align 1
  %84 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 15, i32 1
  %85 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 49
  %86 = load i16, ptr %85, align 2
  store i16 %86, ptr %84, align 2
  %87 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 16
  store i16 16, ptr %87, align 2
  %88 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 16, i32 0, i32 1
  store i8 2, ptr %88, align 2
  %89 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 16, i32 1
  %90 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 50
  %91 = load i16, ptr %90, align 8
  store i16 %91, ptr %89, align 1
  %92 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 17
  store i16 17, ptr %92, align 1
  %93 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 17, i32 0, i32 1
  store i8 2, ptr %93, align 1
  %94 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 17, i32 1
  %95 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 51
  %96 = load i16, ptr %95, align 2
  store i16 %96, ptr %94, align 2
  %97 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 18
  store i16 18, ptr %97, align 2
  %98 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 18, i32 0, i32 1
  store i8 2, ptr %98, align 2
  %99 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 18, i32 1
  %100 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 52
  %101 = load i16, ptr %100, align 4
  store i16 %101, ptr %99, align 1
  %102 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 19
  store i16 19, ptr %102, align 1
  %103 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 19, i32 0, i32 1
  store i8 2, ptr %103, align 1
  %104 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 19, i32 1
  %105 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 53
  %106 = load i16, ptr %105, align 2
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 20
  store i16 20, ptr %107, align 2
  %108 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 20, i32 0, i32 1
  store i8 2, ptr %108, align 2
  %109 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 20, i32 1
  %110 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 54
  %111 = load i16, ptr %110, align 8
  store i16 %111, ptr %109, align 1
  %112 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 21
  store i16 21, ptr %112, align 1
  %113 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 21, i32 0, i32 1
  store i8 2, ptr %113, align 1
  %114 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 21, i32 1
  %115 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 55
  %116 = load i16, ptr %115, align 2
  store i16 %116, ptr %114, align 2
  %117 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 22
  store i16 22, ptr %117, align 2
  %118 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 22, i32 0, i32 1
  store i8 2, ptr %118, align 2
  %119 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 22, i32 1
  %120 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 56
  %121 = load i16, ptr %120, align 4
  store i16 %121, ptr %119, align 1
  %122 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 23
  store i16 23, ptr %122, align 1
  %123 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 23, i32 0, i32 1
  store i8 2, ptr %123, align 1
  %124 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 23, i32 1
  %125 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 57
  %126 = load i16, ptr %125, align 2
  store i16 %126, ptr %124, align 2
  %127 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 24
  store i16 24, ptr %127, align 2
  %128 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 24, i32 0, i32 1
  store i8 2, ptr %128, align 2
  %129 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 24, i32 1
  %130 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 58
  %131 = load i16, ptr %130, align 8
  store i16 %131, ptr %129, align 1
  %132 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 25
  store i16 25, ptr %132, align 1
  %133 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 25, i32 0, i32 1
  store i8 2, ptr %133, align 1
  %134 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 25, i32 1
  %135 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 59
  %136 = load i16, ptr %135, align 2
  store i16 %136, ptr %134, align 2
  %137 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 26
  store i16 26, ptr %137, align 2
  %138 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 26, i32 0, i32 1
  store i8 2, ptr %138, align 2
  %139 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 26, i32 1
  %140 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 60
  %141 = load i16, ptr %140, align 4
  store i16 %141, ptr %139, align 1
  %142 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 27
  store i16 27, ptr %142, align 1
  %143 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 27, i32 0, i32 1
  store i8 2, ptr %143, align 1
  %144 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 27, i32 1
  %145 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 95
  %146 = load i16, ptr %145, align 8
  %147 = zext i16 %146 to i32
  %148 = tail call i32 @jiffies_to_msecs(i32 noundef %147) #4
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %144, align 2
  %150 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 28
  store i16 29, ptr %150, align 2
  %151 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 28, i32 0, i32 1
  store i8 2, ptr %151, align 2
  %152 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 28, i32 1
  %153 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 79
  %154 = load i16, ptr %153, align 8
  store i16 %154, ptr %152, align 1
  %155 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 29
  store i16 30, ptr %155, align 1
  %156 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 29, i32 0, i32 1
  store i8 2, ptr %156, align 1
  %157 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 29, i32 1
  %158 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 80
  %159 = load i16, ptr %158, align 2
  store i16 %159, ptr %157, align 2
  %160 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 30
  store i16 31, ptr %160, align 2
  %161 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 30, i32 0, i32 1
  store i8 1, ptr %161, align 2
  %162 = getelementptr inbounds %struct.mgmt_rp_read_def_system_config, ptr %5, i32 0, i32 30, i32 1
  %163 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 81
  %164 = load i8, ptr %163, align 4
  store i8 %164, ptr %162, align 1
  %165 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %166 = load i16, ptr %165, align 8
  %167 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %166, i16 noundef zeroext 75, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 154) #4
  call void @llvm.lifetime.end.p0(i64 154, ptr nonnull %5) #4
  ret i32 %167
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_complete(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_def_system_config(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ult i16 %3, 3
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %10, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %202

12:                                               ; preds = %80
  %13 = icmp ugt i16 %3, 2
  br i1 %13, label %14, label %198

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 81
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 80
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 79
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 95
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 60
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 59
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 58
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 57
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 56
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 55
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 54
  %26 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 53
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 52
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 51
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 50
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 49
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 48
  %32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 47
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 94
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 104
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 103
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 93
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 92
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 91
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 90
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 89
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 88
  %44 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 87
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 86
  br label %85

46:                                               ; preds = %80, %6
  %47 = phi ptr [ %2, %6 ], [ %83, %80 ]
  %48 = phi i16 [ %3, %6 ], [ %82, %80 ]
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.mgmt_tlv, ptr %47, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, 3
  %54 = icmp ugt i32 %53, %49
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %49, i32 noundef %53) #4
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %57 = load i16, ptr %56, align 8
  %58 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %57, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %202

59:                                               ; preds = %46
  %60 = load i16, ptr %47, align 1
  %61 = icmp ult i16 %60, 32
  br i1 %61, label %64, label %62

62:                                               ; preds = %64, %59
  %63 = zext i16 %60 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %63) #4
  br label %80

64:                                               ; preds = %59
  %65 = zext i16 %60 to i32
  %66 = lshr i32 -268435457, %65
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %62, label %69

69:                                               ; preds = %64
  %70 = sext i16 %60 to i32
  %71 = getelementptr inbounds [32 x i32], ptr @switch.table.set_def_system_config, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %52
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = zext i8 %51 to i32
  %76 = zext i16 %60 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.2, ptr noundef %7, i32 noundef %75, i32 noundef %72, i32 noundef %76) #4
  %77 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %78 = load i16, ptr %77, align 8
  %79 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %78, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  br label %202

80:                                               ; preds = %69, %62
  %81 = trunc i32 %53 to i16
  %82 = sub i16 %48, %81
  %83 = getelementptr i8, ptr %47, i32 %53
  %84 = icmp ugt i16 %82, 2
  br i1 %84, label %46, label %12

85:                                               ; preds = %193, %14
  %86 = phi ptr [ %2, %14 ], [ %196, %193 ]
  %87 = phi i16 [ %3, %14 ], [ %195, %193 ]
  %88 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %90, 3
  %92 = load i16, ptr %86, align 1
  switch i16 %92, label %191 [
    i16 0, label %93
    i16 1, label %97
    i16 2, label %100
    i16 3, label %103
    i16 4, label %107
    i16 5, label %110
    i16 6, label %113
    i16 7, label %116
    i16 8, label %119
    i16 9, label %122
    i16 10, label %125
    i16 11, label %128
    i16 12, label %131
    i16 13, label %134
    i16 14, label %137
    i16 15, label %140
    i16 16, label %143
    i16 17, label %146
    i16 18, label %149
    i16 19, label %152
    i16 20, label %155
    i16 21, label %158
    i16 22, label %161
    i16 23, label %164
    i16 24, label %167
    i16 25, label %170
    i16 26, label %173
    i16 27, label %176
    i16 29, label %182
    i16 30, label %185
    i16 31, label %188
  ]

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %95 = load i16, ptr %94, align 1
  %96 = trunc i16 %95 to i8
  store i8 %96, ptr %45, align 2
  br label %193

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %99 = load i16, ptr %98, align 1
  store i16 %99, ptr %44, align 8
  br label %193

100:                                              ; preds = %85
  %101 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %102 = load i16, ptr %101, align 1
  store i16 %102, ptr %43, align 2
  br label %193

103:                                              ; preds = %85
  %104 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %105 = load i16, ptr %104, align 1
  %106 = trunc i16 %105 to i8
  store i8 %106, ptr %42, align 4
  br label %193

107:                                              ; preds = %85
  %108 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %109 = load i16, ptr %108, align 1
  store i16 %109, ptr %41, align 2
  br label %193

110:                                              ; preds = %85
  %111 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %112 = load i16, ptr %111, align 1
  store i16 %112, ptr %40, align 8
  br label %193

113:                                              ; preds = %85
  %114 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %115 = load i16, ptr %114, align 1
  store i16 %115, ptr %39, align 2
  br label %193

116:                                              ; preds = %85
  %117 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %118 = load i16, ptr %117, align 1
  store i16 %118, ptr %38, align 4
  br label %193

119:                                              ; preds = %85
  %120 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %121 = load i16, ptr %120, align 1
  store i16 %121, ptr %37, align 8
  br label %193

122:                                              ; preds = %85
  %123 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %124 = load i16, ptr %123, align 1
  store i16 %124, ptr %36, align 2
  br label %193

125:                                              ; preds = %85
  %126 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %127 = load i16, ptr %126, align 1
  store i16 %127, ptr %35, align 4
  br label %193

128:                                              ; preds = %85
  %129 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %130 = load i16, ptr %129, align 1
  store i16 %130, ptr %34, align 2
  br label %193

131:                                              ; preds = %85
  %132 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %133 = load i16, ptr %132, align 1
  store i16 %133, ptr %33, align 2
  br label %193

134:                                              ; preds = %85
  %135 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %136 = load i16, ptr %135, align 1
  store i16 %136, ptr %32, align 2
  br label %193

137:                                              ; preds = %85
  %138 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %139 = load i16, ptr %138, align 1
  store i16 %139, ptr %31, align 4
  br label %193

140:                                              ; preds = %85
  %141 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %142 = load i16, ptr %141, align 1
  store i16 %142, ptr %30, align 2
  br label %193

143:                                              ; preds = %85
  %144 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %145 = load i16, ptr %144, align 1
  store i16 %145, ptr %29, align 8
  br label %193

146:                                              ; preds = %85
  %147 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %148 = load i16, ptr %147, align 1
  store i16 %148, ptr %28, align 2
  br label %193

149:                                              ; preds = %85
  %150 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %151 = load i16, ptr %150, align 1
  store i16 %151, ptr %27, align 4
  br label %193

152:                                              ; preds = %85
  %153 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %154 = load i16, ptr %153, align 1
  store i16 %154, ptr %26, align 2
  br label %193

155:                                              ; preds = %85
  %156 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %157 = load i16, ptr %156, align 1
  store i16 %157, ptr %25, align 8
  br label %193

158:                                              ; preds = %85
  %159 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %160 = load i16, ptr %159, align 1
  store i16 %160, ptr %24, align 2
  br label %193

161:                                              ; preds = %85
  %162 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %163 = load i16, ptr %162, align 1
  store i16 %163, ptr %23, align 4
  br label %193

164:                                              ; preds = %85
  %165 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %166 = load i16, ptr %165, align 1
  store i16 %166, ptr %22, align 2
  br label %193

167:                                              ; preds = %85
  %168 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %169 = load i16, ptr %168, align 1
  store i16 %169, ptr %21, align 8
  br label %193

170:                                              ; preds = %85
  %171 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %172 = load i16, ptr %171, align 1
  store i16 %172, ptr %20, align 2
  br label %193

173:                                              ; preds = %85
  %174 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %175 = load i16, ptr %174, align 1
  store i16 %175, ptr %19, align 4
  br label %193

176:                                              ; preds = %85
  %177 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %178 = load i16, ptr %177, align 1
  %179 = zext i16 %178 to i32
  %180 = tail call i32 @__msecs_to_jiffies(i32 noundef %179) #4
  %181 = trunc i32 %180 to i16
  store i16 %181, ptr %18, align 8
  br label %193

182:                                              ; preds = %85
  %183 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %184 = load i16, ptr %183, align 1
  store i16 %184, ptr %17, align 8
  br label %193

185:                                              ; preds = %85
  %186 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %187 = load i16, ptr %186, align 1
  store i16 %187, ptr %16, align 2
  br label %193

188:                                              ; preds = %85
  %189 = getelementptr inbounds %struct.mgmt_tlv, ptr %86, i32 0, i32 2
  %190 = load i8, ptr %189, align 1
  store i8 %190, ptr %15, align 4
  br label %193

191:                                              ; preds = %85
  %192 = zext i16 %92 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %192) #4
  br label %193

193:                                              ; preds = %191, %188, %185, %182, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107, %103, %100, %97, %93
  %194 = trunc i32 %91 to i16
  %195 = sub i16 %87, %194
  %196 = getelementptr i8, ptr %86, i32 %91
  %197 = icmp ugt i16 %195, 2
  br i1 %197, label %85, label %198

198:                                              ; preds = %193, %12
  %199 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %200 = load i16, ptr %199, align 8
  %201 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %200, i16 noundef zeroext 76, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #4
  br label %202

202:                                              ; preds = %198, %74, %55, %8
  %203 = phi i32 [ %11, %8 ], [ %201, %198 ], [ %79, %74 ], [ %58, %55 ]
  ret i32 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_status(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @read_def_runtime_config(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %6, i16 noundef zeroext 77, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_def_runtime_config(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %6, i16 noundef zeroext 76, i8 noundef zeroext 13) #4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
