.class public Lcom/android/server/fingerprint/FingerprintExtendImpl;
.super Lcom/android/server/fingerprint/FingerprintExtend;
.source "FingerprintExtendImpl.java"


# static fields
.field private static final DEFAULT_KEY_FINGER_EVENT:I = 0xd4

.field private static final FINGERPRINT_CONF_FILE:Ljava/lang/String; = "fp.conf"

.field private static final FINGERPRINT_UPDATE_PROP:Ljava/lang/String; = "persist.sys.fp.update"

.field private static final MAX_ENROLL_FINGERPRINTS_FOR_ALGO2:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurVesion:I

.field private final mFile:Ljava/io/File;

.field private mLastVersion:I

.field private mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

.field private mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintExtend;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    .line 49
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mContext:Landroid/content/Context;

    .line 51
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    .line 59
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mLastVersion:I

    .line 60
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I

    .line 64
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mContext:Landroid/content/Context;

    .line 66
    :try_start_0
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    .line 68
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "fp.conf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mFile:Ljava/io/File;

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintService"

    const-string v2, "fail instance  QFingerprintManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendNotification(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x10000000

    const v9, 0x104076c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    const v3, 0x1080265

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    .local v2, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080078

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x104076d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {p1, v7, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1060059

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 210
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "FingerprintService"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 211
    return-void
.end method


# virtual methods
.method public disableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 1
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 109
    const/4 v0, -0x1

    return v0
.end method

.method public enableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 1
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxEnrollFingerprints()I
    .locals 7

    .prologue
    const/4 v4, 0x5

    .line 118
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    if-eqz v3, :cond_1

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    const/4 v2, 0x0

    .line 122
    .local v2, "version":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->getFrameworkInfo()Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;

    move-result-object v1

    .line 123
    iget-object v3, v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;->mVersion:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 124
    const-string v3, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qcom fingerprint version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/16 v3, 0x27

    if-lt v2, v3, :cond_0

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 126
    const/4 v3, 0x3

    .line 134
    .end local v1    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .end local v2    # "version":I
    :goto_0
    return v3

    .restart local v1    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .restart local v2    # "version":I
    :cond_0
    move v3, v4

    .line 128
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    invoke-virtual {v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;->printStackTrace()V

    .end local v0    # "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    .end local v1    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .end local v2    # "version":I
    :cond_1
    move v3, v4

    .line 134
    goto :goto_0
.end method

.method public setDefaultMode(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
    .locals 1
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "mode"    # I

    .prologue
    .line 113
    const/4 v0, -0x1

    return v0
.end method

.method public startTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "userId"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    if-nez v1, :cond_0

    .line 78
    const/4 v1, -0x1

    .line 87
    :goto_0
    return v1

    .line 81
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->enableFingerEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintService"

    const-string v2, "QfpServiceException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stopTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    if-nez v1, :cond_0

    .line 92
    const/4 v1, -0x1

    .line 101
    :goto_0
    return v1

    .line 95
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintManager:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-virtual {v1}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->disableFingerEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "RemoteException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintService"

    const-string v2, "QfpServiceException "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncDatebase(Landroid/hardware/fingerprint/IFingerprintDaemon;Landroid/content/Context;I)V
    .locals 15
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 140
    new-instance v4, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v4, v12, v13}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;-><init>(Ljava/lang/String;Z)V

    .line 141
    .local v4, "enrollee":Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;
    const/4 v3, 0x0

    .line 143
    .local v3, "enrollRecord":Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v6

    .line 144
    .local v6, "fingerprintUtils":Lcom/android/server/fingerprint/FingerprintUtils;
    const/4 v9, 0x0

    .line 145
    .local v9, "isDiff":Z
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    if-eqz v12, :cond_0

    .line 147
    :try_start_0
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v12, v4}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->GetEnrollRecord(Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
    :try_end_0
    .catch Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    :cond_0
    :goto_0
    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get qcom data base size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    .line 154
    .local v7, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    iget-object v13, v3, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_2

    .line 155
    const/4 v9, 0x1

    .line 169
    :cond_1
    :goto_1
    const/4 v12, 0x1

    if-ne v9, v12, :cond_8

    .line 170
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v12, v3, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_6

    .line 172
    :try_start_1
    iget-object v12, v3, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;

    iget v5, v12, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->mFingerId:I

    .line 173
    .local v5, "fingerprintId":I
    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove qcom  fingerprint id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v5, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .end local v5    # "fingerprintId":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    .end local v7    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v8    # "i":I
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    invoke-virtual {v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v2    # "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    .restart local v7    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_2
    const/4 v11, 0x0

    .line 158
    .local v11, "sameCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_5

    .line 159
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_4

    .line 160
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v12}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v13

    iget-object v12, v3, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;

    iget v12, v12, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->mFingerId:I

    if-ne v13, v12, :cond_3

    .line 161
    add-int/lit8 v11, v11, 0x1

    .line 159
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 158
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 165
    .end local v10    # "j":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 166
    const/4 v9, 0x1

    goto :goto_1

    .line 175
    .end local v11    # "sameCount":I
    :catch_1
    move-exception v2

    .line 176
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 179
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v8, 0x0

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_7

    .line 180
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v12}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    .line 181
    .restart local v5    # "fingerprintId":I
    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "remove google  fingerprint id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v6, v0, v5, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 184
    .end local v5    # "fingerprintId":I
    :cond_7
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintExtendImpl;->sendNotification(Landroid/content/Context;)V

    .line 186
    .end local v8    # "i":I
    :cond_8
    return-void
.end method

.method public updateFingerVersion()V
    .locals 10

    .prologue
    const/16 v8, 0x27

    const/4 v9, 0x3

    .line 216
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 219
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "buf":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mLastVersion:I

    .line 221
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "buf":Ljava/lang/String;
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    if-eqz v6, :cond_1

    .line 230
    const/4 v4, 0x0

    .line 231
    .local v4, "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    const/4 v5, 0x0

    .line 232
    .local v5, "version":I
    :try_start_1
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mQFingerprintDebug:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v6}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->getFrameworkInfo()Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;

    move-result-object v4

    .line 233
    iget-object v6, v4, Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;->mVersion:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 234
    if-ge v5, v8, :cond_2

    .line 235
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I
    :try_end_1
    .catch Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .end local v4    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .end local v5    # "version":I
    :cond_1
    :goto_1
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurVesion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLastVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mLastVersion:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I

    if-ne v6, v9, :cond_4

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I

    iget v7, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mLastVersion:I

    if-eq v6, v7, :cond_4

    .line 247
    const-string v6, "persist.sys.fp.update"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mFile:Ljava/io/File;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 253
    .local v2, "bufferWriter":Ljava/io/BufferedWriter;
    iget v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    .end local v2    # "bufferWriter":Ljava/io/BufferedWriter;
    :goto_3
    return-void

    .line 222
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "FingerprintService"

    const-string v7, "read fingerprint conf file fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .restart local v5    # "version":I
    :cond_2
    if-lt v5, v8, :cond_3

    const/16 v6, 0x28

    if-ge v5, v6, :cond_3

    .line 237
    const/4 v6, 0x2

    :try_start_3
    iput v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I
    :try_end_3
    .catch Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 241
    :catch_1
    move-exception v3

    .line 242
    .local v3, "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    invoke-virtual {v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;->printStackTrace()V

    goto :goto_1

    .line 239
    .end local v3    # "e":Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
    :cond_3
    const/4 v6, 0x3

    :try_start_4
    iput v6, p0, Lcom/android/server/fingerprint/FingerprintExtendImpl;->mCurVesion:I
    :try_end_4
    .catch Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 249
    .end local v4    # "info":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .end local v5    # "version":I
    :cond_4
    const-string v6, "persist.sys.fp.update"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 255
    :catch_2
    move-exception v3

    .line 256
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "FingerprintService"

    const-string v7, "write fingerprint conf file fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
