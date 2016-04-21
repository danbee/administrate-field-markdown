require "administrate/field/markdown"

describe Administrate::Field::Markdown do
  describe "#rendered" do
    it "renders markdown to HTML" do
      markdown = "This is some markdown to render"

      page = :show
      field = Administrate::Field::Markdown.new(:markdown, markdown, page)

      expect(field.rendered).to eq("<p>This is some markdown to render</p>\n")
    end
  end

  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Markdown.new(:markdown, "", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/markdown/#{page}")
    end
  end
end
