module ActsAsParanoid
  module PreloaderAssociation

    private

    def build_scope_with_deleted
      scope = build_scope_without_deleted

      if options[:with_deleted]
        scope = scope.with_deleted
      end

      scope
    end


    def self.included( base )
      base.alias_method_chain :build_scope, :deleted
    end

  end
end
