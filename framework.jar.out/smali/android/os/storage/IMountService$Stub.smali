.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createNewUserDir:I = 0x3f

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_deleteUserKey:I = 0x40

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_encryptWipeStorage:I = 0x3e

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setPrivateFolder:I = 0x5d

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1389
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1390
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1378
    if-nez p0, :cond_0

    .line 1379
    const/4 v0, 0x0

    .line 1385
    :goto_0
    return-object v0

    .line 1381
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1382
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1383
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1385
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1394
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 60
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1400
    sparse-switch p1, :sswitch_data_0

    .line 1965
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 1402
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1403
    const/4 v4, 0x1

    goto :goto_0

    .line 1406
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v34

    .line 1409
    .local v34, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    const/4 v4, 0x1

    goto :goto_0

    .line 1414
    .end local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v34

    .line 1417
    .restart local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    const/4 v4, 0x1

    goto :goto_0

    .line 1422
    .end local v34    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v50

    .line 1424
    .local v50, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    if-eqz v50, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    const/4 v4, 0x1

    goto :goto_0

    .line 1425
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1429
    .end local v50    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v24, 0x1

    .line 1432
    .local v24, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    const/4 v4, 0x1

    goto :goto_0

    .line 1431
    .end local v24    # "enable":Z
    :cond_1
    const/16 v24, 0x0

    goto :goto_2

    .line 1437
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v50

    .line 1439
    .restart local v50    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    if-eqz v50, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1440
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1444
    .end local v50    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1447
    .local v35, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v51

    .line 1448
    .local v51, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1453
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v51    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1456
    .restart local v35    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v28, 0x1

    .line 1457
    .local v28, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v47, 0x1

    .line 1458
    .local v47, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v28

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1456
    .end local v28    # "force":Z
    .end local v47    # "removeEncrypt":Z
    :cond_3
    const/16 v28, 0x0

    goto :goto_4

    .line 1457
    .restart local v28    # "force":Z
    :cond_4
    const/16 v47, 0x0

    goto :goto_5

    .line 1463
    .end local v28    # "force":Z
    .end local v35    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1466
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v50

    .line 1467
    .local v50, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1472
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1475
    .local v42, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v43

    .line 1476
    .local v43, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1478
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1481
    .end local v42    # "path":Ljava/lang/String;
    .end local v43    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1484
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1485
    .local v52, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1487
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1490
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v52    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1494
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1496
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1498
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1500
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1502
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 1503
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v51

    .line 1505
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1502
    .end local v10    # "external":Z
    .end local v51    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 1510
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1513
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v51

    .line 1514
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1519
    .end local v5    # "id":Ljava/lang/String;
    .end local v51    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1523
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v28, 0x1

    .line 1524
    .restart local v28    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v51

    .line 1525
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1523
    .end local v28    # "force":Z
    .end local v51    # "resultCode":I
    :cond_6
    const/16 v28, 0x0

    goto :goto_7

    .line 1530
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1534
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1536
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1538
    .restart local v9    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v46, 0x1

    .line 1539
    .local v46, "readOnly":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v51

    .line 1540
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1538
    .end local v46    # "readOnly":Z
    .end local v51    # "resultCode":I
    :cond_7
    const/16 v46, 0x0

    goto :goto_8

    .line 1545
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1549
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v28, 0x1

    .line 1550
    .restart local v28    # "force":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v51

    .line 1551
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1549
    .end local v28    # "force":Z
    .end local v51    # "resultCode":I
    :cond_8
    const/16 v28, 0x0

    goto :goto_9

    .line 1556
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1559
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v53

    .line 1560
    .local v53, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    if-eqz v53, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1561
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 1565
    .end local v5    # "id":Ljava/lang/String;
    .end local v53    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1569
    .local v39, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1570
    .local v37, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 1571
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1576
    .end local v37    # "newId":Ljava/lang/String;
    .end local v39    # "oldId":Ljava/lang/String;
    .end local v51    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1579
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1580
    .restart local v42    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1585
    .end local v5    # "id":Ljava/lang/String;
    .end local v42    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v31

    .line 1587
    .local v31, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1589
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1592
    .end local v31    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1596
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1601
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1607
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1609
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1610
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1612
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1614
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1615
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1620
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1624
    .local v26, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v28, 0x1

    .line 1626
    .restart local v28    # "force":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1628
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1629
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1624
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v28    # "force":Z
    :cond_a
    const/16 v28, 0x0

    goto :goto_b

    .line 1634
    .end local v26    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1637
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v53

    .line 1638
    .restart local v53    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    if-eqz v53, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1639
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1643
    .end local v26    # "filename":Ljava/lang/String;
    .end local v53    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1646
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1647
    .local v36, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1649
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1652
    .end local v26    # "filename":Ljava/lang/String;
    .end local v36    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v23

    .line 1654
    .local v23, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    if-eqz v23, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1655
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1659
    .end local v23    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1661
    .local v41, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v50

    .line 1662
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1667
    .end local v41    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .line 1669
    .local v54, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1670
    .restart local v41    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v50

    .line 1671
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1676
    .end local v41    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    .end local v54    # "type":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .line 1678
    .restart local v54    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1679
    .restart local v41    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptWipeStorage(ILjava/lang/String;)I

    move-result v50

    .line 1680
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1681
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1685
    .end local v41    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    .end local v54    # "type":I
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v54

    .line 1687
    .restart local v54    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 1688
    .restart local v41    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v50

    .line 1689
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1690
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1694
    .end local v41    # "password":Ljava/lang/String;
    .end local v50    # "result":I
    .end local v54    # "type":I
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1696
    .local v55, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1697
    .local v40, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1698
    .local v17, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move-object/from16 v2, v40

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v50

    .line 1699
    .local v50, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1701
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1704
    .end local v17    # "_flags":I
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v50    # "result":[Landroid/os/storage/StorageVolume;
    .end local v55    # "uid":I
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1707
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1708
    .restart local v42    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1710
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1713
    .end local v5    # "id":Ljava/lang/String;
    .end local v42    # "path":Ljava/lang/String;
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v50

    .line 1715
    .local v50, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1720
    .end local v50    # "result":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1724
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 1726
    .local v30, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1727
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v51

    .line 1728
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1733
    .end local v5    # "id":Ljava/lang/String;
    .end local v26    # "filename":Ljava/lang/String;
    .end local v30    # "gid":I
    .end local v51    # "resultCode":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1735
    .local v19, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1736
    .restart local v42    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v50

    .line 1737
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1742
    .end local v19    # "callingPkg":Ljava/lang/String;
    .end local v42    # "path":Ljava/lang/String;
    .end local v50    # "result":I
    :sswitch_24
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v50

    .line 1744
    .restart local v50    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1749
    .end local v50    # "result":I
    :sswitch_25
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v50

    .line 1751
    .local v50, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1753
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1756
    .end local v50    # "result":Ljava/lang/String;
    :sswitch_26
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1762
    :sswitch_27
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1764
    .local v25, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1765
    .local v20, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1770
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_28
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1772
    .restart local v25    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1773
    .restart local v20    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1775
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1778
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_29
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1782
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1784
    .restart local v6    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1785
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v51

    .line 1786
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1791
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v51    # "resultCode":I
    :sswitch_2a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v32

    .line 1793
    .local v32, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    move-object/from16 v0, p3

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1795
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v32    # "lastMaintenance":J
    :sswitch_2b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1804
    :sswitch_2c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 1806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1810
    :sswitch_2d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v22

    .line 1812
    .local v22, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1814
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1817
    .end local v22    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1819
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v59

    .line 1820
    .local v59, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1822
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1825
    .end local v17    # "_flags":I
    .end local v59    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1827
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v59

    .line 1828
    .local v59, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1830
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1833
    .end local v17    # "_flags":I
    .end local v59    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_30
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1835
    .local v57, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1840
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1842
    .restart local v57    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1847
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1849
    .restart local v57    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1854
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1856
    .restart local v57    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v48

    .line 1857
    .local v48, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    move-object/from16 v0, p3

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1859
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v48    # "res":J
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1864
    .local v21, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 1865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1869
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1871
    .restart local v21    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1876
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1878
    .restart local v21    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 1879
    .local v44, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 1880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1884
    .end local v21    # "diskId":Ljava/lang/String;
    .end local v44    # "ratio":I
    :sswitch_37
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1886
    .restart local v57    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 1887
    .local v38, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1892
    .end local v38    # "nickname":Ljava/lang/String;
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 1894
    .restart local v57    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1895
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1896
    .local v18, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1901
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    .end local v57    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1903
    .local v29, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1908
    .end local v29    # "fsUuid":Ljava/lang/String;
    :sswitch_3a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 1910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1914
    :sswitch_3b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1916
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1917
    .restart local v18    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 1918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1922
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    :sswitch_3c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v58

    .line 1924
    .local v58, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1926
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1929
    .end local v58    # "volumeUuid":Ljava/lang/String;
    :sswitch_3d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    .line 1931
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v34

    .line 1933
    .local v34, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 1934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1938
    .end local v34    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 1940
    .local v56, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1941
    .restart local v42    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v56

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->createNewUserDir(ILjava/lang/String;)V

    .line 1942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1946
    .end local v42    # "path":Ljava/lang/String;
    .end local v56    # "userHandle":I
    :sswitch_3f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 1948
    .restart local v56    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->deleteUserKey(I)V

    .line 1949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1955
    .end local v56    # "userHandle":I
    :sswitch_40
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1957
    .local v45, "rawString":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1958
    .local v27, "flag":I
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrivateFolder(Ljava/lang/String;I)V

    .line 1959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1400
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_33
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x5d -> :sswitch_40
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
