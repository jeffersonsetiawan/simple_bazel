public struct PdpSecondPriority: Decodable {
	public var id: String
	public var name: String
	public var price: String
	public var campaign: PdpCampaign?
	public var oldCampaign: PdpCampaign? // demo unused struct here

	public init(id: String, name: String, price: String, campaign: PdpCampaign?, oldCampaign: PdpCampaign? = nil) {
		self.id = id
		self.name = name
		self.price = price
		self.campaign = campaign
		self.oldCampaign = oldCampaign
	}
}

public struct PdpCampaign: Decodable {
	public var campaignId: Int
	public var name: String

	public init(campaignId: Int, name: String) {
		self.campaignId = campaignId
		self.name = name
	}
}