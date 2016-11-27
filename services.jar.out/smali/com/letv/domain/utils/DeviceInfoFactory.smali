.class public Lcom/letv/domain/utils/DeviceInfoFactory;
.super Ljava/lang/Object;
.source "DeviceInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDeviceInfo(Landroid/content/Context;Lcom/letv/domain/DomainRequest;)Lcom/letv/domain/bean/DeviceInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/letv/domain/DomainRequest;

    .prologue
    .line 22
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 25
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getLEUIDeviceId"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 26
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 34
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .local v0, "IMEI":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/letv/domain/bean/DeviceInfo;

    sget-object v9, Lcom/letv/domain/bean/DeviceInfo$Type;->MOBILE:Lcom/letv/domain/bean/DeviceInfo$Type;

    invoke-direct {v1, v9, v0}, Lcom/letv/domain/bean/DeviceInfo;-><init>(Lcom/letv/domain/bean/DeviceInfo$Type;Ljava/lang/String;)V

    .line 35
    .local v1, "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/letv/domain/DomainRequest;->getServices()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/letv/domain/bean/DeviceInfo;->setServices(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 41
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    const-string v9, "domain.oversea_obtain_domain_dynamically"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v1, v9}, Lcom/letv/domain/bean/DeviceInfo;->setIsOversea(Z)V

    .line 44
    const/4 v5, 0x0

    .line 46
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 50
    :goto_1
    if-eqz v5, :cond_1

    .line 51
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "label":Ljava/lang/String;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 53
    .local v8, "versionName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/letv/domain/bean/DeviceInfo;->setApp_name(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v8}, Lcom/letv/domain/bean/DeviceInfo;->setApp_version(Ljava/lang/String;)V

    .line 56
    .end local v3    # "label":Ljava/lang/String;
    .end local v8    # "versionName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 27
    .end local v0    # "IMEI":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 29
    const-string v9, "DomainHelper"

    const-string v10, "not found \"getLEUIDeviceId()\", use \"getDeviceId()\" instead."

    invoke-static {v9, v10}, Lcom/letv/domain/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "IMEI":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 27
    .end local v0    # "IMEI":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2
.end method
