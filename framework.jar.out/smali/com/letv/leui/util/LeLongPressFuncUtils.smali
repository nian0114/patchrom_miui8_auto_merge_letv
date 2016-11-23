.class public Lcom/letv/leui/util/LeLongPressFuncUtils;
.super Ljava/lang/Object;
.source "LeLongPressFuncUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAleadyBeSetInAccessibilitySettings(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_long_press_func_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "value":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isKeyBeSetInLongPressSetupWizard(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flagKey"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_long_press_func_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "value":I
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNeedLongPressFuncSetupWizard(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flagKey"    # I

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {p0}, Lcom/letv/leui/util/LeLongPressFuncUtils;->isAleadyBeSetInAccessibilitySettings(Landroid/content/Context;)Z

    move-result v0

    .line 32
    .local v0, "isAleadySetInAccessibility":Z
    if-eqz v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    invoke-static {p0, p1}, Lcom/letv/leui/util/LeLongPressFuncUtils;->isKeyBeSetInLongPressSetupWizard(Landroid/content/Context;I)Z

    move-result v1

    .line 38
    .local v1, "isKeyBeSetInLongPressSetupWizard":Z
    if-nez v1, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/letv/leui/util/LeLongPressFuncUtils;->isOtaUserLongPressAsTheDefault(Landroid/content/Context;I)Z

    move-result v2

    .line 43
    .local v2, "isOtaUserLongPressAsTheDefault":Z
    if-eqz v2, :cond_0

    .line 45
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isOtaUserLongPressAsTheDefault(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flagKey"    # I

    .prologue
    const/4 v4, 0x0

    .line 132
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v4

    .line 134
    :cond_1
    const/4 v1, -0x2

    .line 135
    .local v1, "invalidValue":I
    const-string v2, "leui_long_press_recent_behaviour_settings"

    .line 136
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 138
    .local v0, "def":I
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    .line 139
    const-string v2, "leui_long_press_home_behaviour_settings"

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 147
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 149
    .local v3, "settingsValue":I
    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "settingsValue":I
    :cond_3
    const/16 v5, 0x8

    if-ne p1, v5, :cond_2

    .line 143
    const-string v2, "leui_long_press_back_behaviour_settings"

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1
.end method

.method public static setAleadyBeSetInAccessibilitySettings(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 76
    :goto_0
    return v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_long_press_func_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "value":I
    if-eqz p1, :cond_1

    .line 72
    or-int/lit8 v0, v0, 0x1

    .line 76
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_long_press_func_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_0

    .line 74
    :cond_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public static setKeyBeSetInLongPressSetupWizard(Landroid/content/Context;IZ)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flagKey"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 117
    :goto_0
    return v1

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_long_press_func_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "value":I
    if-eqz p2, :cond_1

    .line 113
    or-int/2addr v0, p1

    .line 117
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_long_press_func_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    goto :goto_0

    .line 115
    :cond_1
    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_1
.end method
