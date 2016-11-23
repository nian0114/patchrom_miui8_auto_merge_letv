.class public Lcom/android/internal/telephony/logdigger/RadioTechInfo;
.super Ljava/lang/Object;
.source "RadioTechInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellLocation(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;
    .locals 17
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getAllCellInfo()Ljava/util/List;

    move-result-object v16

    .line 43
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v16, :cond_4

    .line 44
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/CellInfo;

    .line 45
    .local v14, "ci":Landroid/telephony/CellInfo;
    instance-of v1, v14, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_1

    move-object v11, v14

    .line 46
    check-cast v11, Landroid/telephony/CellInfoGsm;

    .line 47
    .local v11, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v11}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    .line 48
    .local v7, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 49
    .local v0, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 51
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 52
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .end local v0    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v11    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    .end local v14    # "ci":Landroid/telephony/CellInfo;
    .end local v15    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v1

    .line 53
    .restart local v14    # "ci":Landroid/telephony/CellInfo;
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1
    instance-of v1, v14, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_2

    move-object v13, v14

    .line 54
    check-cast v13, Landroid/telephony/CellInfoWcdma;

    .line 55
    .local v13, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v13}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v9

    .line 56
    .local v9, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 57
    .restart local v0    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 59
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 60
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 61
    .end local v0    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v9    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v13    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_2
    instance-of v1, v14, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_3

    move-object v12, v14

    .line 62
    check-cast v12, Landroid/telephony/CellInfoLte;

    .line 63
    .local v12, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v12}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    .line 64
    .local v8, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    if-ltz v1, :cond_0

    .line 68
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 69
    .restart local v0    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 72
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v0    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v12    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    :cond_3
    instance-of v1, v14, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_0

    move-object v10, v14

    .line 75
    check-cast v10, Landroid/telephony/CellInfoCdma;

    .line 76
    .local v10, "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    invoke-virtual {v10}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    .line 77
    .local v6, "cellIdentityCdma":Landroid/telephony/CellIdentityCdma;
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 78
    .local v0, "cellLocOther":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 83
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 89
    .end local v0    # "cellLocOther":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v6    # "cellIdentityCdma":Landroid/telephony/CellIdentityCdma;
    .end local v10    # "cellInfoCdma":Landroid/telephony/CellInfoCdma;
    .end local v14    # "ci":Landroid/telephony/CellInfo;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 90
    .local v0, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getDataRegState(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "dataRegState":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 169
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 172
    :cond_0
    return v0
.end method

.method public static getIccCardState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 4
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 109
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 110
    .local v1, "iccCardState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    .line 111
    .local v3, "slotIdx":I
    if-ltz v3, :cond_0

    .line 112
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 113
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 115
    .local v0, "icc":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 120
    .end local v0    # "icc":Lcom/android/internal/telephony/IccCard;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-object v1
.end method

.method public static getOperatorNumeric(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 97
    const-string v0, "N/A"

    .line 98
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 99
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public static getRilDataRadioTechnology(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "dataRadioTechnology":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 141
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 144
    :cond_0
    return v0
.end method

.method public static getRilVoiceRadioTechnology(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, "voiceRadioTechnology":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 129
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 132
    :cond_0
    return v1
.end method

.method public static getSignalStrength(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 179
    const v0, 0x7fffffff

    .line 180
    .local v0, "dbm":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 181
    .local v1, "ss":Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .line 184
    :cond_0
    return v0
.end method

.method public static getVoiceRegState(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 155
    const/4 v1, 0x1

    .line 156
    .local v1, "voiceRegState":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 157
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 160
    :cond_0
    return v1
.end method
