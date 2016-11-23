.class public Lcom/letv/leui/util/LeUsbSettingsUtils;
.super Ljava/lang/Object;
.source "LeUsbSettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areUsbSettingsAleadyShow(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_usbsettings_never_show_forever"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "flag":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static areUsbSettingsAutoShow(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return v2

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_usbsettings_never_show_forever"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "flag":I
    and-int/lit8 v3, v0, 0x1

    if-eq v3, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static setUsbSettingsAleadyShow(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return v1

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_usbsettings_never_show_forever"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "flag":I
    if-eqz p1, :cond_1

    .line 77
    or-int/lit8 v0, v0, 0x2

    .line 81
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_usbsettings_never_show_forever"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_0

    .line 79
    :cond_1
    and-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method

.method public static setUsbSettingsAutoShow(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 44
    :goto_0
    return v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_usbsettings_never_show_forever"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "flag":I
    if-eqz p1, :cond_1

    .line 40
    or-int/lit8 v0, v0, 0x1

    .line 44
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_usbsettings_never_show_forever"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_0

    .line 42
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method
