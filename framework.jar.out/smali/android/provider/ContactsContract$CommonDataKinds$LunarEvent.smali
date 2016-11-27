.class public final Landroid/provider/ContactsContract$CommonDataKinds$LunarEvent;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LunarEvent"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_lunarevent"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_LUNARBIRTHDAY:I = 0x4

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 7595
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7599
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .line 7598
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$LunarEvent;->getTypeResource(Ljava/lang/Integer;)I

    move-result v0

    .line 7599
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 7585
    const v0, 0x104023e

    return v0
.end method
