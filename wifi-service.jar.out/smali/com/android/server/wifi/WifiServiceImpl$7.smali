.class Lcom/android/server/wifi/WifiServiceImpl$7;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->autoConnectEnableAllNetworks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "obj1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "obj2"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2261
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 2259
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl$7;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
