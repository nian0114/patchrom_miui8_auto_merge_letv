.class public Lletv/com/android/letvmms/utils/LetvMmsFW;
.super Ljava/lang/Object;
.source "LetvMmsFW.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LetvMmsQcomFW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmsCapacityOnIcc()I
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 76
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmsCapacityOnIcc()I

    move-result v1

    return v1
.end method

.method public static getSmsCapacityOnIcc(I)I
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 64
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 65
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmsCapacityOnIcc()I

    move-result v1

    return v1
.end method

.method public static getSmscAddressFromIcc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 41
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmscAddressFromIcc()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSmscAddressFromIcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 29
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 30
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmscAddressFromIcc()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setSmscAddressToIcc(ILjava/lang/String;)Z
    .locals 2
    .param p0, "subId"    # I
    .param p1, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 54
    .local v0, "sm":Landroid/telephony/SmsManager;
    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->setSmscAddressToIcc(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
